# ============================================================
# MILITARY INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: military-nation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  nation_draft_id: sample-military-001
  draft_code: SAMPLE_MILITARY_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  nation_template_code: military_nation_template
  zone_template_set_codes:
    - office_zone_template
    - mixed_use_zone_template
    - special_restricted_zone_template
  market_preset_code: state_guided_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected military starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref: TBD
  emblem_asset_ref: TBD
  national_color_palette: [deep_red, black, silver]
  map_color: deep_red
  symbolic_style_notes: high-discipline strategic identity

basic_identity_bundle:
  source_mode: mixed
  formal_name: Iron Horizon Defense Union
  short_name: Iron Horizon
  nation_type: defense_state
  nation_category: authority-structured
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A nation prioritizing defense readiness, logistics integrity, authority structure, and resilient continuity.
  public_profile_text: A disciplined strategic nation with strong logistical posture.

territory_bundle:
  source_mode: mixed
  territory_profile_code: strategic-corridor-region
  region_summary: controlled strategic regions linked by logistics corridors
  capital_city_code: horizon_capital
  sub_capital_city_code: horizon_logistics
  major_city_roles:
    - capital_city
    - logistics_core_city
    - defense_support_city
    - infrastructure_core_city
  city_role_bindings:
    capital_city: horizon_capital
    logistics_core_city: horizon_logistics
    defense_support_city: horizon_fort
    infrastructure_core_city: horizon_grid
  territory_notes: mobility and continuity are prioritized over open density

population_bundle:
  source_mode: mixed
  population_profile_code: disciplined-operational
  total_population_plan: 210000
  household_profile_summary: structured civic households with strong service and operational allocation
  workforce_profile_summary: logistics, infrastructure, order maintenance, and strategic operations
  population_composition:
    children_ratio: 0.17
    working_ratio: 0.68
    elderly_ratio: 0.15
    student_ratio: 0.13
    religious_affiliation_profile: decentralized_three_gods
    education_participation_profile: standard
  migration_posture: controlled
  social_density_posture: medium
  population_notes: stability and readiness take precedence over open immigration

currency_bundle:
  source_mode: mixed
  currency_code: IHD
  currency_name: Iron Horizon Denar
  currency_symbol: IHD
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: nation treasury and operational budgeting only; non-convertible

governance_bundle:
  source_mode: mixed
  governance_style: high_structure_authority_governance
  authority_model: central_command_with_administrative_distribution
  authority_seats:
    - seat_code: head_of_state
      seat_name: Supreme Steward
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: defense_administration
      seat_name: Minister of Defense
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: defense
    - seat_code: logistics_administration
      seat_name: Minister of Logistics
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: logistics
  authority_distribution_summary: central strategic command with structured ministries
  governance_notes: officially secular, but Day God symbolism influences ideas of order and duty

regime_bundle:
  source_mode: mixed
  company_regime_bundle: controlled_company_enablement_regime
  property_regime_bundle: structured_controlled_property_regime
  tax_regime_bundle: strategic_capacity_tax_regime
  banking_regime_bundle: enabled_basic_banking_regime
  securities_regime_bundle: limited_or_state_guided_listing_regime
  welfare_regime_bundle: moderate_structured_welfare_regime
  education_regime_bundle: moderate_structured_education_regime
  military_regime_bundle: strong_military_regime
  religion_authority_bundle: null
  operating_profile_bundle: high_readiness_profile
  regime_notes: defense continuity and logistics capacity are top priorities

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: controlled-strategic-zoning
  zone_template_refs:
    - office_zone_template
    - mixed_use_zone_template
    - special_restricted_zone_template
  zone_map_ref: sample_zone_map_horizon_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    office_zone:
      - software_company
      - education_company
      - investment_company
    special_restricted_zone:
      - system_limited_only
  allowed_site_type_matrix:
    office_zone:
      - headquarters
      - office
      - service_site
    special_restricted_zone:
      - allocated_use
      - service_site
      - office
  restriction_matrix:
    special_restricted_zone:
      - late_night_operation_allowed
  zoning_notes: restricted areas are explicit and policy-sensitive

market_bundle:
  source_mode: mixed
  market_preset_code: state_guided_market
  listing_system_style: state_guided_market
  market_tiers:
    - standard_market
    - special_public_market
  threshold_rules:
    minimum_operating_period: moderate
    minimum_evaluation_score: structured
    minimum_activity_score: moderate
    minimum_compliance_score: strict
    minimum_disclosure_score: structured
    strategic_alignment: required
  company_type_eligibility:
    - software_company
    - education_company
    - culture_arts_company
  market_review_notes: state-guided review with policy discretion

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: strategic-capital-core
  capital_required_facilities:
    - governance_center
    - defense_command_center
    - logistics_control_center
    - communications_center
  facility_function_refs:
    - emergency_response_center
    - reserve_coordination_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: resilience-first layout

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: strategic-resilience-v1
  infrastructure_palette:
    - road
    - rail
    - logistics_hub
    - communications
    - airport
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: topology continuity is treated as strategic

culture_bundle:
  source_mode: mixed
  priority_industries:
    - logistics
    - infrastructure
    - software
    - training
  culture_summary: disciplined, duty-oriented, continuity-focused social culture
  religion_summary: decentralized three-gods belief persists; Day God is culturally associated with order, labor, and civic duty
  value_tags:
    - order
    - resilience
    - duty
    - continuity
  three_gods_relation_summary: Day God symbolism is strongest in public rhetoric; religion remains culturally strong but not a formal state theology
  social_norm_notes: law, order, and continuity are morally emphasized
  culture_notes: ceremonies favor unity, duty, and remembrance

public_service_bundle:
  source_mode: mixed
  education_baseline: moderate
  health_baseline: standard
  safety_baseline: strong
  transport_baseline: strong
  welfare_baseline: moderate
  communications_baseline: strong
  service_notes: safety and resilience prioritized

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: unity-readiness-calendar
  national_holidays:
    - Unity Day
    - Continuity Memorial
  recurring_events:
    - logistics_drill_observance
    - resilience_ceremony
  market_holiday_interaction_profile: limited
  holiday_notes: holidays emphasize continuity, remembrance, and stability

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: strategic-alert-profile
  governance_alert_level: high
  market_alert_level: medium
  facility_alert_level: high
  incident_alert_level: high
  citizen_noise_posture: low
  notification_notes: continuity and incident signals surfaced aggressively

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

publication_bundle:
  publication_state: not_requested
  publication_requested_at: null
  published_at: null
  publication_notes: null

activation_bundle:
  activation_state: not_requested
  activation_requested_at: null
  activated_at: null
  activation_notes: null

audit_bundle:
  source_trace_summary: template + manual sample completion
  template_derivation_log:
    - military_nation_template
    - state_guided_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
