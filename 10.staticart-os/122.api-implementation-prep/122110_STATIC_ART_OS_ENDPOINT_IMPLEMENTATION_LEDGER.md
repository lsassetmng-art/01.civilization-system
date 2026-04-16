# ============================================================
# STATIC ART OS ENDPOINT IMPLEMENTATION LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

endpoint_groups:
  creator_write:
    - POST /api/v1/staticart/assets
    - PUT /api/v1/staticart/assets/{asset_id}/localizations/{language_code}
    - PUT /api/v1/staticart/assets/{asset_id}/categories
    - PUT /api/v1/staticart/assets/{asset_id}/tags
    - POST /api/v1/staticart/assets/{asset_id}/files:begin-upload
    - POST /api/v1/staticart/assets/{asset_id}/files:complete-upload
    - PUT /api/v1/staticart/assets/{asset_id}/rights-policy
    - PUT /api/v1/staticart/assets/{asset_id}/sales-offer
    - PUT /api/v1/staticart/assets/{asset_id}/subscription-rule
    - POST /api/v1/staticart/assets/{asset_id}:run-self-check
    - POST /api/v1/staticart/assets/{asset_id}/review-requests
    - POST /api/v1/staticart/assets/{asset_id}:publish-marketplace
    - POST /api/v1/staticart/assets/{asset_id}:publish-library-only
    - POST /api/v1/staticart/assets/{asset_id}:delist
    - POST /api/v1/staticart/assets/{asset_id}:restrict
    - POST /api/v1/staticart/assets/{asset_id}:archive

  review_governance:
    - POST /api/v1/staticart/review-requests/{review_request_id}:decide

  read_access:
    - GET /api/v1/staticart/assets/{asset_id}
    - GET /api/v1/staticart/assets/{asset_id}/entitlement
    - POST /api/v1/staticart/assets/{asset_id}:create-access-session
    - GET /api/v1/staticart/assets/{asset_id}/exhibition-projection

  library_continuity:
    - GET /api/v1/staticart/library
    - GET /api/v1/staticart/library/continue-reading
    - GET /api/v1/staticart/library/continue-viewing
    - PUT /api/v1/staticart/assets/{asset_id}/reader-progress
    - PUT /api/v1/staticart/assets/{asset_id}/viewer-progress
    - POST /api/v1/staticart/assets/{asset_id}/favorite
    - DELETE /api/v1/staticart/assets/{asset_id}/favorite
    - POST /api/v1/staticart/assets/{asset_id}/annotations

  internal:
    - POST /api/v1/staticart/internal/purchases:reflect
    - POST /api/v1/staticart/internal/subscriptions:reflect
    - POST /api/v1/staticart/assets/{asset_id}:refresh-projections

endpoint_task_template:
  required_fields:
    - endpoint path
    - method
    - actor/permission
    - request body
    - response body
    - status codes
    - canonical table touch points
    - derived refresh impact
    - audit event requirement
    - idempotency requirement
    - version_token rule

priority_order:
  - asset create and detail
  - file upload begin/complete
  - localization/rights/sales/subscription writes
  - self check and review submission
  - review decision
  - publish and restriction actions
  - entitlement and access session
  - library and continuity
  - internal reflection
