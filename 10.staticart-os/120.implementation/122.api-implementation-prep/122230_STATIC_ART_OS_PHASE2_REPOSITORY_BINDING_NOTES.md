# ============================================================
# STATIC ART OS PHASE2 REPOSITORY BINDING NOTES
# ============================================================

status: implementation-prep
system: StaticArtOS
phase: Phase 2 repository skeleton
owner: Boss
prepared_by: Zero

binding_principles:
  - Route validates and guards.
  - Service orchestrates use case.
  - Repository performs Persona-side persistence and reads.
  - Repository throws normalized domain/repository exceptions only.
  - Repository never constructs outward HTTP response envelopes.

persona_side_rule:
  - Use PERSONA_DATABASE_URL only.
  - Do not use DATABASE_URL for StaticArtOS Persona-side repository binding.

implementation_targets:
  asset_repository:
    - createDraft
    - getDetail
    - upsertLocalization
    - updateRightsPolicy
    - updateSalesOffer
    - updateSubscriptionRule
    - runSelfCheck
    - createReviewRequest
    - decideReview
    - publishMarketplace
    - publishLibraryOnly
    - delist
    - restrict
    - archive

  entitlement_repository:
    - getEffectiveEntitlement
    - reflectPurchase
    - reflectSubscription

  library_repository:
    - getLibrary
    - getContinueReading
    - getContinueViewing
    - saveReaderProgress
    - saveViewerProgress
    - addFavorite
    - deleteFavorite
    - createAnnotation

  projection_repository:
    - getExhibitionProjection
    - enqueueProjectionRefresh

important_notes:
  - Self-check can start as placeholder query-based validation and later deepen.
  - Publish/restrict/delist/archive must later emit audit events through repository transaction boundaries.
  - Projection enqueue is queue-oriented and must not rewrite canonical state directly.
