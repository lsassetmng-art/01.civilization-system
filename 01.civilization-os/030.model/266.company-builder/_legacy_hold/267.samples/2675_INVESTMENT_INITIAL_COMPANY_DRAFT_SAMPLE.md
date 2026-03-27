# ============================================================
# INVESTMENT INITIAL COMPANY DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-company-draft-sample
component: investment-company-sample

owner: Boss
prepared_by: Zero

draft_identity:
  company_draft_id: sample-investment-001
  draft_code: SAMPLE_INVESTMENT_COMPANY_001
  draft_status: draft
  builder_stage: company_draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  company_template_code: investment_company_default
  company_type: investment_company
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: investment operations starter company

company_core_bundle:
  source_mode: mixed
  company_name: Meridian Capital Strategies
  company_short_name: Capital Strategies
  company_type: investment_company
  company_category: finance
  founder_user_id: TBD
  company_summary: An investment company offering fund products and capital solicitation products under nation market rules.
  company_mission: Allocate capital efficiently and grow durable portfolio value.
  legal_structure_profile: investment_entity
  is_system_limited: false
  is_user_creatable: true
  is_listing_eligible_base: true
  company_notes: equity and real-estate operation are strategically relevant

nation_binding_bundle:
  source_mode: mixed
  home_nation_id: meridian_live
  home_nation_draft_ref: SAMPLE_COMMERCIAL_NATION_001
  applicable_company_regime: broad_company_enablement_regime
  applicable_property_regime: structured_transferable_property_regime
  applicable_tax_regime: moderate_business_tax_regime
  applicable_listing_style: multi_tier_market
  applicable_zone_ruleset: commercial-core-zoning
  nation_binding_notes: commercial nation with enabled banking and securities posture

product_scope_bundle:
  source_mode: mixed
  scope_profile_code: investment_scope_default
  allowed_sellable_product_types:
    - fund_product
    - investment_offering
    - capital_solicitation_product
  disallowed_product_types: []
  creatable_product_types:
    - fund_product
    - investment_offering
    - capital_solicitation_product
  distribution_capabilities:
    - self_sale
  publishing_capabilities:
    - marketplace_listing
  event_operation_capabilities: []
  rights_handling_capabilities:
    - seller_role
    - structured_financial_offering_role
  scope_notes: financial products only within nation-allowed scope

site_plan_bundle:
  source_mode: mixed
  headquarters_plan:
    site_type: headquarters
    site_name: Capital Strategies HQ
    zone_map_ref: sample_zone_map_meridian_v1
    zone_cell_ref: O1
    public_visibility: limited
    site_role_summary: administrative_core
    opening_priority: highest
    opening_notes: investment administration and strategy center
  branch_plans:
    - site_type: branch
      site_name: Capital Strategies Branch
      zone_map_ref: sample_zone_map_meridian_v1
      zone_cell_ref: O1
      public_visibility: limited
      site_role_summary: regional_support
      opening_priority: medium
      opening_notes: secondary office after expansion
  additional_site_plans:
    - site_type: office
      site_name: Meridian Investor Office
      zone_map_ref: sample_zone_map_meridian_v1
      zone_cell_ref: O1
      public_visibility: limited
      site_role_summary: client_and_fund_support
      opening_priority: high
      opening_notes: dedicated office for operations
  site_opening_strategy: headquarters_then_investor_office_then_branch
  site_plan_notes: office-heavy rather than storefront-heavy

property_tenant_bundle:
  source_mode: mixed
  property_binding_strategy: lease_first_then_selective_acquisition
  tenant_binding_strategy: optional
  planned_occupancy_relations:
    - site_ref: Capital Strategies HQ
      occupancy_mode: leased
      property_ref: property_meridian_o1_finance_01
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
  real_estate_intermediary_ref: system_real_estate_company_meridian
  property_tenant_notes: real estate execution routed through intermediary

symbolic_profile_bundle:
  source_mode: mixed
  icon_asset_ref: TBD
  emblem_asset_ref: TBD
  brand_colors:
    - navy
    - silver
    - white
  symbolic_notes: disciplined financial identity

public_profile_bundle:
  source_mode: mixed
  public_tagline: Capital allocation with structure and discipline.
  public_description: An investment company offering structured fund and capital products inside a regulated national market framework.
  featured_categories:
    - investment
    - fund_products
    - capital
  public_visibility_state: public
  public_profile_notes: profile emphasizes trust and structure

management_baseline_bundle:
  source_mode: mixed
  finance_tracking_enabled: true
  site_management_enabled: true
  product_management_enabled: true
  analytics_enabled: true
  evaluation_tracking_enabled: true
  listing_readiness_tracking_enabled: true
  asset_operation_tracking_enabled: true
  management_notes: asset and compliance tracking are critical

asset_operation_bundle:
  source_mode: mixed
  asset_operation_enabled: true
  equity_investment_enabled: true
  real_estate_investment_enabled: true
  asset_operation_policy:
    equity_holding_allowed: true
    real_estate_holding_allowed: true
    direct_execution_allowed: false
    leverage_allowed: true
    strategic_control_investment_allowed: true
    passive_income_target_enabled: true
  securities_firm_ref: securities_firm_meridian_01
  real_estate_intermediary_ref: system_real_estate_company_meridian
  risk_posture: strategic
  income_source_mix:
    operating_income_ratio: 0.55
    dividend_income_ratio: 0.15
    rental_income_ratio: 0.10
    capital_gain_ratio: 0.20
  asset_operation_notes: securities intermediary mandatory for equity execution

evaluation_seed_bundle:
  source_mode: mixed
  evaluation_profile_code: investment_seed_v1
  initial_evaluation_seed:
    legitimacy_score: 76
    activity_score: 36
    product_quality_score: 55
    compliance_score: 72
    visibility_score: 42
    growth_score: 48
    reputation_score: 52
    site_operation_score: 56
  current_evaluation_seed:
    legitimacy_score: 76
    activity_score: 36
    product_quality_score: 55
    compliance_score: 72
    visibility_score: 42
    growth_score: 48
    reputation_score: 52
    site_operation_score: 56
  evaluation_notes: compliance and legitimacy start comparatively strong

listing_readiness_bundle:
  source_mode: mixed
  base_listing_eligibility: true
  blocked_listing_reason: null
  listing_readiness_state: early_preparation
  target_market_candidates:
    - standard_market
    - growth_market
    - prime_market
  readiness_snapshot:
    operating_period_readiness: insufficient
    evaluation_score_readiness: developing
    activity_score_readiness: developing
    compliance_score_readiness: sufficient
    disclosure_score_readiness: developing
    optional_scale_readiness: insufficient
  missing_requirements:
    - operating period below threshold
    - disclosure maturity incomplete
    - scale threshold not met
  readiness_notes: standard market likely earliest feasible route

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
    - investment_company_default
  manual_override_log: []
  reviewer_action_log: []
  establish_action_log: []
