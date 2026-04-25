# ============================================================
# STATIC ART SHARED LEDGER INTEGRATION INPUT
# ============================================================

status: shared-ledger-integration-input
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Packages the current StaticArtOS shared-adoption progression result
into a stable integration input
for later shared common-component ledger integration.

This document does not itself rewrite a global ledger.
It defines the StaticArtOS-side integration-ready set,
the exclusions, and the naming/boundary rules that must be preserved.

integration_input_sources:
- 123540_STATIC_ART_SHARED_ADOPTION_REVIEW_INPUT.md
- 123550_STATIC_ART_CURRENT_SHARED_ADOPTION_REVIEW_READY_SET.md
- 123560_STATIC_ART_SHARED_ADOPTION_REVIEW_RESULT.md
- 123570_STATIC_ART_CURRENT_SHARED_ADOPTION_STATE_SUMMARY.md

integration_ready_set:

  implementation_basis:
    - ScreenShell
    - StatePanel
    - ActionButton
    - canonical response envelope helper
    - canonical error envelope helper
    - permission guard base
    - validator helper set
    - idempotency service base
    - StaticArtError / error-code base pattern
    - lifecycle transition helper base

  application_feature:
    - Asset Metadata Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
    - Product Card Common
    - Library Shelf Common
    - Multilingual Label Common
    - Multicurrency Price Display Common
    - Review Queue Common
    - Asset Upload Common
    - Rights Policy Editor Common
    - Marketplace Sort Panel Common
    - Product Detail Summary Common
    - Owned Badge Common
    - Subscription Included Badge Common
    - Bookmark Common
    - Favorite Toggle Common

naming_and_boundary_rules:

  same_family_resolution:
    - ProductCard is lower-layer implementation evidence only
    - Product Card Common is the canonical shared-ledger target
    - LibraryShelf is lower-layer implementation evidence only
    - Library Shelf Common is the canonical shared-ledger target

  implementation_basis_rules:
    - keep primitives generic
    - do not carry StaticArtOS-specific taxonomies into shared ledger entries
    - keep helper bases separate from higher-level feature families
    - keep response/error helpers payload-agnostic
    - keep lifecycle helper generic-pattern-first

  application_feature_rules:
    - keep feature families above implementation primitives
    - do not absorb backend engines into UI/feature families
    - do not hard-code StaticArtOS-specific wording
    - keep rights/sales/subscription/entitlement exact logic outside promoted common families

excluded_from_current_integration_wave:
  continuity_and_progress_merge_review:
    - Continue Reading / Continue Viewing Common
    - Reader Progress Sync Common
    - Viewer Progress Sync Common

  later_candidates:
    - Sales Offer Editor Common
    - Subscription Eligibility Editor Common
    - Sample Access Common
    - Restriction Policy Summary Common
    - Exhibition Eligibility Badge Common
    - AllowedActionsPanel
    - AssetSummaryRail
    - WorkspaceTabNav
    - ReviewDecisionPanel

integration_review_questions:
- should this candidate be recorded in the shared ledger now?
- is the ownership boundary stable enough for a shared ledger entry?
- does the name represent the higher-level canonical family?
- is the candidate generic beyond StaticArtOS?
- should the candidate remain excluded pending merge review or second-consumer evidence?

integration_recommendation:
  move_into_shared_ledger_review_now:
    implementation_basis:
      - ScreenShell
      - StatePanel
      - ActionButton
      - canonical response envelope helper
      - canonical error envelope helper
      - permission guard base
      - validator helper set
      - idempotency service base
      - StaticArtError / error-code base pattern
      - lifecycle transition helper base

    application_feature:
      - Asset Metadata Editor Common
      - Marketplace Listing Common
      - Marketplace Filter Panel Common
      - Product Card Common
      - Library Shelf Common
      - Multilingual Label Common
      - Multicurrency Price Display Common
      - Review Queue Common
      - Asset Upload Common
      - Rights Policy Editor Common
      - Marketplace Sort Panel Common
      - Product Detail Summary Common
      - Owned Badge Common
      - Subscription Included Badge Common
      - Bookmark Common
      - Favorite Toggle Common

  keep_outside_current_shared_ledger_wave:
    - Continue Reading / Continue Viewing Common
    - Reader Progress Sync Common
    - Viewer Progress Sync Common
    - Sales Offer Editor Common
    - Subscription Eligibility Editor Common
    - Sample Access Common
    - Restriction Policy Summary Common
    - Exhibition Eligibility Badge Common
    - AllowedActionsPanel
    - AssetSummaryRail
    - WorkspaceTabNav
    - ReviewDecisionPanel

final_note:
Use this file as the official StaticArtOS-side bridge
into shared-ledger integration review.
