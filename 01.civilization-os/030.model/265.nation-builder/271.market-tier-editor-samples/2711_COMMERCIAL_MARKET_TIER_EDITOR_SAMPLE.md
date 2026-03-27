# ============================================================
# COMMERCIAL MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: commercial-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_meridian_v1
nation_draft_ref: SAMPLE_COMMERCIAL_NATION_001
listing_system_style: multi_tier_market

tier_rows:
  - tier_code: prime_market
    rank: 1
    tier_name: Prime Market
    tier_summary: highest maturity and disclosure tier
    operating_period_requirement: high
    evaluation_requirement: high
    activity_requirement: high
    compliance_requirement: strict
    disclosure_requirement: strict
    optional_scale_requirement: high
    review_mode: full_review

  - tier_code: standard_market
    rank: 2
    tier_name: Standard Market
    tier_summary: structured public tier for stable companies
    operating_period_requirement: medium_to_high
    evaluation_requirement: medium_to_high
    activity_requirement: medium
    compliance_requirement: structured
    disclosure_requirement: structured
    optional_scale_requirement: medium
    review_mode: structured_review

  - tier_code: growth_market
    rank: 3
    tier_name: Growth Market
    tier_summary: reviewed tier for emerging but active companies
    operating_period_requirement: medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: moderate
    disclosure_requirement: moderate
    optional_scale_requirement: low_to_medium
    review_mode: growth_review

  - tier_code: venture_market
    rank: 4
    tier_name: Venture Market
    tier_summary: early-stage public access tier under explicit review
    operating_period_requirement: low_to_medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: moderate
    disclosure_requirement: moderate
    optional_scale_requirement: optional
    review_mode: venture_review

threshold_policy:
  rank_monotonic_required: true
  disclosure_floor_required: true
  compliance_floor_required: true
  strategic_alignment_required: false

company_type_eligibility_matrix:
  prime_market:
    - retail_company
    - investment_company
    - software_company
    - culture_arts_company
  standard_market:
    - retail_company
    - investment_company
    - education_company
    - software_company
    - game_company
    - culture_arts_company
  growth_market:
    - education_company
    - game_company
    - software_company
    - culture_arts_company
    - retail_company
  venture_market:
    - game_company
    - software_company
    - culture_arts_company
    - education_company

validation_hints:
  - duplicate rank prohibited
  - higher rank cannot be easier than lower rank
  - disclosure cannot be omitted for any public tier

editor_notes:
  - broad market access with clear maturity ladder
  - religion and system entities remain non-listable
