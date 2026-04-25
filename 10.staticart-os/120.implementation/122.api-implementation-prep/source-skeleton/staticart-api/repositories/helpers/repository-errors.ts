import { STATICART_ERROR_CODES } from "../../core/error-codes";
import { StaticArtError } from "../../core/errors";

export function notFound(message: string, details?: Record<string, unknown>): never {
  throw new StaticArtError({
    status: 404,
    code: STATICART_ERROR_CODES.STATICART_ASSET_NOT_FOUND,
    message,
    details,
  });
}

export function conflict(
  code: keyof typeof STATICART_ERROR_CODES,
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 409,
    code: STATICART_ERROR_CODES[code],
    message,
    details,
  });
}

export function unprocessable(
  code: keyof typeof STATICART_ERROR_CODES,
  message: string,
  details?: Record<string, unknown>,
): never {
  throw new StaticArtError({
    status: 422,
    code: STATICART_ERROR_CODES[code],
    message,
    details,
  });
}
