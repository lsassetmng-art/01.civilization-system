import type { EntitlementState } from "../../contracts/types";

export interface EntitlementInputs {
  hasOwnedPermanent: boolean;
  hasSubscriptionAccess: boolean;
  sampleAvailable: boolean;
  blockedByRegion: boolean;
  blockedByAgePolicy: boolean;
  blockedByRightsChange: boolean;
}

export function resolveEffectiveEntitlementState(
  input: EntitlementInputs,
): EntitlementState {
  if (input.blockedByRegion) {
    return "blocked_by_region";
  }

  if (input.blockedByAgePolicy) {
    return "blocked_by_age_policy";
  }

  if (input.blockedByRightsChange) {
    return "blocked_by_rights_change";
  }

  if (input.hasOwnedPermanent && input.hasSubscriptionAccess) {
    return "owned_and_subscription_access";
  }

  if (input.hasOwnedPermanent) {
    return "owned_permanent";
  }

  if (input.hasSubscriptionAccess) {
    return "subscription_access";
  }

  if (input.sampleAvailable) {
    return "sample_only";
  }

  return "none";
}

export function canCreateFullAccessSession(
  state: EntitlementState,
): boolean {
  return (
    state === "owned_permanent" ||
    state === "subscription_access" ||
    state === "owned_and_subscription_access"
  );
}

export function canCreateSampleAccessSession(
  state: EntitlementState,
): boolean {
  return (
    state === "sample_only" ||
    state === "owned_permanent" ||
    state === "subscription_access" ||
    state === "owned_and_subscription_access"
  );
}
