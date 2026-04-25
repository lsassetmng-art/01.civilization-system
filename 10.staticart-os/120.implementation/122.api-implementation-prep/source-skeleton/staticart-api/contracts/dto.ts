import type {
  AssetType,
  EntitlementState,
  IsoDateTime,
  LifecycleState,
  ReviewStatus,
  SalesState,
  SubscriptionState,
  Uuid,
} from "./types";

export interface AssetCreateRequestDto {
  asset_type: AssetType;
  creator_id: Uuid;
  publisher_id?: Uuid | null;
  initial_language_code: string;
}

export interface AssetSummaryDto {
  asset_id: Uuid;
  asset_code: string;
  asset_type: AssetType;
  creator_id: Uuid;
  publisher_id?: Uuid | null;
  current_version_no: number;
  lifecycle_state: LifecycleState;
  version_token: string;
  created_at: IsoDateTime;
}

export interface LocalizationWriteRequestDto {
  version_token: string;
  title: string;
  subtitle?: string | null;
  short_description?: string | null;
  long_description?: string | null;
}

export interface RightsPolicyWriteRequestDto {
  version_token: string;
  version_no: number;
  exhibition_allowed: boolean;
  commercial_use_allowed: boolean;
  derivative_allowed: boolean;
  additional_license_required: boolean;
  age_rating: string;
  region_mode: "global" | "allow_list" | "deny_list";
  region_codes: string[];
  rights_summary?: string | null;
}

export interface SalesOfferWriteRequestDto {
  version_token: string;
  sale_type: string;
  sales_state: SalesState;
  base_currency?: string | null;
  base_price?: number | null;
  price_label_override?: string | null;
  sale_start_at?: IsoDateTime | null;
  sale_end_at?: IsoDateTime | null;
  limited_sale_flag?: boolean;
  inventory_cap?: number | null;
}

export interface SubscriptionRuleWriteRequestDto {
  version_token: string;
  subscription_state: SubscriptionState;
  subscription_eligible: boolean;
  creator_opt_in: boolean;
  settlement_group_code?: string | null;
  subscription_start_at?: IsoDateTime | null;
  subscription_end_at?: IsoDateTime | null;
}

export interface ReviewDecisionRequestDto {
  decision_status: ReviewStatus;
  decision_reason_code?: string | null;
  decision_comment?: string | null;
}

export interface PublishActionRequestDto {
  version_token: string;
  publish_at?: IsoDateTime | null;
}

export interface StateActionRequestDto {
  version_token: string;
  reason_code?: string | null;
  reason_comment?: string | null;
}

export interface EntitlementDto {
  asset_id: Uuid;
  effective_entitlement_state: EntitlementState;
  has_owned_permanent: boolean;
  has_subscription_access: boolean;
  sample_available: boolean;
  blocking_reason_code?: string | null;
  computed_at: IsoDateTime;
}

export interface ReaderProgressRequestDto {
  sync_version: number;
  current_locator: string;
  progress_percent: number;
  last_device_type?: string | null;
}

export interface ViewerProgressRequestDto {
  sync_version: number;
  current_frame_ref?: string | null;
  current_page_no?: number | null;
  zoom_ratio?: number | null;
  last_device_type?: string | null;
}

export interface FavoriteResponseDto {
  asset_id: Uuid;
  favorite_state: boolean;
}

export interface PurchaseReflectRequestDto {
  user_id: Uuid;
  asset_id: Uuid;
  transaction_id: string;
  grant_type: "owned_permanent";
  granted_at: IsoDateTime;
}

export interface SubscriptionReflectRequestDto {
  user_id: Uuid;
  subscription_event_type: string;
  effective_at: IsoDateTime;
  affected_asset_ids: Uuid[];
}
