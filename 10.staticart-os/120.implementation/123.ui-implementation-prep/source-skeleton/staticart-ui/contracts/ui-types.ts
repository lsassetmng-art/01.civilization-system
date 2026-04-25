export type ScreenId =
  | "SA-CR-001"
  | "SA-CR-010"
  | "SA-CR-020"
  | "SA-MK-001"
  | "SA-MK-010"
  | "SA-MK-020"
  | "SA-LB-001"
  | "SA-LB-010"
  | "SA-LB-020"
  | "SA-RD-001"
  | "SA-RD-010"
  | "SA-VW-001"
  | "SA-AD-001"
  | "SA-AD-010"
  | "SA-AD-020";

export type UiLoadState =
  | "idle"
  | "loading"
  | "ready"
  | "empty"
  | "error"
  | "forbidden";

export type AssetFamily =
  | "publishing"
  | "visual";

export type LifecycleState =
  | "draft"
  | "files_uploaded"
  | "metadata_completed"
  | "self_check_passed"
  | "review_pending"
  | "approved"
  | "rejected"
  | "published_marketplace"
  | "published_library_only"
  | "delisted"
  | "restricted"
  | "replaced"
  | "archived";

export type EntitlementState =
  | "none"
  | "sample_only"
  | "subscription_access"
  | "owned_permanent"
  | "owned_and_subscription_access"
  | "blocked_by_region"
  | "blocked_by_age_policy"
  | "blocked_by_rights_change";

export interface ScreenShellState {
  title: string;
  subtitle?: string | null;
  loadState: UiLoadState;
  errorMessage?: string | null;
  forbiddenReason?: string | null;
}

export interface AssetSummaryViewModel {
  assetId: string;
  title: string;
  assetType: string;
  assetFamily: AssetFamily;
  thumbnailUrl?: string | null;
  lifecycleState: LifecycleState;
  entitlementState?: EntitlementState | null;
  reviewStatus?: string | null;
  salesState?: string | null;
  subscriptionState?: string | null;
  favoriteState?: boolean;
  lastOpenedAt?: string | null;
}

export interface AllowedActionsViewModel {
  sampleOpen: boolean;
  purchase: boolean;
  subscriptionOpen: boolean;
  fullOpen: boolean;
  favoriteToggle: boolean;
}

export interface ButtonStateViewModel {
  enabled: boolean;
  reasonText?: string | null;
}

export interface CreatorWorkspaceState {
  selectedTab:
    | "files"
    | "metadata"
    | "preview"
    | "rights"
    | "sales"
    | "subscription"
    | "self_check"
    | "review"
    | "publish"
    | "audit";
  asset: AssetSummaryViewModel;
  reviewSubmit: ButtonStateViewModel;
  publishMarketplace: ButtonStateViewModel;
  publishLibraryOnly: ButtonStateViewModel;
}

export interface LibraryListState {
  items: AssetSummaryViewModel[];
  nextCursor?: string | null;
}
