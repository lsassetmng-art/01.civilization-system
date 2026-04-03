# ============================================================
# CULTURE ARTS INITIAL COMPANY DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-company-draft-sample
component: culture-arts-company-sample

owner: Boss
prepared_by: Zero

draft_identity:
  company_draft_id: sample-culture-arts-001
  draft_code: SAMPLE_CULTURE_ARTS_COMPANY_001
  draft_status: draft
  builder_stage: company_draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  company_template_code: culture_arts_company_default
  company_type: culture_arts_company
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: creative production and event operation company

company_core_bundle:
  source_mode: mixed
  company_name: Lumen Storyworks
  company_short_name: Storyworks
  company_type: culture_arts_company
  company_category: culture
  founder_user_id: TBD
  company_summary: A culture and arts company producing narrative and digital art content and operating public events.
  company_mission: Turn stories, images, and events into enduring cultural value.
  legal_structure_profile: standard_for_profit_company
  is_system_limited: false
  is_user_creatable: true
  is_listing_eligible_base: true
  company_notes: supports creation plus exhibition and screening

nation_binding_bundle:
  source_mode: mixed
  home_nation_id: lumen_live
  home_nation_draft_ref: SAMPLE_CULTURE_NATION_001
  applicable_company_regime: creative_company_enablement_regime
  applicable_property_regime: open_creative_property_regime
  applicable_tax_regime: moderate_cultural_activity_tax_regime
  applicable_listing_style: growth_market
  applicable_zone_ruleset: culture-core-zoning
  nation_binding_notes: culture-centered nation with arts and event support

product_scope_bundle:
  source_mode: mixed
  scope_profile_code: culture_scope_default
  allowed_sellable_product_types:
    - novel_content
    - manga_content
    - anime_content
    - drama_content
    - film_content
    - digital_art_content
    - exhibition_event
    - screening_event
  disallowed_product_types: []
  creatable_product_types:
    - novel_content
    - manga_content
    - anime_content
    - drama_content
    - film_content
    - digital_art_content
  distribution_capabilities:
    - self_sale
    - exclusive_distribution
    - multi_retail_distribution
  publishing_capabilities:
    - marketplace_listing
  event_operation_capabilities:
    - exhibition_event
    - screening_event
  rights_handling_capabilities:
    - rightsholder
    - seller_role
    - distribution_right_handling
  scope_notes: supports creative works plus public cultural events

site_plan_bundle:
  source_mode: mixed
  headquarters_plan:
    site_type: headquarters
    site_name: Storyworks HQ
    zone_map_ref: sample_zone_map_lumen_v1
    zone_cell_ref: O1
    public_visibility: limited
    site_role_summary: administrative_core
    opening_priority: highest
    opening_notes: production management anchor
  branch_plans:
    - site_type: branch
      site_name: Storyworks Event Branch
      zone_map_ref: sample_zone_map_lumen_v1
      zone_cell_ref: M1
      public_visibility: limited
      site_role_summary: event_support
      opening_priority: medium
      opening_notes: future branch for expanded event operations
  additional_site_plans:
    - site_type: studio
      site_name: Storyworks Studio
      zone_map_ref: sample_zone_map_lumen_v1
      zone_cell_ref: A1
      public_visibility: limited
      site_role_summary: production_support
      opening_priority: highest
      opening_notes: content production site
    - site_type: gallery_site
      site_name: Storyworks Public Gallery
      zone_map_ref: sample_zone_map_lumen_v1
      zone_cell_ref: A2
      public_visibility: public
      site_role_summary: exhibition_and_screening
      opening_priority: high
      opening_notes: public-facing cultural venue
  site_opening_strategy: headquarters_then_studio_then_gallery_then_branch
  site_plan_notes: multi-site cultural operation from early stage

property_tenant_bundle:
  source_mode: mixed
  property_binding_strategy: lease_then_selective_purchase
  tenant_binding_strategy: mixed
  planned_occupancy_relations:
    - site_ref: Storyworks HQ
      occupancy_mode: leased
      property_ref: property_lumen_o1_hq_01
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
    - site_ref: Storyworks Studio
      occupancy_mode: tenant
      property_ref: property_lumen_a1_studio_02
      tenant_unit_ref: tenant_unit_lumen_a1_studio_02_a
      mediation_path: system_real_estate_company
    - site_ref: Storyworks Public Gallery
      occupancy_mode: tenant
      property_ref: property_lumen_a2_gallery_03
      tenant_unit_ref: tenant_unit_lumen_a2_gallery_03_b
      mediation_path: system_real_estate_company
  real_estate_intermediary_ref: system_real_estate_company_lumen
  property_tenant_notes: real estate routed through system intermediary only

symbolic_profile_bundle:
  source_mode: mixed
  icon_asset_ref: TBD
  emblem_asset_ref: TBD
  brand_colors:
    - purple
    - gold
    - white
  symbolic_notes: expressive and high-identity creative brand

public_profile_bundle:
  source_mode: mixed
  public_tagline: Stories, art, and public culture in motion.
  public_description: A culture and arts company creating narrative works, digital art, exhibitions, and screenings.
  featured_categories:
    - culture
    - stories
    - digital_art
    - events
  public_visibility_state: public
  public_profile_notes: public-facing discovery profile is important

management_baseline_bundle:
  source_mode: mixed
  finance_tracking_enabled: true
  site_management_enabled: true
  product_management_enabled: true
  analytics_enabled: true
  evaluation_tracking_enabled: true
  listing_readiness_tracking_enabled: true
  asset_operation_tracking_enabled: true
  management_notes: event and portfolio tracking both required

asset_operation_bundle:
  source_mode: mixed
  asset_operation_enabled: true
  equity_investment_enabled: true
  real_estate_investment_enabled: true
  asset_operation_policy:
    equity_holding_allowed: true
    real_estate_holding_allowed: true
    direct_execution_allowed: false
    leverage_allowed: false
    strategic_control_investment_allowed: false
    passive_income_target_enabled: true
  securities_firm_ref: securities_firm_lumen_01
  real_estate_intermediary_ref: system_real_estate_company_lumen
  risk_posture: balanced
  income_source_mix:
    operating_income_ratio: 0.88
    dividend_income_ratio: 0.04
    rental_income_ratio: 0.03
    capital_gain_ratio: 0.05
  asset_operation_notes: asset operation enabled but creative output remains primary

evaluation_seed_bundle:
  source_mode: mixed
  evaluation_profile_code: culture_arts_seed_v1
  initial_evaluation_seed:
    legitimacy_score: 73
    activity_score: 40
    product_quality_score: 60
    compliance_score: 66
    visibility_score: 58
    growth_score: 50
    reputation_score: 52
    site_operation_score: 62
  current_evaluation_seed:
    legitimacy_score: 73
    activity_score: 40
    product_quality_score: 60
    compliance_score: 66
    visibility_score: 58
    growth_score: 50
    reputation_score: 52
    site_operation_score: 62
  evaluation_notes: culture visibility starts higher than average

listing_readiness_bundle:
  source_mode: mixed
  base_listing_eligibility: true
  blocked_listing_reason: null
  listing_readiness_state: early_preparation
  target_market_candidates:
    - growth_market
    - venture_market
  readiness_snapshot:
    operating_period_readiness: insufficient
    evaluation_score_readiness: developing
    activity_score_readiness: developing
    compliance_score_readiness: developing
    disclosure_score_readiness: insufficient
    optional_scale_readiness: insufficient
  missing_requirements:
    - operating period below threshold
    - disclosure baseline incomplete
    - scale threshold not met
  readiness_notes: culture company likely targets growth-first market path

validation_bundle:
  last_validation_run_at: null
  validation_state: not_run
  blocking_error_count: 0
  warning_count: 0
  info_count: 0
  validation_results: []
  passed_gate_stage: null

approval_bundle:
  approval_state: not_requested
  approval_requested_at: null
  approved_at: null
  rejected_at: null
  approved_by: null
  reviewer_notes: null
  approval_conditions: []

establish_bundle:
  establish_state: not_requested
  establish_requested_at: null
  established_at: null
  blocked_at: null
  establish_notes: null

audit_bundle:
  source_trace_summary: template + manual sample completion
  template_derivation_log:
    - culture_arts_company_default
  manual_override_log: []
  reviewer_action_log: []
  establish_action_log: []
