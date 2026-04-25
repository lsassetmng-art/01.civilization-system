# ============================================================
# STATIC ART COMMON COMPONENT LAYERED REVIEW MATRIX
# ============================================================

status: review-matrix
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Defines a layered review matrix for StaticArtOS common component candidates.

This review matrix separates:
- implementation-basis layer
- application-feature layer

This prevents over-merging candidates across abstraction levels.

source_documents:
  - 060.integration/000_STATIC_ART_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
  - 123.ui-implementation-prep/123160_STATIC_ART_OS_COMMON_COMPONENT_PROMOTION_CANDIDATES.md
  - 123.ui-implementation-prep/123170_STATIC_ART_COMMON_COMPONENT_DUPLICATION_AND_LAYERING_MEMO.md

review_columns:
  - reuse_strength
  - contract_stability
  - ownership_clarity
  - cross_app_readiness
  - review_comment
  - next_action

allowed_values:
  reuse_strength:
    - high
    - medium
    - low
  contract_stability:
    - high
    - medium
    - low
  ownership_clarity:
    - clear
    - partial
    - unclear
  cross_app_readiness:
    - ready
    - near-ready
    - later
  next_action:
    - shortlist
    - hold
    - merge-review

# ------------------------------------------------------------
# 1. IMPLEMENTATION-BASIS LAYER REVIEW
# ------------------------------------------------------------

implementation_basis_layer:

  - candidate: ScreenShell
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable page/frame primitive across creator, admin, and marketplace-like screens
    next_action: shortlist

  - candidate: StatePanel
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable loading/empty/error/forbidden state renderer across many applications
    next_action: shortlist

  - candidate: ActionButton
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable governed-action primitive with disabled-reason pattern
    next_action: shortlist

  - candidate: canonical response envelope helper
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable API success-envelope basis across many application APIs
    next_action: shortlist

  - candidate: canonical error envelope helper
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable outward error-envelope basis across many application APIs
    next_action: shortlist

  - candidate: StaticArtError / error-code base pattern
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      generic typed error pattern is reusable,
      but staticart-prefixed concrete code mapping must remain outside
    next_action: shortlist

  - candidate: permission guard base
    reuse_strength: high
    contract_stability: high
    ownership_clarity: partial
    cross_app_readiness: ready
    review_comment:
      reusable actor/role/ownership gate basis,
      but app-specific actor taxonomy must stay outside
    next_action: shortlist

  - candidate: validator helper set
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable request-validation primitives with strong cross-app value
    next_action: shortlist

  - candidate: idempotency service base
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable idempotent action basis,
      but backend storage adapter should remain pluggable
    next_action: shortlist

  - candidate: lifecycle transition helper base
    reuse_strength: medium
    contract_stability: high
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable state-machine basis,
      but concrete StaticArt lifecycle enum must remain outside
    next_action: shortlist

  - candidate: ProductCard
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      concrete source-skeleton evidence for a higher-level product card family
    next_action: merge-review

  - candidate: LibraryShelf
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      concrete source-skeleton evidence for a higher-level library shelf family
    next_action: merge-review

  - candidate: AllowedActionsPanel
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      useful capability-driven surface,
      but business decision logic must stay outside
    next_action: hold

  - candidate: AssetSummaryRail
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: later
    review_comment:
      useful asset-management helper,
      but needs second consumer before promotion
    next_action: hold

  - candidate: WorkspaceTabNav
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: later
    review_comment:
      useful multi-step editor shell,
      but still too editor-specific without second consumer
    next_action: hold

  - candidate: ReviewDecisionPanel
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      useful moderated/reviewed surface,
      but decision-set variance remains high
    next_action: hold

# ------------------------------------------------------------
# 2. APPLICATION-FEATURE LAYER REVIEW
# ------------------------------------------------------------

application_feature_layer:

  - candidate: Asset Upload Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      strong upload-first family,
      but should remain above lower technical helper bases
    next_action: shortlist

  - candidate: Asset Metadata Editor Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      strong reusable metadata-editing family across creator and marketplace-like apps
    next_action: shortlist

  - candidate: Rights Policy Editor Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable policy editor candidate,
      but scope boundary needs exact normalization
    next_action: shortlist

  - candidate: Sales Offer Editor Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      useful commerce-facing editor,
      but still partially tied to marketplace pricing specifics
    next_action: hold

  - candidate: Subscription Eligibility Editor Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable for subscription-enabled content apps,
      but eligibility contract needs more stabilization
    next_action: hold

  - candidate: Marketplace Listing Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      strong reusable listing/catalog surface family
    next_action: shortlist

  - candidate: Marketplace Filter Panel Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      strong reusable discovery/filter family
    next_action: shortlist

  - candidate: Marketplace Sort Panel Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      strong reusable sort surface for marketplace/discovery apps
    next_action: shortlist

  - candidate: Product Card Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      higher-level canonical product card family;
      should remain canonical over concrete ProductCard source component
    next_action: shortlist

  - candidate: Product Detail Summary Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: clear
    cross_app_readiness: near-ready
    review_comment:
      strong product detail surface,
      but detail summary contract should stabilize further
    next_action: shortlist

  - candidate: Owned Badge Common
    reuse_strength: medium
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      small but reusable ownership-state badge
    next_action: shortlist

  - candidate: Subscription Included Badge Common
    reuse_strength: medium
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      small but reusable inclusion-state badge
    next_action: shortlist

  - candidate: Sample Access Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable preview/sample family,
      but eligibility behavior may vary by consumer app
    next_action: hold

  - candidate: Library Shelf Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: clear
    cross_app_readiness: near-ready
    review_comment:
      higher-level canonical shelf family;
      should remain canonical over concrete LibraryShelf source component
    next_action: shortlist

  - candidate: Continue Reading / Continue Viewing Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      strong continuity family,
      but reading/viewing contract may need cross-consumer merge review
    next_action: merge-review

  - candidate: Bookmark Common
    reuse_strength: medium
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      small but reusable bookmarking family
    next_action: shortlist

  - candidate: Favorite Toggle Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      reusable discovery/library interaction primitive
    next_action: shortlist

  - candidate: Reader Progress Sync Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: later
    review_comment:
      useful sync family,
      but should merge-review with broader continuity/progress family first
    next_action: merge-review

  - candidate: Viewer Progress Sync Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: later
    review_comment:
      useful sync family,
      but should merge-review with broader continuity/progress family first
    next_action: merge-review

  - candidate: Multilingual Label Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      foundational multilingual display family
    next_action: shortlist

  - candidate: Multicurrency Price Display Common
    reuse_strength: high
    contract_stability: high
    ownership_clarity: clear
    cross_app_readiness: ready
    review_comment:
      foundational commerce-facing price-display family
    next_action: shortlist

  - candidate: Review Queue Common
    reuse_strength: high
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      strong governance/review workflow family
    next_action: shortlist

  - candidate: Restriction Policy Summary Common
    reuse_strength: medium
    contract_stability: medium
    ownership_clarity: partial
    cross_app_readiness: later
    review_comment:
      useful policy-driven access summary family,
      but rule taxonomy needs more stabilization
    next_action: hold

  - candidate: Exhibition Eligibility Badge Common
    reuse_strength: medium
    contract_stability: high
    ownership_clarity: partial
    cross_app_readiness: near-ready
    review_comment:
      reusable where exhibition relation exists,
      but eligibility source contract needs more clarity
    next_action: hold

# ------------------------------------------------------------
# 3. LAYERED SHORTLIST SUMMARY
# ------------------------------------------------------------

layered_shortlist_summary:

  implementation_basis_shortlist:
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

  application_feature_shortlist:
    - Asset Upload Common
    - Asset Metadata Editor Common
    - Rights Policy Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
    - Marketplace Sort Panel Common
    - Product Card Common
    - Product Detail Summary Common
    - Owned Badge Common
    - Subscription Included Badge Common
    - Library Shelf Common
    - Bookmark Common
    - Favorite Toggle Common
    - Multilingual Label Common
    - Multicurrency Price Display Common
    - Review Queue Common

merge_review_first:
  - ProductCard -> Product Card Common family
  - LibraryShelf -> Library Shelf Common family
  - Continue Reading / Continue Viewing Common
  - Reader Progress Sync Common
  - Viewer Progress Sync Common

hold_for_later:
  - AllowedActionsPanel
  - AssetSummaryRail
  - WorkspaceTabNav
  - ReviewDecisionPanel
  - Sales Offer Editor Common
  - Subscription Eligibility Editor Common
  - Sample Access Common
  - Restriction Policy Summary Common
  - Exhibition Eligibility Badge Common

final_judgement:
  - The StaticArtOS candidate space is now cleanly separated by abstraction layer.
  - Most conflict risk is removed by treating implementation-basis and application-feature as different review groups.
  - ProductCard/Product Card Common and LibraryShelf/Library Shelf Common remain same-family pairs, not equal canonical names.
