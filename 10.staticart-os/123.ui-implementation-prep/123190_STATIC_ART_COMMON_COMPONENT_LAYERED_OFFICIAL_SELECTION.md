# ============================================================
# STATIC ART COMMON COMPONENT LAYERED OFFICIAL SELECTION
# ============================================================

status: official-selection
system: StaticArtOS
owner: Boss
prepared_by: Zero

purpose:
Records the layered first-pass official selection
for StaticArtOS common component candidates.

This selection is split into:
- implementation-basis layer
- application-feature layer

This avoids premature collapse across abstraction levels.

selection_input:
  - 123.ui-implementation-prep/123170_STATIC_ART_COMMON_COMPONENT_DUPLICATION_AND_LAYERING_MEMO.md
  - 123.ui-implementation-prep/123180_STATIC_ART_COMMON_COMPONENT_LAYERED_REVIEW_MATRIX.md

# ------------------------------------------------------------
# 1. IMPLEMENTATION-BASIS FIRST-PASS SELECTION
# ------------------------------------------------------------

implementation_basis_selected_for_promotion_design:
  - ScreenShell
  - StatePanel
  - ActionButton
  - canonical response envelope helper
  - canonical error envelope helper
  - permission guard base
  - validator helper set
  - idempotency service base

implementation_basis_selected_but_caution:
  - StaticArtError / error-code base pattern
  - lifecycle transition helper base

implementation_basis_deferred:
  - ProductCard
  - LibraryShelf
  - AllowedActionsPanel
  - AssetSummaryRail
  - WorkspaceTabNav
  - ReviewDecisionPanel

implementation_basis_notes:
  ScreenShell:
    reason:
      - stable reusable shell primitive
      - clear non-ownership of feature logic

  StatePanel:
    reason:
      - stable reusable state renderer
      - broad cross-screen applicability

  ActionButton:
    reason:
      - stable reusable governed-action primitive
      - disabled-reason pattern is widely reusable

  canonical_response_envelope_helper:
    reason:
      - strong reusable outward success contract basis

  canonical_error_envelope_helper:
    reason:
      - strong reusable outward error contract basis

  permission_guard_base:
    reason:
      - strong reusable gate basis
      - actor/ownership check pattern recurs broadly

  validator_helper_set:
    reason:
      - strong reusable validation primitive family

  idempotency_service_base:
    reason:
      - strong reusable action-safety basis
      - backend adapter can remain pluggable

  StaticArtError_error_code_base_pattern:
    reason:
      - likely promotable
      - but concrete code taxonomy must be kept outside
    caution:
      - treat as generic pattern base only

  lifecycle_transition_helper_base:
    reason:
      - likely promotable
      - but concrete lifecycle enum should not be over-promoted
    caution:
      - keep helper generic

# ------------------------------------------------------------
# 2. APPLICATION-FEATURE FIRST-PASS SELECTION
# ------------------------------------------------------------

application_feature_selected_for_promotion_design:
  - Asset Metadata Editor Common
  - Marketplace Listing Common
  - Marketplace Filter Panel Common
  - Product Card Common
  - Library Shelf Common
  - Multilingual Label Common
  - Multicurrency Price Display Common
  - Review Queue Common

application_feature_selected_second_wave:
  - Asset Upload Common
  - Rights Policy Editor Common
  - Marketplace Sort Panel Common
  - Product Detail Summary Common
  - Owned Badge Common
  - Subscription Included Badge Common
  - Bookmark Common
  - Favorite Toggle Common

application_feature_deferred:
  - Sales Offer Editor Common
  - Subscription Eligibility Editor Common
  - Sample Access Common
  - Continue Reading / Continue Viewing Common
  - Reader Progress Sync Common
  - Viewer Progress Sync Common
  - Restriction Policy Summary Common
  - Exhibition Eligibility Badge Common

application_feature_notes:
  Asset_Metadata_Editor_Common:
    reason:
      - strong reusable feature family
      - stable editor boundary

  Marketplace_Listing_Common:
    reason:
      - strong reusable listing/catalog family
      - broad multi-app potential

  Marketplace_Filter_Panel_Common:
    reason:
      - strong reusable discovery/filter family

  Product_Card_Common:
    reason:
      - canonical higher-level family over concrete ProductCard source component

  Library_Shelf_Common:
    reason:
      - canonical higher-level family over concrete LibraryShelf source component

  Multilingual_Label_Common:
    reason:
      - foundational display family with broad reuse

  Multicurrency_Price_Display_Common:
    reason:
      - foundational commerce display family with broad reuse

  Review_Queue_Common:
    reason:
      - strong governance/review feature family

second_wave_note:
  - second-wave items are strong but slightly narrower
  - they should follow after the first feature wave stabilizes

deferred_note:
  - deferred items either need another consumer,
    further merge-review,
    or more stable business boundary clarification

# ------------------------------------------------------------
# 3. SAME-FAMILY PAIR DECISION
# ------------------------------------------------------------

same_family_pair_decision:
  ProductCard_family:
    lower_layer_evidence:
      - ProductCard
    canonical_feature_target:
      - Product Card Common

  LibraryShelf_family:
    lower_layer_evidence:
      - LibraryShelf
    canonical_feature_target:
      - Library Shelf Common

pair_rule:
  - Use the higher-level common name as canonical promotion target.
  - Treat lower-layer concrete components as implementation evidence, not primary canonical names.

# ------------------------------------------------------------
# 4. FINAL JUDGEMENT
# ------------------------------------------------------------

final_judgement:
  - StaticArtOS now has a stable layered first-pass selection.
  - implementation-basis and application-feature promotion can proceed independently.
  - same-family concrete/source components should not replace higher-level canonical feature names.
