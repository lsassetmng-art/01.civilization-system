import type { ActorType, RequestMeta } from "../contracts/types";
import { STATICART_ERROR_CODES } from "../core/error-codes";
import { StaticArtError } from "../core/errors";

type PermissionContext = {
  assetOwnerUserId?: string | null;
  publisherOperatorAllowed?: boolean;
  lifecycleState?: string | null;
  restricted?: boolean;
};

function forbid(message: string, details?: Record<string, unknown>): never {
  throw new StaticArtError({
    status: 403,
    code: STATICART_ERROR_CODES.STATICART_FORBIDDEN,
    message,
    details,
  });
}

export function requireActor(
  meta: RequestMeta,
  allowedActors: ActorType[],
): void {
  if (!allowedActors.includes(meta.actorType)) {
    forbid("Actor is not allowed for this operation.", {
      actorType: meta.actorType,
      allowedActors,
    });
  }
}

export function requireAssetOwnershipOrPublisherAccess(
  meta: RequestMeta,
  ctx: PermissionContext,
): void {
  const isOwner =
    Boolean(meta.actorUserId) &&
    Boolean(ctx.assetOwnerUserId) &&
    meta.actorUserId === ctx.assetOwnerUserId;

  const publisherAllowed = ctx.publisherOperatorAllowed === true;

  if (!isOwner && !publisherAllowed) {
    forbid("Actor does not own or govern this asset.");
  }
}

export function requireNoRestrictedPublish(ctx: PermissionContext): void {
  if (ctx.restricted) {
    forbid("Restricted asset cannot be published.");
  }
}

export function requireNotReviewPending(ctx: PermissionContext): void {
  if (ctx.lifecycleState === "review_pending") {
    throw new StaticArtError({
      status: 409,
      code: STATICART_ERROR_CODES.STATICART_ASSET_STATE_CONFLICT,
      message: "Asset is review_pending and cannot be modified.",
      details: {
        lifecycle_state: ctx.lifecycleState,
      },
    });
  }
}
