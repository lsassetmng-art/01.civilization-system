# ============================================================
# EDUCATION MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: education-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_aurora_v1
nation_draft_ref: SAMPLE_EDUCATION_NATION_001
listing_system_style: growth_market

tier_rows:
  - tier_code: standard_market
    rank: 1
    tier_name: Standard Market
    tier_summary: structured tier for stable education and support entities
    operating_period_requirement: medium
    evaluation_requirement: medium_to_high
    activity_requirement: medium
    compliance_requirement: structured
    disclosure_requirement: structured
    optional_scale_requirement: optional
    review_mode: structured_review

  - tier_code: growth_market
    rank: 2
    tier_name: Growth Market
    tier_summary: access tier for growing education and software-linked entities
    operating_period_requirement: medium
    evaluation_requirement: medium
    activity_requirement: medium
    compliance_requirement: moderate
    disclosure_requirement: moderate
    optional_scale_requirement: optional
    review_mode: growth_review

threshold_policy:
  rank_monotonic_required: true
  disclosure_floor_required: true
  compliance_floor_required: true
  strategic_alignment_required: false

company_type_eligibility_matrix:
  standard_market:
    - education_company
    - software_company
    - culture_arts_company
  growth_market:
    - education_company
    - software_company
    - culture_arts_company

validation_hints:
  - no tier may violate education safety baseline
  - disclosure may be lighter than commerce-heavy markets
  - religion corporations remain excluded

editor_notes:
  - market is intentionally narrower than commercial nations
