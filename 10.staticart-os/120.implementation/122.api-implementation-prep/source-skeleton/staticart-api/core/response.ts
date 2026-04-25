import type { ErrorEnvelope, SuccessEnvelope } from "../contracts/types";
import { StaticArtError } from "./errors";

export function success<T>(requestId: string, data: T): SuccessEnvelope<T> {
  return {
    ok: true,
    data,
    meta: {
      request_id: requestId,
    },
  };
}

export function successList<T>(
  requestId: string,
  items: T[],
  nextCursor: string | null = null,
): SuccessEnvelope<{ items: T[] }> {
  return {
    ok: true,
    data: { items },
    meta: {
      request_id: requestId,
      next_cursor: nextCursor,
    },
  };
}

export function errorFromException(
  requestId: string,
  error: unknown,
): ErrorEnvelope {
  if (error instanceof StaticArtError) {
    return {
      ok: false,
      error: {
        code: error.code,
        message: error.message,
        details: error.details,
        retryable: error.retryable,
      },
      meta: {
        request_id: requestId,
      },
    };
  }

  return {
    ok: false,
    error: {
      code: "STATICART_INTERNAL_ERROR",
      message: "Unexpected internal error.",
      retryable: false,
    },
    meta: {
      request_id: requestId,
    },
  };
}
