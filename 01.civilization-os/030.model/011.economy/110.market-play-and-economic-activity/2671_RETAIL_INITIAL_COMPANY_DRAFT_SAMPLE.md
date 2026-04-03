# ============================================================
# RETAIL INITIAL COMPANY DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-company-draft-sample
component: retail-company-sample

owner: Boss
prepared_by: Zero

draft_identity:
  company_draft_id: sample-retail-001
  draft_code: SAMPLE_RETAIL_COMPANY_001
  draft_status: draft
  builder_stage: company_draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  company_template_code: retail_company_default
  company_type: retail_company
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: public-facing retail starter company

company_core_bundle:
  source_mode: mixed
  company_name: Meridian Public Retail Co.
  company_short_name: Meridian Retail
  company_type: retail_company
  company_category: commerce
  founder_user_id: TBD
  company_summary: A retail company specializing in sourced portfolio sales inside a commercial nation.
  company_mission: Make curated digital goods widely accessible through public-facing retail operations.
  legal_structure_profile: standard_for_profit_company
  is_system_limited: false
  is_user_creatable: true
  is_listing_eligible_base: true
  company_notes: starts with single flagship store plus future branch plan

nation_binding_bundle:
  source_mode: mixed
  home_nation_id: meridian_live
  home_nation_draft_ref: SAMPLE_COMMERCIAL_NATION_001
  applicable_company_regime: broad_company_enablement_regime
  applicable_property_regime: structured_transferable_property_regime
  applicable_tax_regime: moderate_business_tax_regime
  applicable_listing_style: multi_tier_market
  applicable_zone_ruleset: commercial-core-zoning
  nation_binding_notes: aligned with commercial nation opening rules

product_scope_bundle:
  source_mode: mixed
  scope_profile_code: retail_scope_default
  allowed_sellable_product_types:
    - sourced_portfolio_product
  disallowed_product_types: []
  creatable_product_types: []
  distribution_capabilities:
    - retail_resale
    - retail_agency_sale
    - multi_retail_distribution
  publishing_capabilities:
    - marketplace_listing
  event_operation_capabilities: []
  rights_handling_capabilities:
    - seller_role
    - distribution_right_handling
  scope_notes: retailer is not origin creator by default

site_plan_bundle:
  source_mode: mixed
  headquarters_plan:
    site_type: headquarters
    site_name: Meridian Retail HQ
    zone_map_ref: sample_zone_map_meridian_v1
    zone_cell_ref: O1
    public_visibility: limited
    site_role_summary: administrative_core
    opening_priority: highest
    opening_notes: headquarters and coordination office
  branch_plans:
    - site_type: branch
      site_name: Meridian Retail East Branch
      zone_map_ref: sample_zone_map_meridian_v1
      zone_cell_ref: M1
      public_visibility: limited
      site_role_summary: regional_support
      opening_priority: medium
      opening_notes: future branch after first growth cycle
  additional_site_plans:
    - site_type: retail_store
      site_name: Meridian Flagship Store
      zone_map_ref: sample_zone_map_meridian_v1
      zone_cell_ref: C1
      public_visibility: public
      site_role_summary: customer_facing_sales
      opening_priority: highest
      opening_notes: first public-facing sales site
  site_opening_strategy: headquarters_first_then_flagship_store_then_branch
  site_plan_notes: branch support intentionally included

property_tenant_bundle:
  source_mode: mixed
  property_binding_strategy: lease_first_then_selective_purchase
  tenant_binding_strategy: tenant_unit_supported
  planned_occupancy_relations:
    - site_ref: Meridian Retail HQ
      occupancy_mode: leased
      property_ref: property_meridian_o1_hq_01
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
    - site_ref: Meridian Flagship Store
      occupancy_mode: tenant
      property_ref: property_meridian_c1_store_02
      tenant_unit_ref: tenant_unit_meridian_c1_store_02_a
      mediation_path: system_real_estate_company
  real_estate_intermediary_ref: system_real_estate_company_meridian
  property_tenant_notes: all real estate transactions mediated through system intermediary

symbolic_profile_bundle:
  source_mode: mixed
  icon_asset_ref: TBD
  emblem_asset_ref: TBD
  brand_colors:
    - bright_blue
    - white
    - gold
  symbolic_notes: visible and accessible public retail identity

public_profile_bundle:
  source_mode: mixed
  public_tagline: Curated goods for everyday civilization life.
  public_description: A public-facing retail company distributing sourced portfolio products through curated digital storefronts.
  featured_categories:
    - retail
    - curated_goods
    - public_store
  public_visibility_state: public
  public_profile_notes: designed for public discovery

management_baseline_bundle:
  source_mode: mixed
  finance_tracking_enabled: true
  site_management_enabled: true
  product_management_enabled: true
  analytics_enabled: true
  evaluation_tracking_enabled: true
  listing_readiness_tracking_enabled: true
  asset_operation_tracking_enabled: true
  management_notes: full retail management stack enabled

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
  securities_firm_ref: securities_firm_meridian_01
  real_estate_intermediary_ref: system_real_estate_company_meridian
  risk_posture: balanced
  income_source_mix:
    operating_income_ratio: 0.85
    dividend_income_ratio: 0.05
    rental_income_ratio: 0.05
    capital_gain_ratio: 0.05
  asset_operation_notes: direct equity execution prohibited; intermediary route required

evaluation_seed_bundle:
  source_mode: mixed
  evaluation_profile_code: retail_seed_v1
  initial_evaluation_seed:
    legitimacy_score: 72
    activity_score: 35
    product_quality_score: 50
    compliance_score: 68
    visibility_score: 55
    growth_score: 40
    reputation_score: 50
    site_operation_score: 60
  current_evaluation_seed:
    legitimacy_score: 72
    activity_score: 35
    product_quality_score: 50
    compliance_score: 68
    visibility_score: 55
    growth_score: 40
    reputation_score: 50
    site_operation_score: 60
  evaluation_notes: initial evaluation generated at draft-to-establish preparation stage

listing_readiness_bundle:
  source_mode: mixed
  base_listing_eligibility: true
  blocked_listing_reason: null
  listing_readiness_state: early_preparation
  target_market_candidates:
    - growth_market
    - standard_market
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
  readiness_notes: listable in principle but far from application

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
    - retail_company_default
  manual_override_log: []
  reviewer_action_log: []
  establish_action_log: []
