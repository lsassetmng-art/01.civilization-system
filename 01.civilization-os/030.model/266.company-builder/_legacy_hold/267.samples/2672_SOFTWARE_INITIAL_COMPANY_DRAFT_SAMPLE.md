# ============================================================
# SOFTWARE INITIAL COMPANY DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-company-draft-sample
component: software-company-sample

owner: Boss
prepared_by: Zero

draft_identity:
  company_draft_id: sample-software-001
  draft_code: SAMPLE_SOFTWARE_COMPANY_001
  draft_status: draft
  builder_stage: company_draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  company_template_code: software_company_default
  company_type: software_company
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: software app builder starter company

company_core_bundle:
  source_mode: mixed
  company_name: Concordia Systems Lab
  company_short_name: Systems Lab
  company_type: software_company
  company_category: software
  founder_user_id: TBD
  company_summary: A software company building extensions, linked apps, and standalone packages.
  company_mission: Expand civilization productivity through high-value software products.
  legal_structure_profile: standard_for_profit_company
  is_system_limited: false
  is_user_creatable: true
  is_listing_eligible_base: true
  company_notes: office-centered software business

nation_binding_bundle:
  source_mode: mixed
  home_nation_id: concordia_live
  home_nation_draft_ref: SAMPLE_HYBRID_NATION_001
  applicable_company_regime: broad_balanced_company_regime
  applicable_property_regime: structured_flexible_property_regime
  applicable_tax_regime: moderate_balanced_tax_regime
  applicable_listing_style: hybrid_market
  applicable_zone_ruleset: hybrid-balanced-zoning
  nation_binding_notes: hybrid nation allows office and mixed-use expansion

product_scope_bundle:
  source_mode: mixed
  scope_profile_code: software_scope_default
  allowed_sellable_product_types:
    - businessos_app_full_extension
    - businessos_app_db_linked
    - standalone_app_package
  disallowed_product_types: []
  creatable_product_types:
    - businessos_app_full_extension
    - businessos_app_db_linked
    - standalone_app_package
  distribution_capabilities:
    - self_sale
    - multi_retail_distribution
  publishing_capabilities:
    - marketplace_listing
  event_operation_capabilities: []
  rights_handling_capabilities:
    - rightsholder
    - seller_role
    - distribution_right_handling
  scope_notes: app products are first-class software outputs

site_plan_bundle:
  source_mode: mixed
  headquarters_plan:
    site_type: headquarters
    site_name: Systems Lab HQ
    zone_map_ref: sample_zone_map_concordia_v1
    zone_cell_ref: O1
    public_visibility: limited
    site_role_summary: administrative_core
    opening_priority: highest
    opening_notes: development and management center
  branch_plans:
    - site_type: branch
      site_name: Systems Lab East Branch
      zone_map_ref: sample_zone_map_concordia_v1
      zone_cell_ref: M1
      public_visibility: limited
      site_role_summary: support_and_expansion
      opening_priority: medium
      opening_notes: support branch after growth
  additional_site_plans:
    - site_type: office
      site_name: Systems Development Office
      zone_map_ref: sample_zone_map_concordia_v1
      zone_cell_ref: O1
      public_visibility: limited
      site_role_summary: production_support
      opening_priority: high
      opening_notes: optional additional office capacity
  site_opening_strategy: headquarters_first_then_office_then_branch
  site_plan_notes: no retail storefront needed at launch

property_tenant_bundle:
  source_mode: mixed
  property_binding_strategy: lease_office_space
  tenant_binding_strategy: optional
  planned_occupancy_relations:
    - site_ref: Systems Lab HQ
      occupancy_mode: leased
      property_ref: property_concordia_o1_hq_03
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
  real_estate_intermediary_ref: system_real_estate_company_concordia
  property_tenant_notes: office leasing first, ownership later if growth stabilizes

symbolic_profile_bundle:
  source_mode: mixed
  icon_asset_ref: TBD
  emblem_asset_ref: TBD
  brand_colors:
    - teal
    - black
    - white
  symbolic_notes: modern technical identity

public_profile_bundle:
  source_mode: mixed
  public_tagline: Software that expands civilization capability.
  public_description: A software company developing BusinessOS extensions, linked apps, and standalone packages.
  featured_categories:
    - software
    - productivity
    - applications
  public_visibility_state: public
  public_profile_notes: public profile optimized for discovery and trust

management_baseline_bundle:
  source_mode: mixed
  finance_tracking_enabled: true
  site_management_enabled: true
  product_management_enabled: true
  analytics_enabled: true
  evaluation_tracking_enabled: true
  listing_readiness_tracking_enabled: true
  asset_operation_tracking_enabled: true
  management_notes: full management and analytics enabled

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
    strategic_control_investment_allowed: true
    passive_income_target_enabled: true
  securities_firm_ref: securities_firm_concordia_01
  real_estate_intermediary_ref: system_real_estate_company_concordia
  risk_posture: growth
  income_source_mix:
    operating_income_ratio: 0.90
    dividend_income_ratio: 0.03
    rental_income_ratio: 0.02
    capital_gain_ratio: 0.05
  asset_operation_notes: strategic equity holdings allowed, direct execution prohibited

evaluation_seed_bundle:
  source_mode: mixed
  evaluation_profile_code: software_seed_v1
  initial_evaluation_seed:
    legitimacy_score: 74
    activity_score: 38
    product_quality_score: 58
    compliance_score: 70
    visibility_score: 48
    growth_score: 52
    reputation_score: 50
    site_operation_score: 58
  current_evaluation_seed:
    legitimacy_score: 74
    activity_score: 38
    product_quality_score: 58
    compliance_score: 70
    visibility_score: 48
    growth_score: 52
    reputation_score: 50
    site_operation_score: 58
  evaluation_notes: strong growth potential, early visibility

listing_readiness_bundle:
  source_mode: mixed
  base_listing_eligibility: true
  blocked_listing_reason: null
  listing_readiness_state: early_preparation
  target_market_candidates:
    - growth_market
    - venture_market
    - standard_market
  readiness_snapshot:
    operating_period_readiness: insufficient
    evaluation_score_readiness: developing
    activity_score_readiness: developing
    compliance_score_readiness: sufficient
    disclosure_score_readiness: insufficient
    optional_scale_readiness: insufficient
  missing_requirements:
    - operating period below threshold
    - disclosure baseline incomplete
    - scale threshold not met
  readiness_notes: growth-market path is most realistic

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
    - software_company_default
  manual_override_log: []
  reviewer_action_log: []
  establish_action_log: []
