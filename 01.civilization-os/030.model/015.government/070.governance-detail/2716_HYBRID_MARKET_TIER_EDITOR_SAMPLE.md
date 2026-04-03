# ============================================================
# HYBRID MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: hybrid-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_concordia_v1
nation_draft_ref: SAMPLE_HYBRID_NATION_001
listing_system_style: hybrid_market

tier_rows:
  - tier_code: standard_market
    rank: 1
    tier_name: Standard Market
    tier_summary: balanced structured public tier
    operating_period_requirement: medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: structured
    disclosure_requirement: structured
    optional_scale_requirement: optional
    review_mode: structured_review

  - tier_code: growth_market
    rank: 2
    tier_name: Growth Market
    tier_summary: access tier for growing multi-sector companies
    operating_period_requirement: medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: moderate
    disclosure_requirement: moderate
    optional_scale_requirement: optional
    review_mode: growth_review

  - tier_code: venture_market
    rank: 3
    tier_name: Venture Market
    tier_summary: early-stage tier for lower-maturity entities
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
  standard_market:
    - retail_company
    - education_company
    - software_company
    - culture_arts_company
    - investment_company
  growth_market:
    - retail_company
    - education_company
    - game_company
    - software_company
    - culture_arts_company
  venture_market:
    - game_company
    - software_company
    - culture_arts_company

validation_hints:
  - standard must remain stricter than growth
  - growth must remain stricter or equal to venture on maturity axes
  - balanced access must not become undefined access

editor_notes:
  - hybrid market blends stability and access
