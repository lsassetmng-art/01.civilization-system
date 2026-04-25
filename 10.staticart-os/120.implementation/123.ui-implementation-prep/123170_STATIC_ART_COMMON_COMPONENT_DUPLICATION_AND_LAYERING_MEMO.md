# ============================================================
# STATIC ART COMMON COMPONENT DUPLICATION AND LAYERING MEMO
# ============================================================

status: memo
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Clarifies the relationship between:

- 060.integration candidate-ledger
- 123.ui-implementation-prep candidate-ledger

This memo explains:
- which candidates are functionally distinct
- which candidates are related but not duplicates
- which candidates may later be layered together
- which candidates should remain separated by abstraction level

# ------------------------------------------------------------
# 1. SOURCE DOCUMENTS
# ------------------------------------------------------------

source_documents:
  - 060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
  - 123.ui-implementation-prep/123160_STATIC_ART_OS_COMMON_COMPONENT_PROMOTION_CANDIDATES.md

# ------------------------------------------------------------
# 2. HIGH-LEVEL JUDGEMENT
# ------------------------------------------------------------

high_level_judgement:
  - The 060.integration document mainly captures business-facing and feature-facing shared components.
  - The 123.ui-implementation-prep document mainly captures implementation-basis and technical-shell shared components.
  - The two ledgers are related, but they are not the same layer.
  - Most items should not be treated as direct duplicates.
  - The correct approach is layering, not collapsing.

# ------------------------------------------------------------
# 3. LAYER MODEL
# ------------------------------------------------------------

layer_model:

  implementation_basis_layer:
    description:
      - technical primitives
      - UI shell primitives
      - response/error helpers
      - guards
      - validators
      - idempotency helpers
      - lifecycle helper base
    representative_candidates:
      - ScreenShell
      - StatePanel
      - ActionButton
      - canonical response envelope helper
      - canonical error envelope helper
      - StaticArtError / error-code base pattern
      - permission guard base
      - validator helper set
      - idempotency service base
      - lifecycle transition helper base

  application_feature_layer:
    description:
      - feature-common components
      - reusable asset/product/library/review/listing functions
      - reusable cross-screen behavior for asset-centric applications
    representative_candidates:
      - Asset Upload Common
      - Asset Metadata Editor Common
      - Rights Policy Editor Common
      - Sales Offer Editor Common
      - Subscription Eligibility Editor Common
      - Marketplace Listing Common
      - Marketplace Filter Panel Common
      - Product Card Common
      - Product Detail Summary Common
      - Library Shelf Common
      - Review Queue Common

layering_rule:
  - implementation basis candidates should remain lower than feature-common candidates
  - feature-common candidates may consume implementation-basis candidates
  - lower-level candidates should not absorb higher-level business meaning
  - higher-level feature candidates should not redefine lower-level technical primitives

# ------------------------------------------------------------
# 4. NOT-DUPLICATE BUT RELATED PAIRS
# ------------------------------------------------------------

not_duplicate_but_related_pairs:

  - pair:
      - ScreenShell
      - Marketplace Listing Common
    relation:
      - ScreenShell is a page/frame primitive
      - Marketplace Listing Common is a feature-level listing surface
    judgement:
      - not duplicate

  - pair:
      - StatePanel
      - Review Queue Common
    relation:
      - StatePanel renders generic loading/empty/error/forbidden states
      - Review Queue Common is a workflow/feature surface that may use StatePanel
    judgement:
      - not duplicate

  - pair:
      - ActionButton
      - Owned Badge / Subscription Included Badge / Exhibition Eligibility Badge
    relation:
      - ActionButton is an action primitive
      - badges are feature-specific visual indicators
    judgement:
      - not duplicate

  - pair:
      - canonical response envelope helper
      - Asset Upload Common
    relation:
      - response envelope helper is an API output primitive
      - Asset Upload Common is a feature-level upload behavior family
    judgement:
      - not duplicate

  - pair:
      - permission guard base
      - Rights Policy Editor Common
    relation:
      - permission guard base is a technical access-control base
      - Rights Policy Editor Common is a business-facing policy editor
    judgement:
      - not duplicate

  - pair:
      - lifecycle transition helper base
      - Review Queue Common
    relation:
      - lifecycle helper is a generic state-transition basis
      - Review Queue Common is a review workflow feature
    judgement:
      - not duplicate

  - pair:
      - ProductCard
      - Product Card Common
    relation:
      - implementation-prep ProductCard is a concrete source-skeleton component
      - integration Product Card Common is a promotion candidate at feature-common level
    judgement:
      - likely same family, different maturity/layer
    handling:
      - treat source-skeleton ProductCard as implementation-origin evidence
      - keep Product Card Common as the higher-level promotion candidate name

  - pair:
      - LibraryShelf
      - Library Shelf Common
    relation:
      - implementation-prep LibraryShelf is a concrete source-skeleton component
      - integration Library Shelf Common is a feature-common promotion candidate
    judgement:
      - likely same family, different maturity/layer
    handling:
      - treat source-skeleton LibraryShelf as implementation-origin evidence
      - keep Library Shelf Common as the higher-level promotion candidate name

# ------------------------------------------------------------
# 5. LIKELY FAMILY MERGE PATHS
# ------------------------------------------------------------

likely_family_merge_paths:

  ProductCard_family:
    lower_evidence:
      - ProductCard
    higher_candidate:
      - Product Card Common
    judgement:
      - merge at family level later
      - keep higher-level common name as canonical promotion target

  LibraryShelf_family:
    lower_evidence:
      - LibraryShelf
    higher_candidate:
      - Library Shelf Common
    judgement:
      - merge at family level later
      - keep higher-level common name as canonical promotion target

  upload_family:
    lower_evidence:
      - ScreenShell
      - StatePanel
      - ActionButton
      - canonical response/error helpers
      - permission guard base
      - validator helper set
      - idempotency service base
    higher_candidate:
      - Asset Upload Common
    judgement:
      - lower layer supports upload family
      - do not collapse technical helpers into Asset Upload Common

  review_family:
    lower_evidence:
      - StatePanel
      - ActionButton
      - lifecycle transition helper base
      - permission guard base
    higher_candidate:
      - Review Queue Common
    judgement:
      - lower layer supports review feature family
      - keep workflow feature family separate from technical primitives

# ------------------------------------------------------------
# 6. SAFE FIRST PROMOTION SET BY LAYER
# ------------------------------------------------------------

safe_first_promotion_set_by_layer:

  implementation_basis_first:
    - ScreenShell
    - StatePanel
    - ActionButton
    - canonical response envelope helper
    - canonical error envelope helper
    - permission guard base
    - validator helper set
    - idempotency service base

  application_feature_first:
    - Asset Metadata Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
    - Product Card Common
    - Library Shelf Common
    - Multilingual Label Common
    - Multicurrency Price Display Common
    - Review Queue Common

judgement_note:
  - It is safe to move both layers forward,
    but they should be reviewed as different abstraction groups.

# ------------------------------------------------------------
# 7. DO NOT COLLAPSE RULES
# ------------------------------------------------------------

do_not_collapse_rules:
  - Do not collapse ScreenShell into feature-common listing/library/editor candidates.
  - Do not collapse response/error helpers into upload or review feature families.
  - Do not collapse permission guard base into rights-policy editor candidates.
  - Do not collapse lifecycle helper base into review queue or publication workflow families.
  - Do not treat concrete source-skeleton ProductCard / LibraryShelf as stronger canonical names than Product Card Common / Library Shelf Common.

# ------------------------------------------------------------
# 8. FINAL JUDGEMENT
# ------------------------------------------------------------

final_judgement:
  - The earlier 060.integration ledger and the later 123.ui-implementation-prep ledger are both valid.
  - They represent different abstraction layers.
  - The correct model is:
    - lower implementation-basis layer
    - higher application-feature layer
  - Only ProductCard/Product Card Common and LibraryShelf/Library Shelf Common look like same-family duplicates.
  - Most other items should remain separated and layered.
