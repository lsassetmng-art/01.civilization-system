# ============================================================
# APPLICATION COMMON COMPONENT STATIC ART ADDITIVE NEW FAMILIES
# ============================================================

status: additive-review
owner: Boss
prepared_by: Zero

purpose:
Isolate the strongest StaticArt-origin additive-new families
after comparison against 014_APPLICATION_COMMON_COMPONENT_OFFICIAL_LEDGER.md.

source_reference:
- 059_APPLICATION_COMMON_COMPONENT_STATIC_ART_VS_014_COMPARISON.md

candidate_additive_new_families:

  tier_1_strongest_additive_new:
    - Asset Metadata Editor Common
    - Marketplace Listing Common
    - Marketplace Filter Panel Common
    - Asset Upload Common
    - Rights Policy Editor Common

  tier_2_strong_additive_new:
    - Marketplace Sort Panel Common
    - Product Detail Summary Common
    - Owned Badge Common
    - Subscription Included Badge Common

not_treated_as_additive_new_now:
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
  - Product Card Common
  - Library Shelf Common
  - Multilingual Label Common
  - Multicurrency Price Display Common
  - Review Queue Common
  - Bookmark Common
  - Favorite Toggle Common

additive_new_review_notes:

  Asset_Metadata_Editor_Common:
    reason:
      - strong reusable feature family
      - clear asset/editor boundary
      - not obviously reducible to existing minimal foundation names

  Marketplace_Listing_Common:
    reason:
      - strong reusable listing/catalog family
      - likely broader than a simple card/list primitive

  Marketplace_Filter_Panel_Common:
    reason:
      - strong reusable discovery/filter family
      - likely valid as a distinct family if not already canonically covered elsewhere

  Asset_Upload_Common:
    reason:
      - strong upload-first feature family
      - should stay above lower technical helper primitives

  Rights_Policy_Editor_Common:
    reason:
      - clear policy-editing family
      - useful where rights-aware asset/content apps exist

  Marketplace_Sort_Panel_Common:
    reason:
      - likely additive but slightly narrower than filter/listing families

  Product_Detail_Summary_Common:
    reason:
      - useful higher-level summary family
      - needs care not to duplicate broader detail-page shells

  Owned_Badge_Common:
    reason:
      - small but potentially reusable state indicator
      - additive value depends on whether ownership-state family already exists elsewhere

  Subscription_Included_Badge_Common:
    reason:
      - small but potentially reusable inclusion-state indicator
      - additive value depends on whether inclusion-state family already exists elsewhere

recommended_next_step:
- create a limited StaticArt additive reflection memo
- propose only tier_1_strongest_additive_new first
- keep tier_2 as optional secondary additions

best_next_reflection_subset:
  - Asset Metadata Editor Common
  - Marketplace Listing Common
  - Marketplace Filter Panel Common
  - Asset Upload Common
  - Rights Policy Editor Common

final_judgment:
  - StaticArt-origin additive-new value exists
  - but it should be reflected in a limited and controlled way
  - tier_1 should be reviewed before tier_2
