# ============================================================
# CULTURE MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: culture-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_lumen_v1
nation_draft_ref: SAMPLE_CULTURE_NATION_001
listing_system_style: growth_market

tier_rows:
  - tier_code: growth_market
    rank: 1
    tier_name: Growth Market
    tier_summary: growth-friendly tier for creative and event-driven companies
    operating_period_requirement: medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: moderate
    disclosure_requirement: moderate
    optional_scale_requirement: optional
    review_mode: growth_review

  - tier_code: venture_market
    rank: 2
    tier_name: Venture Market
    tier_summary: early-stage tier for creative and experimental entities
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
  growth_market:
    - culture_arts_company
    - software_company
    - game_company
    - education_company
  venture_market:
    - culture_arts_company
    - software_company
    - game_company

validation_hints:
  - event-driven firms still need compliance floor
  - disclosure cannot collapse into zero-detail listing

editor_notes:
  - market is designed for creative growth rather than scale maturity
