# ============================================================
# STATIC ART OS API EXACTNESS
# ============================================================

status: implementation-ready
system: StaticArtOS
layer: exactness
owner: Boss
prepared_by: Zero

base_path: /api/v1/staticart

common:
  content_type: application/json
  auth: bearer token
  required_write_headers:
    - X-Request-Id
    - Idempotency-Key

time_format: ISO8601 UTC
id_types:
  - asset_id uuid
  - file_id uuid
  - review_request_id uuid
  - review_decision_id uuid
  - annotation_id uuid

response_contract:
  success_shape:
    - ok=true
    - data
    - meta.request_id
  list_shape:
    - ok=true
    - data.items
    - meta.request_id
    - meta.next_cursor
  error_shape:
    - ok=false
    - error.code
    - error.message
    - error.details
    - error.retryable
    - meta.request_id

http_error_use:
  400: request structurally invalid
  401: unauthorized
  403: authenticated but forbidden
  404: not found or intentionally hidden
  409: state or version conflict
  410: gone due to archive/revoke semantics
  422: business rule failure
  429: rate limited
  500: unexpected server error
  503: infrastructure unavailable

fixed_error_codes:
  validation:
    - STATICART_VALIDATION_ERROR
    - STATICART_INVALID_ENUM
    - STATICART_REQUIRED_FIELD_MISSING
    - STATICART_INVALID_CURSOR
  auth_permission:
    - STATICART_UNAUTHORIZED
    - STATICART_FORBIDDEN
    - STATICART_ROLE_NOT_ALLOWED
    - STATICART_ASSET_NOT_OWNED_BY_ACTOR
  state_concurrency:
    - STATICART_ASSET_NOT_FOUND
    - STATICART_FILE_NOT_FOUND
    - STATICART_REVIEW_REQUEST_NOT_FOUND
    - STATICART_ASSET_STATE_CONFLICT
    - STATICART_REVIEW_ALREADY_PENDING
    - STATICART_VERSION_CONFLICT
    - STATICART_IDEMPOTENCY_REPLAY_MISMATCH
  publish_review_policy:
    - STATICART_REVIEW_SUBMISSION_PRECONDITION_FAILED
    - STATICART_PUBLISH_PRECONDITION_FAILED
    - STATICART_RIGHTS_POLICY_BLOCKED
    - STATICART_REGION_POLICY_BLOCKED
    - STATICART_AGE_POLICY_BLOCKED
    - STATICART_EXHIBITION_PROJECTION_INELIGIBLE
  entitlement_library:
    - STATICART_ENTITLEMENT_BLOCKED
    - STATICART_SAMPLE_NOT_AVAILABLE
    - STATICART_ACCESS_NOT_GRANTED
  infra:
    - STATICART_STORAGE_UPLOAD_FAILED
    - STATICART_EXTERNAL_PAYMENT_SYNC_FAILED
    - STATICART_EXTERNAL_SUBSCRIPTION_SYNC_FAILED
    - STATICART_RATE_LIMITED
    - STATICART_INTERNAL_ERROR

concurrency:
  version_token:
    usage: optimistic concurrency for write requests
  idempotency:
    same_key_same_body: return same result
    same_key_different_body: conflict 409

api_groups:
  canonical_write:
    - POST /assets
    - GET /assets/{asset_id}
    - PUT /assets/{asset_id}/localizations/{language_code}
    - PUT /assets/{asset_id}/categories
    - PUT /assets/{asset_id}/tags
    - POST /assets/{asset_id}/files:begin-upload
    - POST /assets/{asset_id}/files:complete-upload
    - PUT /assets/{asset_id}/rights-policy
    - PUT /assets/{asset_id}/sales-offer
    - PUT /assets/{asset_id}/subscription-rule
    - POST /assets/{asset_id}:run-self-check
    - POST /assets/{asset_id}/review-requests
    - POST /review-requests/{review_request_id}:decide
    - POST /assets/{asset_id}:publish-marketplace
    - POST /assets/{asset_id}:publish-library-only
    - POST /assets/{asset_id}:delist
    - POST /assets/{asset_id}:restrict
    - POST /assets/{asset_id}:archive

  entitlement_access:
    - GET /assets/{asset_id}/entitlement
    - POST /assets/{asset_id}:create-access-session

  library_continuity:
    - GET /library
    - GET /library/continue-reading
    - GET /library/continue-viewing
    - PUT /assets/{asset_id}/reader-progress
    - PUT /assets/{asset_id}/viewer-progress
    - POST /assets/{asset_id}/favorite
    - DELETE /assets/{asset_id}/favorite
    - POST /assets/{asset_id}/annotations

  derived_read:
    - GET /assets/{asset_id}/exhibition-projection
    - POST /assets/{asset_id}:refresh-projections

  internal_reflection:
    - POST /internal/purchases:reflect
    - POST /internal/subscriptions:reflect

api_rules:
  - Publish requires approved lifecycle and required file roles ready.
  - Self check must expose blockers with repair targets.
  - Review submission requires self_check_passed and no active pending review.
  - Full access session creation requires full entitlement and no rights/region/age/restriction block.
  - Reader progress and viewer progress must remain separate endpoints.
  - Favorite is allowed even when entitlement is sample_only.
  - Projection refresh endpoints are admin/internal only.

pagination:
  strategy: cursor only
  default_limit: 30
  max_limit: 100
  cursor: opaque
  offset_pagination: forbidden

search_filter:
  - query full-text style
  - asset_type exact filter
  - favorite boolean filter
  - entitlement_state filter on read projection only

implementation_prohibitions:
  - Do not publish without review approval.
  - Do not ignore rights block when creating access sessions.
  - Do not delete favorite when entitlement disappears.
  - Do not update entitlement canonical state from progress endpoints.
  - Do not perform canonical writes from derived projection APIs.
  - Do not convert subscription access into permanent ownership.
