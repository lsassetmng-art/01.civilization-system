# ============================================================
# HYBRID INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: hybrid-nation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  nation_draft_id: sample-hybrid-001
  draft_code: SAMPLE_HYBRID_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  nation_template_code: hybrid_nation_template
  zone_template_set_codes:
    - mixed_use_zone_template
    - commercial_zone_template
    - education_zone_template
    - arts_zone_template
    - office_zone_template
  market_preset_code: hybrid_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected hybrid starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref: TBD
  emblem_asset_ref: TBD
  national_color_palette: [blue, green, gold]
  map_color: balanced_teal
  symbolic_style_notes: plural and balanced civic identity

basic_identity_bundle:
  source_mode: mixed
  formal_name: Concordia Hybrid Union
  short_name: Concordia
  nation_type: hybrid_state
  nation_category: balanced-multi-sector
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A balanced nation combining commerce, education, culture, and stable public systems.
  public_profile_text: A plural and adaptable nation with broad builder compatibility.

territory_bundle:
  source_mode: mixed
  territory_profile_code: balanced-multi-city-region
  region_summary: mixed specialization cities connected by civic and commercial corridors
  capital_city_code: concordia_capital
  sub_capital_city_code: concordia_crossroads
  major_city_roles:
    - capital_city
    - commercial_core_city
    - education_core_city
    - culture_core_city
    - logistics_support_city
  city_role_bindings:
    capital_city: concordia_capital
    commercial_core_city: concordia_market
    education_core_city: concordia_academy
    culture_core_city: concordia_stage
    logistics_support_city: concordia_crossroads
  territory_notes: hybrid specialization with balanced internal development

population_bundle:
  source_mode: mixed
  population_profile_code: balanced-urban-service
  total_population_plan: 280000
  household_profile_summary: mixed urban households with moderate diversity in work and lifestyle
  workforce_profile_summary: balanced distribution across services, education, creative work, and commerce
  population_composition:
    children_ratio: 0.19
    working_ratio: 0.66
    elderly_ratio: 0.15
    student_ratio: 0.18
    religious_affiliation_profile: decentralized_three_gods
    education_participation_profile: standard_to_high
  migration_posture: moderate_open
  social_density_posture: medium
  population_notes: supports diversified growth without sharp specialization

currency_bundle:
  source_mode: mixed
  currency_code: CHU
  currency_name: Concordia Hybrid Unit
  currency_symbol: CHU
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: national policy currency only; no conversion to real money or CIV_CASH

governance_bundle:
  source_mode: mixed
  governance_style: mixed_civil_governance
  authority_model: distributed_balanced_authority_model
  authority_seats:
    - seat_code: head_of_state
      seat_name: Civic Moderator
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: commerce_administration
      seat_name: Minister of Commerce
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: economy
    - seat_code: education_administration
      seat_name: Minister of Education
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: education
    - seat_code: culture_administration
      seat_name: Minister of Culture
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: culture
  authority_distribution_summary: balanced civil administration across multiple domains
  governance_notes: secular by design, with religion remaining culturally meaningful

regime_bundle:
  source_mode: mixed
  company_regime_bundle: broad_balanced_company_regime
  property_regime_bundle: structured_flexible_property_regime
  tax_regime_bundle: moderate_balanced_tax_regime
  banking_regime_bundle: optional_enabled_banking_regime
  securities_regime_bundle: optional_growth_listing_regime
  welfare_regime_bundle: moderate_welfare_regime
  education_regime_bundle: moderate_education_regime
  military_regime_bundle: minimal_to_moderate_military_regime
  religion_authority_bundle: null
  operating_profile_bundle: balanced_growth_profile
  regime_notes: no extreme specialization; balanced budget posture

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: hybrid-balanced-zoning
  zone_template_refs:
    - mixed_use_zone_template
    - commercial_zone_template
    - education_zone_template
    - arts_zone_template
    - office_zone_template
  zone_map_ref: sample_zone_map_concordia_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    mixed_use_zone:
      - retail_company
      - education_company
      - culture_arts_company
      - software_company
    commercial_zone:
      - retail_company
      - software_company
      - game_company
    education_zone:
      - education_company
    arts_zone:
      - culture_arts_company
    office_zone:
      - investment_company
      - software_company
      - architectural_design_company
  allowed_site_type_matrix:
    mixed_use_zone:
      - office
      - retail_store
      - gallery_site
      - school_site
    commercial_zone:
      - retail_store
      - office
    education_zone:
      - school_site
      - office
    arts_zone:
      - gallery_site
      - studio
    office_zone:
      - headquarters
      - office
      - branch
  restriction_matrix:
    mixed_use_zone:
      - public_open_allowed
      - exhibition_event_allowed
    arts_zone:
      - screening_event_allowed
  zoning_notes: balanced coexistence zoning

market_bundle:
  source_mode: mixed
  market_preset_code: hybrid_market
  listing_system_style: hybrid_market
  market_tiers:
    - standard_market
    - growth_market
    - venture_market
  threshold_rules:
    minimum_operating_period: moderate
    minimum_evaluation_score: moderate
    minimum_activity_score: moderate
    minimum_compliance_score: moderate
    minimum_disclosure_score: moderate
  company_type_eligibility:
    - retail_company
    - education_company
    - game_company
    - software_company
    - culture_arts_company
    - investment_company
  market_review_notes: balanced market access with explicit review gates

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: hybrid-capital-core
  capital_required_facilities:
    - governance_center
    - public_service_center
    - communications_center
    - mixed_civic_hub
  facility_function_refs:
    - civic_exchange_hall
    - education_support_center
    - cultural_access_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: capital supports multiple functions at once

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: balanced-connectivity-v1
  infrastructure_palette:
    - road
    - rail
    - communications
    - logistics_hub
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: balanced mobility and communications

culture_bundle:
  source_mode: mixed
  priority_industries:
    - retail
    - education
    - software
    - game
    - culture
  culture_summary: plural, balanced, and adaptive civic culture
  religion_summary: decentralized three-gods belief is present as a cultural background rather than a governing doctrine
  value_tags:
    - balance
    - coexistence
    - flexibility
    - stability
  three_gods_relation_summary: Central-continent style balance among Morning, Day, and Night symbolism is the dominant cultural posture
  social_norm_notes: mixed identities coexist under stable civic norms
  culture_notes: state symbolism emphasizes coexistence and continuity

public_service_bundle:
  source_mode: mixed
  education_baseline: stable
  health_baseline: standard
  safety_baseline: stable
  transport_baseline: stable
  welfare_baseline: moderate
  communications_baseline: stable
  service_notes: no single domain dominates all spending

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: balanced-civic-calendar
  national_holidays:
    - Founding Balance Day
    - Civic Renewal Day
  recurring_events:
    - mixed_sector_fair
    - public_culture_week
  market_holiday_interaction_profile: moderate
  holiday_notes: public holidays mix civic, cultural, and commercial meanings

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: hybrid-alert-profile
  governance_alert_level: medium
  market_alert_level: medium
  facility_alert_level: medium
  incident_alert_level: medium
  citizen_noise_posture: moderate
  notification_notes: intentionally balanced alert posture

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
    - hybrid_nation_template
    - hybrid_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
