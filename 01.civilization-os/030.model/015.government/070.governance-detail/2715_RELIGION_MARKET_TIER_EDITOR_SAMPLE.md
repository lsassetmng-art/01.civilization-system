# ============================================================
# RELIGION MARKET TIER EDITOR SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: market-tier-editor-sample
component: religion-market-tier-editor-sample

owner: Boss
prepared_by: Zero

editor_session_code: market_editor_sancta_v1
nation_draft_ref: SAMPLE_RELIGION_NATION_001
listing_system_style: strict_public_market

tier_rows:
  - tier_code: standard_market
    rank: 1
    tier_name: Standard Market
    tier_summary: narrow public tier for compatible non-religious entities
    operating_period_requirement: high
    evaluation_requirement: high
    activity_requirement: medium
    compliance_requirement: strict
    disclosure_requirement: structured
    optional_scale_requirement: optional
    review_mode: strict_review

threshold_policy:
  rank_monotonic_required: true
  disclosure_floor_required: true
  compliance_floor_required: true
  strategic_alignment_required: false

company_type_eligibility_matrix:
  standard_market:
    - education_company
    - culture_arts_company

validation_hints:
  - religious corporations remain excluded
  - narrow eligibility must be explicit
  - standard tier may not be easier than hybrid or growth configurations by mistake

editor_notes:
  - listing exists only as a narrow exception path
