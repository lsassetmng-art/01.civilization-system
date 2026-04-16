# ============================================================
# STATIC ART OS IDEMPOTENCY AND CONCURRENCY SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

idempotency_required_endpoints:
  - POST /assets
  - POST /assets/{asset_id}/files:begin-upload
  - POST /assets/{asset_id}/files:complete-upload
  - POST /assets/{asset_id}:run-self-check
  - POST /assets/{asset_id}/review-requests
  - POST /review-requests/{review_request_id}:decide
  - POST /assets/{asset_id}:publish-marketplace
  - POST /assets/{asset_id}:publish-library-only
  - POST /assets/{asset_id}:delist
  - POST /assets/{asset_id}:restrict
  - POST /assets/{asset_id}:archive
  - POST /assets/{asset_id}/favorite
  - POST /assets/{asset_id}/annotations
  - POST /internal/purchases:reflect
  - POST /internal/subscriptions:reflect

version_token_required_endpoints:
  - localization put
  - categories put
  - tags put
  - rights-policy put
  - sales-offer put
  - subscription-rule put
  - action endpoints touching lifecycle

progress_sync_version:
  reader:
    - stale sync_version -> 409
  viewer:
    - stale sync_version -> 409

rules:
  - same idempotency key with same body returns original result
  - same idempotency key with different body returns 409
  - optimistic concurrency is mandatory on governed asset writes
