# ============================================================
# STATIC ART COMMON COMPONENT NEXT PROMOTION PLAN
# ============================================================

status: promotion-plan
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Defines the next promotion-design plan
after the layered first-pass official selection.

source_documents:
  - 123.ui-implementation-prep/123190_STATIC_ART_COMMON_COMPONENT_LAYERED_OFFICIAL_SELECTION.md

# ------------------------------------------------------------
# 1. IMPLEMENTATION-BASIS PROMOTION PLAN
# ------------------------------------------------------------

implementation_basis_promotion_order:
  1:
    - ScreenShell
    - StatePanel
    - ActionButton
  2:
    - canonical response envelope helper
    - canonical error envelope helper
  3:
    - permission guard base
    - validator helper set
    - idempotency service base
  4:
    - StaticArtError / error-code base pattern
    - lifecycle transition helper base

implementation_basis_design_focus:
  - keep contracts generic
  - keep UI primitives feature-agnostic
  - keep API helpers payload-agnostic
  - keep guard/validator/idempotency adapters pluggable
  - do not bind to StaticArtOS-only actor or lifecycle enums

# ------------------------------------------------------------
# 2. APPLICATION-FEATURE PROMOTION PLAN
# ------------------------------------------------------------

application_feature_promotion_order:
  1:
    - Asset Metadata Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
  2:
    - Product Card Common
    - Library Shelf Common
  3:
    - Multilingual Label Common
    - Multicurrency Price Display Common
  4:
    - Review Queue Common
  5:
    - Asset Upload Common
    - Rights Policy Editor Common
    - Marketplace Sort Panel Common
    - Product Detail Summary Common
    - Owned Badge Common
    - Subscription Included Badge Common
    - Bookmark Common
    - Favorite Toggle Common

application_feature_design_focus:
  - keep business rules outside core surface contracts
  - keep lower-level UI primitives reusable underneath
  - keep Product Card Common / Library Shelf Common as canonical names
  - keep upload/review/policy families separate from technical bases

# ------------------------------------------------------------
# 3. DEFERRED FOLLOW-UP PLAN
# ------------------------------------------------------------

deferred_follow_up:
  merge_review_first:
    - Continue Reading / Continue Viewing Common
    - Reader Progress Sync Common
    - Viewer Progress Sync Common
  later_candidate_check:
    - Sales Offer Editor Common
    - Subscription Eligibility Editor Common
    - Sample Access Common
    - Restriction Policy Summary Common
    - Exhibition Eligibility Badge Common
  second_consumer_required:
    - AssetSummaryRail
    - WorkspaceTabNav
    - ReviewDecisionPanel

# ------------------------------------------------------------
# 4. RECOMMENDED NEXT OUTPUTS
# ------------------------------------------------------------

recommended_next_outputs:
  implementation_basis_first_bundle:
    - ScreenShell promotion design
    - StatePanel promotion design
    - ActionButton promotion design
    - response/error helper promotion designs

  application_feature_first_bundle:
    - Asset Metadata Editor Common promotion design
    - Marketplace Listing Common promotion design
    - Marketplace Filter Panel Common promotion design

# ------------------------------------------------------------
# 5. FINAL JUDGEMENT
# ------------------------------------------------------------

final_judgement:
  - StaticArtOS is ready for layered promotion-design work.
  - The safest path is to design implementation-basis and application-feature bundles separately.
  - This layered plan should be used instead of mixing all candidate types into one undifferentiated promotion wave.
