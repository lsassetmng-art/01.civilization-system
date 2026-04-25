# ============================================================
# STATIC ART OS PHASE3 ENDPOINT SERVICE REPOSITORY MATRIX
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 3
owner: Boss
prepared_by: Zero

matrix:
  - endpoint: POST /api/v1/staticart/assets/{asset_id}:run-self-check
    route_class: AssetsRoute.runSelfCheck
    service_method: AssetService.runSelfCheck
    repository_method: AssetRepository.runSelfCheck
    output_focus:
      - self_check_passed
      - blocker list
      - deterministic issues

  - endpoint: POST /api/v1/staticart/assets/{asset_id}/review-requests
    route_class: ReviewRoute.createReviewRequest
    service_method: AssetService.createReviewRequest
    repository_method: AssetRepository.createReviewRequest
    output_focus:
      - review_request created
      - lifecycle moved to review_pending
      - duplicate pending blocked

  - endpoint: POST /api/v1/staticart/review-requests/{review_request_id}:decide
    route_class: ReviewRoute.decideReview
    service_method: AssetService.decideReview
    repository_method: AssetRepository.decideReview
    output_focus:
      - decision persisted
      - lifecycle updated
      - audit generated

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:publish-marketplace
    route_class: AssetsRoute.publishMarketplace
    service_method: AssetService.publishMarketplace
    repository_method: AssetRepository.publishMarketplace
    output_focus:
      - published_marketplace
      - visibility updated
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:publish-library-only
    route_class: AssetsRoute.publishLibraryOnly
    service_method: AssetService.publishLibraryOnly
    repository_method: AssetRepository.publishLibraryOnly
    output_focus:
      - published_library_only
      - visibility updated
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:delist
    route_class: AssetsRoute.delist
    service_method: AssetService.delist
    repository_method: AssetRepository.delist
    output_focus:
      - delisted state
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:restrict
    route_class: AssetsRoute.restrict
    service_method: AssetService.restrict
    repository_method: AssetRepository.restrict
    output_focus:
      - restricted state
      - blocking effects
      - audit generated
      - projection refresh queued

  - endpoint: POST /api/v1/staticart/assets/{asset_id}:archive
    route_class: AssetsRoute.archive
    service_method: AssetService.archive
    repository_method: AssetRepository.archive
    output_focus:
      - archived state
      - audit generated

binding_rules:
  - lifecycle write must happen transactionally with audit write where required
  - publish actions must not bypass approval preconditions
  - invalid transitions must raise canonical conflict
