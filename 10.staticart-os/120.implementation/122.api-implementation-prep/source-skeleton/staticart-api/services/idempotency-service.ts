import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

export interface IdempotencyRecord {
  key: string;
  requestHash: string;
  responsePayload: unknown;
}

export interface IdempotencyRepository {
  findByKey(key: string): Promise<IdempotencyRecord | null>;
  save(record: IdempotencyRecord): Promise<void>;
}

export class IdempotencyService {
  constructor(private readonly repository: IdempotencyRepository) {}

  async checkReplayOrMismatch(
    key: string,
    requestHash: string,
  ): Promise<IdempotencyRecord | null> {
    const existing = await this.repository.findByKey(key);
    if (!existing) {
      return null;
    }

    if (existing.requestHash !== requestHash) {
      throw new StaticArtError({
        status: 409,
        code: STATICART_ERROR_CODES.STATICART_IDEMPOTENCY_REPLAY_MISMATCH,
        message: "Same idempotency key was used with a different request body.",
      });
    }

    return existing;
  }

  async saveResult(
    key: string,
    requestHash: string,
    responsePayload: unknown,
  ): Promise<void> {
    await this.repository.save({
      key,
      requestHash,
      responsePayload,
    });
  }
}
