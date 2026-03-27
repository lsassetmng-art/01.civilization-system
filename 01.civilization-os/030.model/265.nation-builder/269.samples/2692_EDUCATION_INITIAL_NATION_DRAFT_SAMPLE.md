# ============================================================
# EDUCATION INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: education-nation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  nation_draft_id: sample-education-001
  draft_code: SAMPLE_EDUCATION_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  nation_template_code: education_nation_template
  zone_template_set_codes:
    - education_zone_template
    - office_zone_template
    - mixed_use_zone_template
  market_preset_code: growth_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected education starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref: TBD
  emblem_asset_ref: TBD
  national_color_palette: [white, green, blue]
  map_color: calm_green
  symbolic_style_notes: trusted learning-oriented civic identity

basic_identity_bundle:
  source_mode: mixed
  formal_name: Aurora Learning Republic
  short_name: Aurora
  nation_type: education_state
  nation_category: public-service-oriented
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A nation centered on schools, curriculum, human development, and stable public learning systems.
  public_profile_text: A civic nation that treats education as a primary strategic resource.

territory_bundle:
  source_mode: mixed
  territory_profile_code: campus-cluster-region
  region_summary: distributed education cities with service-centered capital
  capital_city_code: aurora_capital
  sub_capital_city_code: aurora_campus
  major_city_roles:
    - capital_city
    - education_core_city
    - research_support_city
    - family_service_city
  city_role_bindings:
    capital_city: aurora_capital
    education_core_city: aurora_campus
    research_support_city: aurora_research
    family_service_city: aurora_home
  territory_notes: city hierarchy optimized for public service and school access

population_bundle:
  source_mode: mixed
  population_profile_code: family-learning-balance
  total_population_plan: 250000
  household_profile_summary: family-supportive and school-centered population
  workforce_profile_summary: teachers, service staff, curriculum professionals, and knowledge workers
  population_composition:
    children_ratio: 0.22
    working_ratio: 0.62
    elderly_ratio: 0.16
    student_ratio: 0.24
    religious_affiliation_profile: decentralized_three_gods
    education_participation_profile: high
  migration_posture: selective_stable_growth
  social_density_posture: medium
  population_notes: child and student support is a national priority

currency_bundle:
  source_mode: mixed
  currency_code: AUR
  currency_name: Aurora Credit
  currency_symbol: AUR
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: national policy currency only, strictly separated from payout and market money

governance_bundle:
  source_mode: mixed
  governance_style: public_service_education_governance
  authority_model: distributed_service_and_learning_model
  authority_seats:
    - seat_code: head_of_state
      seat_name: Civic Chancellor
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: education_administration
      seat_name: Minister of Education
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: education
    - seat_code: child_welfare_administration
      seat_name: Minister of Family Support
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: welfare
  authority_distribution_summary: public-service-first governance
  governance_notes: secular government with religion socially present but institutionally secondary

regime_bundle:
  source_mode: mixed
  company_regime_bundle: education_supportive_company_regime
  property_regime_bundle: structured_property_regime
  tax_regime_bundle: moderate_public_service_tax_regime
  banking_regime_bundle: optional_basic_banking_regime
  securities_regime_bundle: optional_limited_listing_regime
  welfare_regime_bundle: strong_family_support_welfare_regime
  education_regime_bundle: strong_education_regime
  military_regime_bundle: minimal_military_regime
  religion_authority_bundle: null
  operating_profile_bundle: service_stability_profile
  regime_notes: education and family support prioritized in budget allocation

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: education-core-zoning
  zone_template_refs:
    - education_zone_template
    - office_zone_template
    - mixed_use_zone_template
  zone_map_ref: sample_zone_map_aurora_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    education_zone:
      - education_company
      - software_company
      - culture_arts_company
    office_zone:
      - education_company
      - software_company
      - architectural_design_company
  allowed_site_type_matrix:
    education_zone:
      - school_site
      - office
      - service_site
    office_zone:
      - office
      - headquarters
  restriction_matrix:
    education_zone:
      - public_open_allowed
  zoning_notes: school-compatible operation protected

market_bundle:
  source_mode: mixed
  market_preset_code: growth_market
  listing_system_style: growth_market
  market_tiers:
    - standard_market
    - growth_market
  threshold_rules:
    minimum_operating_period: moderate
    minimum_evaluation_score: moderate
    minimum_activity_score: moderate
    minimum_compliance_score: structured
    minimum_disclosure_score: moderate
  company_type_eligibility:
    - education_company
    - software_company
    - culture_arts_company
  market_review_notes: listing allowed, but narrower than commerce-first nations

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: education-capital-core
  capital_required_facilities:
    - governance_center
    - central_school_complex
    - public_service_center
    - communications_center
  facility_function_refs:
    - civic_school_board
    - teacher_training_center
    - family_support_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: education-support facilities prioritized

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: service-access-v1
  infrastructure_palette:
    - road
    - rail
    - communications
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: access reliability prioritized over heavy logistics

culture_bundle:
  source_mode: mixed
  priority_industries:
    - education
    - software
    - publishing
    - curriculum
  culture_summary: stable, learning-centered, long-term civic development culture
  religion_summary: decentralized three-gods belief remains culturally present, especially Morning God symbolism in birth, hope, and education
  value_tags:
    - learning
    - trust
    - care
    - continuity
  three_gods_relation_summary: Morning God symbolism is strongest in schools and youth culture; governance remains secular
  social_norm_notes: religion stabilizes meaning and continuity but does not dominate formal institutions
  culture_notes: academic ceremonies and student festivals are socially important

public_service_bundle:
  source_mode: mixed
  education_baseline: strong
  health_baseline: standard
  safety_baseline: stable
  transport_baseline: moderate
  welfare_baseline: strong_family_support
  communications_baseline: stable
  service_notes: education and child support receive first-class policy priority

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: civic-learning-calendar
  national_holidays:
    - Founding Day
    - Learning Renewal Day
  recurring_events:
    - student_festival
    - curriculum_exposition
  market_holiday_interaction_profile: limited_market_boost
  holiday_notes: public ceremonies focus on learning and continuity

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: education-alert-profile
  governance_alert_level: medium
  market_alert_level: low_to_medium
  facility_alert_level: medium
  incident_alert_level: medium
  citizen_noise_posture: low
  notification_notes: public service and school operations emphasized

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
    - education_nation_template
    - growth_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
