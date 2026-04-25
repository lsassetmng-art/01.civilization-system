# ============================================================
# STATIC ART OS PHASE 2 ENDPOINT SERVICE REPOSITORY MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2
owner: Boss
prepared_by: Zero

matrix:
  - endpoint: POST /api/v1/staticart/assets
    route_class: AssetsRoute.createAsset
    service_method: AssetService.createDraft
    repository_method: AssetRepository.createDraft
    validator_focus:
      - asset_type required
      - creator_id required
      - initial_language_code required
    guard_focus:
      - creator_owner
      - publisher_operator

  - endpoint: GET /api/v1/staticart/assets/{asset_id}
    route_class: AssetsRoute.getAssetDetail
    service_method: AssetService.getAssetDetail
    repository_method: AssetRepository.getDetail
    validator_focus:
      - asset_id required
    guard_focus:
      - surface visibility only

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/localizations/{language_code}
    route_class: AssetsRoute.putLocalization
    service_method: AssetService.upsertLocalization
    repository_method: AssetRepository.upsertLocalization
    validator_focus:
      - version_token required
      - title required
      - language_code required
    guard_focus:
      - creator_owner
      - publisher_operator
      - ownership/publisher boundary

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/rights-policy
    route_class: AssetsRoute.putRightsPolicy
    service_method: AssetService.updateRightsPolicy
    repository_method: AssetRepository.updateRightsPolicy
    validator_focus:
      - version_token required
      - region_mode enum
      - region_codes consistency
      - age_rating required
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/sales-offer
    route_class: AssetsRoute.putSalesOffer
    service_method: AssetService.updateSalesOffer
    repository_method: AssetRepository.updateSalesOffer
    validator_focus:
      - version_token required
      - sale_type required
      - sales_state required
      - price required in for_sale/preorder
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

  - endpoint: PUT /api/v1/staticart/assets/{asset_id}/subscription-rule
    route_class: AssetsRoute.putSubscriptionRule
    service_method: AssetService.updateSubscriptionRule
    repository_method: AssetRepository.updateSubscriptionRule
    validator_focus:
      - version_token required
      - subscription_state required
      - subscription_eligible consistency
    guard_focus:
      - creator_owner
      - publisher_operator
      - no review_pending edit bypass

binding_rules:
  - route -> validator -> guard -> service -> repository
  - repository result -> service result -> canonical response envelope
  - repository exceptions must be normalized before returning outward
