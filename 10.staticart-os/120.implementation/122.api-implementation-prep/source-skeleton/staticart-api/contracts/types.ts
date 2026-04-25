export type Uuid = string;
export type IsoDateTime = string;

export type AssetType =
  | "artwork"
  | "illustration"
  | "poster"
  | "photo_art"
  | "static_visual"
  | "book"
  | "ebook"
  | "booklet"
  | "catalog"
  | "collection_book"
  | "material_booklet";

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

export type SalesState =
  | "not_for_sale"
  | "for_sale"
  | "preorder"
  | "sale_paused"
  | "sold_out_limited"
  | "sale_ended";

export type SubscriptionState =
  | "not_included"
  | "included_scheduled"
  | "included_active"
  | "included_paused"
  | "included_ended";

export type EntitlementState =
  | "none"
  | "sample_only"
  | "subscription_access"
  | "owned_permanent"
  | "owned_and_subscription_access"
  | "blocked_by_region"
  | "blocked_by_age_policy"
  | "blocked_by_rights_change";

export type ReviewStatus =
  | "pending"
  | "approved"
  | "rejected"
  | "rework_required"
  | "restricted";

export type ProjectionStatus =
  | "eligible"
  | "ineligible"
  | "revoked";

export type ActorType =
  | "guest"
  | "signed_in_user"
  | "library_user"
  | "creator_owner"
  | "publisher_operator"
  | "review_admin"
  | "policy_admin"
  | "support_readonly"
  | "internal_integration"
  | "exhibition_builder_reader";

export interface RequestMeta {
  requestId: string;
  actorType: ActorType;
  actorUserId?: Uuid | null;
  idempotencyKey?: string | null;
}

export interface SuccessEnvelope<T> {
  ok: true;
  data: T;
  meta: {
    request_id: string;
    next_cursor?: string | null;
  };
}

export interface ErrorEnvelope {
  ok: false;
  error: {
    code: string;
    message: string;
    details?: Record<string, unknown>;
    retryable: boolean;
  };
  meta: {
    request_id: string;
  };
}
