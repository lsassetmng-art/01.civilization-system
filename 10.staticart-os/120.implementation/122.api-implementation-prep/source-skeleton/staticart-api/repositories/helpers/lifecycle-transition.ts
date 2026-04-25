import type { LifecycleState } from "../../contracts/types";
import { STATICART_ERROR_CODES } from "../../core/error-codes";
import { StaticArtError } from "../../core/errors";

const ALLOWED_TRANSITIONS: Record<LifecycleState, LifecycleState[]> = {
  draft: ["files_uploaded", "archived"],
  files_uploaded: ["metadata_completed", "archived"],
  metadata_completed: ["self_check_passed", "files_uploaded", "archived"],
  self_check_passed: ["review_pending", "metadata_completed", "archived"],
  review_pending: ["approved", "rejected", "restricted"],
  approved: ["published_marketplace", "published_library_only", "archived"],
  rejected: ["metadata_completed", "self_check_passed", "archived"],
  published_marketplace: ["delisted", "restricted", "replaced", "archived"],
  published_library_only: ["published_marketplace", "restricted", "replaced", "archived"],
  delisted: ["published_marketplace", "published_library_only", "restricted", "archived"],
  restricted: ["review_pending", "delisted", "archived"],
  replaced: ["archived"],
  archived: [],
};

export function assertLifecycleTransition(
  fromState: LifecycleState,
  toState: LifecycleState,
): void {
  const allowed = ALLOWED_TRANSITIONS[fromState] ?? [];

  if (!allowed.includes(toState)) {
    throw new StaticArtError({
      status: 409,
      code: STATICART_ERROR_CODES.STATICART_ASSET_STATE_CONFLICT,
      message: `Invalid lifecycle transition from ${fromState} to ${toState}.`,
      details: {
        from_state: fromState,
        to_state: toState,
        allowed_targets: allowed,
      },
    });
  }
}

export function getAllowedLifecycleTargets(
  fromState: LifecycleState,
): LifecycleState[] {
  return ALLOWED_TRANSITIONS[fromState] ?? [];
}
