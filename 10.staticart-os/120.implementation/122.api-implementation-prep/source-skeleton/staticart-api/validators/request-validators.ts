import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

function badRequest(
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 400,
    code: STATICART_ERROR_CODES.STATICART_VALIDATION_ERROR,
    message,
    details,
  });
}

export function requireString(value: unknown, fieldName: string): void {
  if (typeof value !== "string" || value.trim() === "") {
    badRequest(`${fieldName} must be a non-empty string.`, { fieldName });
  }
}

export function requireBoolean(value: unknown, fieldName: string): void {
  if (typeof value !== "boolean") {
    badRequest(`${fieldName} must be a boolean.`, { fieldName });
  }
}

export function requireNumber(value: unknown, fieldName: string): void {
  if (typeof value !== "number" || Number.isNaN(value)) {
    badRequest(`${fieldName} must be a number.`, { fieldName });
  }
}

export function requireArray(value: unknown, fieldName: string): void {
  if (!Array.isArray(value)) {
    badRequest(`${fieldName} must be an array.`, { fieldName });
  }
}

export function requireVersionToken(value: unknown): void {
  requireString(value, "version_token");
}

export function requireIdempotencyKey(value: unknown): void {
  requireString(value, "Idempotency-Key");
}

export function requireProgressPercent(value: unknown): void {
  requireNumber(value, "progress_percent");
  if ((value as number) < 0 || (value as number) > 100) {
    badRequest("progress_percent must be between 0 and 100.", {
      progress_percent: value,
    });
  }
}
