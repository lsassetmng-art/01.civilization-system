import type {
  AllowedActionsViewModel,
  AssetSummaryViewModel,
  ButtonStateViewModel,
  CreatorWorkspaceState,
  LibraryListState,
  UiLoadState,
} from "../contracts/ui-types";

export interface StaticArtUiStore {
  screenLoadState: UiLoadState;
  assetDetail?: AssetSummaryViewModel | null;
  allowedActions?: AllowedActionsViewModel | null;
  creatorWorkspace?: CreatorWorkspaceState | null;
  library?: LibraryListState | null;
}

export const STATICART_UI_INITIAL_STORE: StaticArtUiStore = {
  screenLoadState: "idle",
  assetDetail: null,
  allowedActions: null,
  creatorWorkspace: null,
  library: null,
};

export function createDisabledButton(reasonText: string): ButtonStateViewModel {
  return {
    enabled: false,
    reasonText,
  };
}

export function createEnabledButton(): ButtonStateViewModel {
  return {
    enabled: true,
    reasonText: null,
  };
}
