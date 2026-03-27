# ============================================================
# RELIGION INITIAL NATION DRAFT SAMPLE
# ============================================================

status: canonical-sample
layer: model
scope: initial-nation-draft-sample
component: religion-nation-sample

owner: Boss
prepared_by: Zero

draft_identity:
  nation_draft_id: sample-religion-001
  draft_code: SAMPLE_RELIGION_NATION_001
  draft_status: draft
  builder_stage: draft
  created_by: system-template-seed
  created_at: TBD
  updated_at: TBD

template_binding:
  nation_template_code: religion_nation_template
  zone_template_set_codes:
    - religious_zone_template
    - education_zone_template
    - mixed_use_zone_template
  market_preset_code: strict_public_market
  template_application_mode: full_template_apply
  template_locked_fields: []
  template_notes: Foundation-reflected religion starter nation

symbolic_identity_bundle:
  source_mode: mixed
  flag_asset_ref: TBD
  emblem_asset_ref: TBD
  national_color_palette: [white, gold, dark_blue]
  map_color: sacred_blue
  symbolic_style_notes: tradition-centered sacred civic identity

basic_identity_bundle:
  source_mode: mixed
  formal_name: Sancta Dawn Covenant
  short_name: Sancta Dawn
  nation_type: religious_state
  nation_category: doctrine-centered
  language_profile:
    primary_language: common_civilization
    secondary_languages: []
  summary_description: A nation centered on doctrine, ritual, temple operation, and faith-linked community order.
  public_profile_text: A sacred-order nation shaped by doctrine and ritual continuity.

territory_bundle:
  source_mode: mixed
  territory_profile_code: sacred-center-region
  region_summary: temple-centered civic regions with pilgrimage-support cities
  capital_city_code: sancta_capital
  sub_capital_city_code: sancta_temple
  major_city_roles:
    - capital_city
    - religion_core_city
    - doctrine_education_city
    - pilgrimage_support_city
  city_role_bindings:
    capital_city: sancta_capital
    religion_core_city: sancta_temple
    doctrine_education_city: sancta_scriptoria
    pilgrimage_support_city: sancta_way
  territory_notes: sacred centers dominate the spatial logic

population_bundle:
  source_mode: mixed
  population_profile_code: cohesion-faith-community
  total_population_plan: 180000
  household_profile_summary: community-centered households with strong ritual participation
  workforce_profile_summary: temple staff, educators, community organizers, and support services
  population_composition:
    children_ratio: 0.19
    working_ratio: 0.63
    elderly_ratio: 0.18
    student_ratio: 0.15
    religious_affiliation_profile: high_three_gods_affiliation
    education_participation_profile: doctrine_compatible_standard
  migration_posture: controlled
  social_density_posture: low_to_medium
  population_notes: social cohesion prioritized over growth speed

currency_bundle:
  source_mode: mixed
  currency_code: SDC
  currency_name: Sancta Doctrine Coin
  currency_symbol: SDC
  denomination_profile: integer_unit_primary
  display_precision: 0
  monetary_notes: national treasury currency only, strictly non-convertible

governance_bundle:
  source_mode: mixed
  governance_style: religion_linked_governance
  authority_model: civil_authority_with_religion_authority_linkage
  authority_seats:
    - seat_code: head_of_state
      seat_name: High Steward
      seat_role_type: executive
      seat_rank: 1
      seat_scope: nation
    - seat_code: religion_administration
      seat_name: Minister of Doctrine
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: religion
    - seat_code: civic_order_administration
      seat_name: Minister of Civic Order
      seat_role_type: ministry
      seat_rank: 2
      seat_scope: order
  authority_distribution_summary: civil government linked to recognized religion authority structure
  governance_notes: religion is structurally central, unlike most nations

regime_bundle:
  source_mode: mixed
  company_regime_bundle: restricted_company_enablement_regime
  property_regime_bundle: structured_property_regime
  tax_regime_bundle: moderate_or_donation_supported_tax_regime
  banking_regime_bundle: optional_basic_banking_regime
  securities_regime_bundle: not_recommended_or_disabled_listing_regime
  welfare_regime_bundle: community_support_welfare_regime
  education_regime_bundle: doctrine_compatible_education_regime
  military_regime_bundle: minimal_to_structured_military_regime
  religion_authority_bundle: active_religion_authority_linkage
  operating_profile_bundle: sacred_order_profile
  regime_notes: donation and religious community support are institutionally significant

zoning_bundle:
  source_mode: mixed
  zoning_profile_code: sacred-zoning
  zone_template_refs:
    - religious_zone_template
    - education_zone_template
    - mixed_use_zone_template
  zone_map_ref: sample_zone_map_sancta_v1
  zone_rules:
    compatibility_mode: explicit_matrix
    pre_approval_required: false
    post_opening_notification_required: true
  allowed_company_type_matrix:
    religious_zone:
      - religious_corporation
    education_zone:
      - education_company
    mixed_use_zone:
      - religious_corporation
      - education_company
      - culture_arts_company
  allowed_site_type_matrix:
    religious_zone:
      - temple_site
      - service_site
    education_zone:
      - school_site
      - office
    mixed_use_zone:
      - temple_site
      - school_site
      - office
  restriction_matrix:
    religious_zone:
      - religious_activity_allowed
      - public_open_allowed
  zoning_notes: doctrine and ritual compatibility preserved explicitly

market_bundle:
  source_mode: mixed
  market_preset_code: strict_public_market
  listing_system_style: strict_public_market
  market_tiers:
    - standard_market
  threshold_rules:
    minimum_operating_period: strict
    minimum_evaluation_score: strict
    minimum_activity_score: moderate
    minimum_compliance_score: strict
    minimum_disclosure_score: structured
  company_type_eligibility:
    - education_company
    - culture_arts_company
  market_review_notes: listing exists only in narrow, tightly reviewed form; religious corporations remain non-listable

facility_bundle:
  source_mode: mixed
  facility_placement_profile_code: sacred-capital-core
  capital_required_facilities:
    - governance_center
    - grand_temple_complex
    - doctrine_center
    - communications_center
  facility_function_refs:
    - ritual_hall
    - scripture_school
    - donation_administration_center
  facility_placement_instances: []
  facility_design_selection_refs: []
  effective_stat_overrides: []
  facility_notes: temple and doctrine facilities are first-class

infrastructure_bundle:
  source_mode: mixed
  infrastructure_profile_code: pilgrimage-support-v1
  infrastructure_palette:
    - road
    - communications
    - rail
  infrastructure_placement_instances: []
  topology_connections: []
  effective_stat_overrides: []
  infrastructure_notes: pilgrimage and civic access prioritized

culture_bundle:
  source_mode: mixed
  priority_industries:
    - doctrine_text
    - ritual_material
    - education
    - donation_support_services
  culture_summary: doctrine and ritual are central to national identity
  religion_summary: decentralized three-gods belief is formalized locally into a structured religious public culture
  value_tags:
    - faith
    - ritual
    - cohesion
    - sacred_order
  three_gods_relation_summary: Morning God symbolism dominates public doctrine, with Day and Night integrated into life-cycle teaching and ritual memory
  social_norm_notes: faith-informed ethics are socially dominant
  culture_notes: ritual calendar and temple life shape daily rhythm

public_service_bundle:
  source_mode: mixed
  education_baseline: standard
  health_baseline: standard
  safety_baseline: stable
  transport_baseline: moderate
  welfare_baseline: community_support
  communications_baseline: moderate
  service_notes: community and doctrine-linked support are central

holiday_bundle:
  source_mode: mixed
  holiday_profile_code: sacred-cycle-calendar
  national_holidays:
    - First Dawn Ceremony
    - Night of Remembrance
  recurring_events:
    - seasonal_ritual_cycle
    - doctrine_festival
  market_holiday_interaction_profile: limited_religious_market_linkage
  holiday_notes: ritual calendar has strong civic weight

notification_profile_bundle:
  source_mode: mixed
  dashboard_profile_code: religion-alert-profile
  governance_alert_level: medium
  market_alert_level: low
  facility_alert_level: medium
  incident_alert_level: medium
  citizen_noise_posture: low
  notification_notes: doctrine, temple, and public order signals emphasized

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
    - religion_nation_template
    - strict_public_market
  manual_override_log: []
  reviewer_action_log: []
  publication_action_log: []
  activation_action_log: []
