import type { StaticArtErrorCode } from "./error-codes";

export class StaticArtError extends Error {
  public readonly status: number;
  public readonly code: StaticArtErrorCode;
  public readonly details?: Record<string, unknown>;
  public readonly retryable: boolean;

  constructor(args: {
    status: number;
    code: StaticArtErrorCode;
    message: string;
    details?: Record<string, unknown>;
    retryable?: boolean;
  }) {
    super(args.message);
    this.name = "StaticArtError";
    this.status = args.status;
    this.code = args.code;
    this.details = args.details;
    this.retryable = args.retryable ?? false;
  }
}
