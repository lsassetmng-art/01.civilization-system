# ============================================================
# CULTURE INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: culture-nation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  nation_draft_id: sample-culture-001
  draft_code: SAMPLE_CULTURE_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at_pending: true
  updated_at_pending: true

template_binding:
  nation_template_code: culture_nation_template
  zone_template_set_codes:
    - arts_zone_template
    - mixed_use_zone_template
    - commercial_zone_template
  market_preset_code: growth_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected culture starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref_pending: true
  emblem_asset_ref_pending: true
  national_color_palette: [purple, gold, white]
  map_color: vivid_purple
  symbolic_style_notes: expressive high-identity national tone

basic_identity_bundle:
  source_mode: mixed
  formal_name: Lumen Cultural Federation
  short_name: Lumen
  nation_type: culture_state
  nation_category: creative-prestige-oriented
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A culture-centered nation optimized for creative production, exhibition, screening, and public identity.
  public_profile_text: A high-visibility nation built on story, expression, and civic culture.

territory_bundle:
  source_mode: mixed
  territory_profile_code: event-district-region
  region_summary: concentrated cultural districts linked by public event corridors
  capital_city_code: lumen_capital
  sub_capital_city_code: lumen_stage
  major_city_roles:
    - capital_city
    - culture_core_city
    - exhibition_city
    - screening_city
    - education_support_city
  city_role_bindings:
    capital_city: lumen_capital
    culture_core_city: lumen_gallery
    exhibition_city: lumen_expo
    screening_city: lumen_stage
    education_support_city: lumen_academy
  territory_notes: optimized for public event flow and cultural districts

population_bundle:
  source_mode: mixed
  population_profile_code: creative-event-active
  total_population_plan: 230000
  household_profile_summary: expressive urban households with strong public event participation
  workforce_profile_summary: creators, event staff, cultural operators, and service support
  population_composition:
    children_ratio: 0.18
    working_ratio: 0.65
    elderly_ratio: 0.17
    student_ratio: 0.17
    religious_affiliation_profile: decentralized_three_gods
    education_participation_profile: standard_to_high
  migration_posture: selectively_open
  social_density_posture: medium_to_high
  population_notes: public identity and cultural participation are strong

currency_bundle:
  source_mode: mixed
  currency_code: LCF
  currency_name: Lumen Cultural Florin
  currency_symbol: LCF
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: national cultural policy currency, not convertible

governance_bundle:
  source_mode: mixed
  governance_style: cultural_development_governance
  authority_model: distributed_cultural_and_civic_model
  authority_seats:
    - seat_code: head_of_state
      seat_name: Civic Curator
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: culture_administration
      seat_name: Minister of Culture
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: culture
    - seat_code: event_administration
      seat_name: Minister of Public Events
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: events
  authority_distribution_summary: distributed cultural civic administration
  governance_notes: secular government with visible mythic and symbolic culture

regime_bundle:
  source_mode: mixed
  company_regime_bundle: creative_company_enablement_regime
  property_regime_bundle: open_creative_property_regime
  tax_regime_bundle: moderate_cultural_activity_tax_regime
  banking_regime_bundle: optional_basic_banking_regime
  securities_regime_bundle: optional_growth_listing_regime
  welfare_regime_bundle: moderate_welfare_regime
  education_regime_bundle: moderate_creative_education_regime
  military_regime_bundle: minimal_military_regime
  religion_authority_bundle: null
  operating_profile_bundle: public_event_visibility_profile
  regime_notes: culture and event support are national policy priorities

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: culture-core-zoning
  zone_template_refs:
    - arts_zone_template
    - mixed_use_zone_template
    - commercial_zone_template
  zone_map_ref: sample_zone_map_lumen_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    arts_zone:
      - culture_arts_company
      - game_company
      - software_company
    mixed_use_zone:
      - culture_arts_company
      - retail_company
      - education_company
  allowed_site_type_matrix:
    arts_zone:
      - gallery_site
      - studio
      - service_site
    mixed_use_zone:
      - gallery_site
      - retail_store
      - office
  restriction_matrix:
    arts_zone:
      - exhibition_event_allowed
      - screening_event_allowed
      - high_traffic_event_allowed
  zoning_notes: event-friendly public cultural zoning

market_bundle:
  source_mode: mixed
  market_preset_code: growth_market
  listing_system_style: growth_market
  market_tiers:
    - growth_market
    - venture_market
  threshold_rules:
    minimum_operating_period: moderate
    minimum_evaluation_score: moderate
    minimum_activity_score: moderate
    minimum_compliance_score: moderate
    minimum_disclosure_score: moderate
  company_type_eligibility:
    - culture_arts_company
    - software_company
    - game_company
    - education_company
  market_review_notes: growth-friendly creative listing environment

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: culture-capital-core
  capital_required_facilities:
    - governance_center
    - national_gallery_complex
    - central_event_venue
    - communications_center
  facility_function_refs:
    - screening_hall
    - exhibition_center
    - creative_residency_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: culture venues prioritized

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: event-connectivity-v1
  infrastructure_palette:
    - road
    - rail
    - communications
    - logistics_hub
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: public event access and communications prioritized

culture_bundle:
  source_mode: mixed
  priority_industries:
    - literature
    - manga
    - anime
    - drama
    - film
    - digital_art
    - exhibition
  culture_summary: culture is central and publicly visible
  religion_summary: three-gods belief strongly informs symbolism, festivals, and story culture; governance remains secular
  value_tags:
    - expression
    - story
    - identity
    - prestige
  three_gods_relation_summary: Southern-style Morning/Night symbolism is especially strong in festivals, memory, and artistic expression
  social_norm_notes: mythic language is common in public art and seasonal ceremony
  culture_notes: creative identity is a core state-strength axis

public_service_bundle:
  source_mode: mixed
  education_baseline: moderate
  health_baseline: standard
  safety_baseline: stable
  transport_baseline: moderate
  welfare_baseline: moderate
  communications_baseline: strong
  service_notes: culture access and event safety are prioritized

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: grand-cultural-calendar
  national_holidays:
    - Festival of First Light
    - Night of Memory
  recurring_events:
    - national_exhibition_cycle
    - seasonal_screening_festival
  market_holiday_interaction_profile: strong_culture_market_linkage
  holiday_notes: holidays are high-visibility cultural events

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: culture-alert-profile
  governance_alert_level: medium
  market_alert_level: medium
  facility_alert_level: medium
  incident_alert_level: medium
  citizen_noise_posture: moderate
  notification_notes: culture and event activity surfaced prominently

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
    - culture_nation_template
    - growth_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
