export interface ContinuityVisibilityInput {
  favoriteState: boolean;
  hasReaderProgress: boolean;
  hasViewerProgress: boolean;
  entitlementAllowsLibrary: boolean;
}

export function deriveLibraryProjectionFlags(input: ContinuityVisibilityInput) {
  return {
    visible_in_library: input.entitlementAllowsLibrary || input.favoriteState,
    visible_in_continue_reading: input.entitlementAllowsLibrary && input.hasReaderProgress,
    visible_in_continue_viewing: input.entitlementAllowsLibrary && input.hasViewerProgress,
  };
}

export function favoriteMustSurviveEntitlementLoss(): boolean {
  return true;
}
