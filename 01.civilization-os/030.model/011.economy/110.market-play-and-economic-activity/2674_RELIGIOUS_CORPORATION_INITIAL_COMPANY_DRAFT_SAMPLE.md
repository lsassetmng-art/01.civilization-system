# ============================================================
# RELIGIOUS CORPORATION INITIAL COMPANY DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-company-draft-sample
component: religious-corporation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  company_draft_id: sample-religious-001
  draft_code: SAMPLE_RELIGIOUS_CORPORATION_001
  draft_status: draft
  builder_stage: company_draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  company_template_code: religious_corporation_default
  company_type: religious_corporation
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: doctrine and ritual operations entity

company_core_bundle:
  source_mode: mixed
  company_name: Dawn Covenant Temple Society
  company_short_name: Covenant Temple
  company_type: religious_corporation
  company_category: religion
  founder_user_id: TBD
  company_summary: A religious corporation operating doctrine distribution, ritual activity, and donation programs.
  company_mission: Sustain faith, ritual continuity, and sacred community support.
  legal_structure_profile: special_religious_entity
  is_system_limited: false
  is_user_creatable: true
  is_listing_eligible_base: false
  company_notes: structurally non-listable by default

nation_binding_bundle:
  source_mode: mixed
  home_nation_id: sancta_live
  home_nation_draft_ref: SAMPLE_RELIGION_NATION_001
  applicable_company_regime: restricted_company_enablement_regime
  applicable_property_regime: structured_property_regime
  applicable_tax_regime: moderate_or_donation_supported_tax_regime
  applicable_listing_style: strict_public_market_or_disabled
  applicable_zone_ruleset: sacred-zoning
  nation_binding_notes: religion-centered nation with temple-compatible zoning

product_scope_bundle:
  source_mode: mixed
  scope_profile_code: religious_scope_default
  allowed_sellable_product_types:
    - doctrine_text
    - ritual_material
    - recruitment_program
    - donation_program
    - religious_event_access
  disallowed_product_types: []
  creatable_product_types:
    - doctrine_text
    - ritual_material
    - recruitment_program
    - donation_program
    - religious_event_access
  distribution_capabilities:
    - self_sale
  publishing_capabilities:
    - marketplace_listing
  event_operation_capabilities:
    - religious_event_operation
  rights_handling_capabilities:
    - rightsholder
    - seller_role
  scope_notes: doctrine and ritual outputs are central

site_plan_bundle:
  source_mode: mixed
  headquarters_plan:
    site_type: headquarters
    site_name: Covenant Temple Administration
    zone_map_ref: sample_zone_map_sancta_v1
    zone_cell_ref: O1
    public_visibility: limited
    site_role_summary: administrative_core
    opening_priority: medium
    opening_notes: secondary to temple core
  branch_plans:
    - site_type: branch
      site_name: Covenant Regional Branch
      zone_map_ref: sample_zone_map_sancta_v1
      zone_cell_ref: M1
      public_visibility: limited
      site_role_summary: community_support
      opening_priority: low
      opening_notes: later expansion branch
  additional_site_plans:
    - site_type: temple_site
      site_name: Grand Dawn Temple
      zone_map_ref: sample_zone_map_sancta_v1
      zone_cell_ref: R1
      public_visibility: public
      site_role_summary: doctrine_and_ritual
      opening_priority: highest
      opening_notes: primary sacred center
    - site_type: service_site
      site_name: Ritual Materials House
      zone_map_ref: sample_zone_map_sancta_v1
      zone_cell_ref: R2
      public_visibility: limited
      site_role_summary: support_service
      opening_priority: high
      opening_notes: materials and support distribution
  site_opening_strategy: temple_first_then_admin_then_support_then_branch
  site_plan_notes: temple core is first-class

property_tenant_bundle:
  source_mode: mixed
  property_binding_strategy: mixed
  tenant_binding_strategy: supported
  planned_occupancy_relations:
    - site_ref: Grand Dawn Temple
      occupancy_mode: owned
      property_ref: property_sancta_r1_temple_01
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
    - site_ref: Covenant Temple Administration
      occupancy_mode: leased
      property_ref: property_sancta_o1_admin_02
      tenant_unit_ref: null
      mediation_path: system_real_estate_company
  real_estate_intermediary_ref: system_real_estate_company_sancta
  property_tenant_notes: sacred property and admin property both mediated through system real estate company

symbolic_profile_bundle:
  source_mode: mixed
  icon_asset_ref: TBD
  emblem_asset_ref: TBD
  brand_colors:
    - white
    - gold
    - dark_blue
  symbolic_notes: sacred and tradition-centered symbolic identity

public_profile_bundle:
  source_mode: mixed
  public_tagline: Doctrine, ritual, and community in continuity.
  public_description: A religious corporation supporting doctrine, ritual life, sacred events, and community continuity.
  featured_categories:
    - religion
    - doctrine
    - ritual
    - community
  public_visibility_state: public
  public_profile_notes: public visibility important for believers and events

management_baseline_bundle:
  source_mode: mixed
  finance_tracking_enabled: true
  site_management_enabled: true
  product_management_enabled: true
  analytics_enabled: true
  evaluation_tracking_enabled: true
  listing_readiness_tracking_enabled: true
  asset_operation_tracking_enabled: true
  management_notes: listing tracking kept for explicit non-applicable handling

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
  securities_firm_ref: securities_firm_sancta_01
  real_estate_intermediary_ref: system_real_estate_company_sancta
  risk_posture: conservative
  income_source_mix:
    operating_income_ratio: 0.75
    dividend_income_ratio: 0.07
    rental_income_ratio: 0.08
    capital_gain_ratio: 0.10
  asset_operation_notes: non-listable entity may still hold assets via intermediaries

evaluation_seed_bundle:
  source_mode: mixed
  evaluation_profile_code: religious_seed_v1
  initial_evaluation_seed:
    legitimacy_score: 78
    activity_score: 34
    product_quality_score: 52
    compliance_score: 72
    visibility_score: 46
    growth_score: 30
    reputation_score: 58
    site_operation_score: 64
  current_evaluation_seed:
    legitimacy_score: 78
    activity_score: 34
    product_quality_score: 52
    compliance_score: 72
    visibility_score: 46
    growth_score: 30
    reputation_score: 58
    site_operation_score: 64
  evaluation_notes: stronger legitimacy and site coherence than growth expectation

listing_readiness_bundle:
  source_mode: mixed
  base_listing_eligibility: false
  blocked_listing_reason: company type is structurally non-listable
  listing_readiness_state: not_applicable
  target_market_candidates: []
  readiness_snapshot:
    operating_period_readiness: insufficient
    evaluation_score_readiness: developing
    activity_score_readiness: developing
    compliance_score_readiness: sufficient
    disclosure_score_readiness: insufficient
    optional_scale_readiness: insufficient
  missing_requirements:
    - listing not applicable for this company type
  readiness_notes: tracked explicitly as non-applicable, not silently omitted

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
    - religious_corporation_default
  manual_override_log: []
  reviewer_action_log: []
  establish_action_log: []
