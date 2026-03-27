# ============================================================
# MILITARY MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: military-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_horizon_v1
nation_draft_ref: SAMPLE_MILITARY_NATION_001
listing_system_style: state_guided_market

tier_rows:
  - tier_code: standard_market
    rank: 1
    tier_name: Standard Market
    tier_summary: general reviewed public tier under policy sensitivity
    operating_period_requirement: medium
    evaluation_requirement: medium_to_high
    activity_requirement: medium
    compliance_requirement: strict
    disclosure_requirement: structured
    optional_scale_requirement: optional
    review_mode: policy_review

  - tier_code: special_public_market
    rank: 2
    tier_name: Special Public Market
    tier_summary: exceptional listing path under state-guided discretion
    operating_period_requirement: medium
    evaluation_requirement: structured
    activity_requirement: medium
    compliance_requirement: strict
    disclosure_requirement: structured
    optional_scale_requirement: optional
    review_mode: policy_discretion_review

threshold_policy:
  rank_monotonic_required: true
  disclosure_floor_required: true
  compliance_floor_required: true
  strategic_alignment_required: true

company_type_eligibility_matrix:
  standard_market:
    - software_company
    - education_company
    - culture_arts_company
  special_public_market:
    - software_company
    - education_company

validation_hints:
  - strategic alignment rule required
  - policy discretion must remain explicit
  - no company may bypass compliance floor

editor_notes:
  - listing is available but tightly filtered
