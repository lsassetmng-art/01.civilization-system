# ============================================================
# COMMERCIAL INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: commercial-nation-sample

owner: Boss
prepared_by: Zero


draft_identity:
  nation_draft_id: sample-commercial-001
  draft_code: SAMPLE_COMMERCIAL_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at_pending: true
  updated_at_pending: true

template_binding:
  nation_template_code: commercial_nation_template
  zone_template_set_codes:
    - commercial_zone_template
    - office_zone_template
    - mixed_use_zone_template
    - arts_zone_template
  market_preset_code: multi_tier_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected commercial starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref_pending: true
  emblem_asset_ref_pending: true
  national_color_palette:
    - gold
    - deep_blue
    - white
  map_color: bright_blue
  symbolic_style_notes: market-facing modern civic identity

basic_identity_bundle:
  source_mode: mixed
  formal_name: Meridian Trade Commonwealth
  short_name: Meridian
  nation_type: commercial_state
  nation_category: growth-oriented
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A trade-centered nation emphasizing company activity, retail growth, finance, and open civic commerce.
  public_profile_text: A visible and growth-oriented commercial nation.

territory_bundle:
  source_mode: mixed
  territory_profile_code: urban_trade_corridor
  region_summary: dense multi-city trade corridor with central capital and logistics belt
  capital_city_code: meridian_capital
  sub_capital_city_code: meridian_port
  major_city_roles:
    - capital_city
    - finance_core_city
    - logistics_core_city
    - commercial_core_city
    - culture_support_city
  city_role_bindings:
    capital_city: meridian_capital
    finance_core_city: meridian_finance
    logistics_core_city: meridian_port
    commercial_core_city: meridian_exchange
    culture_support_city: meridian_gallery
  territory_notes: optimized for commerce and transport

population_bundle:
  source_mode: mixed
  population_profile_code: high-activity-urban
  total_population_plan: 320000
  household_profile_summary: compact urban households with business and service concentration
  workforce_profile_summary: high service-sector and knowledge-work participation
  population_composition:
    children_ratio: 0.18
    working_ratio: 0.67
    elderly_ratio: 0.15
    student_ratio: 0.16
    religious_affiliation_profile: decentralized_three_gods
    education_participation_profile: standard_to_high
  migration_posture: open_for_growth
  social_density_posture: medium_to_high
  population_notes: immigration and company activity are actively supported

currency_bundle:
  source_mode: mixed
  currency_code: MTC
  currency_name: Meridian Trade Crown
  currency_symbol: MTC
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: national currency only, non-convertible to real money and CIV_CASH

governance_bundle:
  source_mode: mixed
  governance_style: market_supportive_civil_governance
  authority_model: distributed_economic_administration
  authority_seats:
    - seat_code: head_of_state
      seat_name: First Steward
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: commerce_administration
      seat_name: Minister of Commerce
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: economy
    - seat_code: finance_administration
      seat_name: Minister of Treasury
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: finance
    - seat_code: infrastructure_administration
      seat_name: Minister of Infrastructure
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: infrastructure
  authority_distribution_summary: distributed civil economic governance
  governance_notes: officially secular, religion culturally influential but not state-governing

regime_bundle:
  source_mode: mixed
  company_regime_bundle: broad_company_enablement_regime
  property_regime_bundle: structured_transferable_property_regime
  tax_regime_bundle: moderate_business_tax_regime
  banking_regime_bundle: enabled_structured_banking_regime
  securities_regime_bundle: enabled_multi_tier_listing_regime
  welfare_regime_bundle: moderate_welfare_regime
  education_regime_bundle: standard_education_regime
  military_regime_bundle: minimal_to_moderate_military_regime
  religion_authority_bundle: null
  operating_profile_bundle: growth_friendly_high_activity_profile
  regime_notes: finance and public market enabled

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: commercial-core-zoning
  zone_template_refs:
    - commercial_zone_template
    - office_zone_template
    - mixed_use_zone_template
    - arts_zone_template
  zone_map_ref: sample_zone_map_meridian_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    commercial_zone:
      - retail_company
      - software_company
      - game_company
      - culture_arts_company
    office_zone:
      - investment_company
      - software_company
      - education_company
      - architectural_design_company
      - interior_company
    mixed_use_zone:
      - retail_company
      - education_company
      - culture_arts_company
  allowed_site_type_matrix:
    commercial_zone:
      - retail_store
      - office
      - service_site
    office_zone:
      - headquarters
      - branch
      - office
    mixed_use_zone:
      - office
      - retail_store
      - gallery_site
  restriction_matrix:
    commercial_zone:
      - public_open_allowed
      - high_traffic_event_allowed
    arts_zone:
      - exhibition_event_allowed
  zoning_notes: opening by compatibility check only

market_bundle:
  source_mode: mixed
  market_preset_code: multi_tier_market
  listing_system_style: multi_tier_market
  market_tiers:
    - prime_market
    - standard_market
    - growth_market
    - venture_market
  threshold_rules:
    minimum_operating_period: moderate
    minimum_evaluation_score: moderate
    minimum_activity_score: moderate
    minimum_compliance_score: structured
    minimum_disclosure_score: structured
  company_type_eligibility:
    - retail_company
    - investment_company
    - education_company
    - game_company
    - software_company
    - culture_arts_company
  market_review_notes: broad but tiered public market

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: commercial-capital-core
  capital_required_facilities:
    - governance_center
    - financial_center
    - marketplace_hub
    - communications_center
  facility_function_refs:
    - treasury_office
    - public_market_hall
    - civic_service_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: exact placement deferred

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: trade-corridor-v1
  infrastructure_palette:
    - road
    - rail
    - logistics_hub
    - communications
    - port
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: logistics priority high

culture_bundle:
  source_mode: mixed
  priority_industries:
    - retail
    - finance
    - software
    - game
    - culture
  culture_summary: open commercial culture with visible public activity
  religion_summary: officially secular governance with decentralized three-gods belief in daily life
  value_tags:
    - commerce
    - openness
    - growth
    - mobility
  three_gods_relation_summary: Day God symbolism is respected in labor, trade, and civic order, but no state religion is declared
  social_norm_notes: religion influences festivals and ethics more than formal law
  culture_notes: commercial holidays and trade festivals are common

public_service_bundle:
  source_mode: mixed
  education_baseline: standard
  health_baseline: standard
  safety_baseline: stable
  transport_baseline: strong
  welfare_baseline: moderate
  communications_baseline: strong
  service_notes: public service supports market activity

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: trade-festival-calendar
  national_holidays:
    - Founding Day
    - Grand Market Week
  recurring_events:
    - seasonal_commerce_festival
    - innovation_fair
  market_holiday_interaction_profile: strong_market_event_linkage
  holiday_notes: holiday system supports commerce and visibility

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: commercial-alert-profile
  governance_alert_level: medium
  market_alert_level: high
  facility_alert_level: medium
  incident_alert_level: medium
  citizen_noise_posture: moderate
  notification_notes: market activity surfaced prominently

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
    - commercial_nation_template
    - multi_tier_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
