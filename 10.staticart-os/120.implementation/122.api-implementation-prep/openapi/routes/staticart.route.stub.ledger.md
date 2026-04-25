# ============================================================
# STATIC ART OS ROUTE STUB LEDGER
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

route_groups:
  creator_write:
    - POST /assets
    - PUT /assets/{asset_id}/localizations/{language_code}
    - PUT /assets/{asset_id}/rights-policy
    - PUT /assets/{asset_id}/sales-offer
    - PUT /assets/{asset_id}/subscription-rule
    - POST /assets/{asset_id}:run-self-check
    - POST /assets/{asset_id}/review-requests
    - POST /assets/{asset_id}:publish-marketplace
    - POST /assets/{asset_id}:publish-library-only
    - POST /assets/{asset_id}:delist
    - POST /assets/{asset_id}:restrict
    - POST /assets/{asset_id}:archive

  read_access:
    - GET /assets/{asset_id}
    - GET /assets/{asset_id}/entitlement
    - POST /assets/{asset_id}:create-access-session
    - GET /assets/{asset_id}/exhibition-projection

  library_continuity:
    - GET /library
    - GET /library/continue-reading
    - GET /library/continue-viewing
    - PUT /assets/{asset_id}/reader-progress
    - PUT /assets/{asset_id}/viewer-progress
    - POST /assets/{asset_id}/favorite
    - DELETE /assets/{asset_id}/favorite
    - POST /assets/{asset_id}/annotations

  review_governance:
    - POST /review-requests/{review_request_id}:decide
    - POST /assets/{asset_id}:refresh-projections

  internal:
    - POST /internal/purchases:reflect
    - POST /internal/subscriptions:reflect

stub_requirements_per_route:
  - permission guard
  - request validation
  - idempotency handling where required
  - version_token handling where required
  - service call
  - audit write where required
  - projection refresh enqueue where required
  - canonical response envelope
  - canonical error envelope
