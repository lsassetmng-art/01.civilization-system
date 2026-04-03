# ============================================================
# INITIAL NATION DRAFT MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder
component: initial-nation-draft

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for Initial Nation Draft.

Initial Nation Draft is the editable instance-level
data structure used by Nation Builder before a nation
is approved, published, and activated.

It is not a nation template.
It is not a live nation runtime object.

It is the authoritative draft structure for:

- template-applied draft generation
- manual nation creation
- validation
- approval review
- publication preparation
- activation preparation


# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

Initial Nation Draft must follow these principles.

- instance data must be separated from template preset data
- mandatory bundles must be structurally represented
- unresolved data may exist in draft state
- unresolved mandatory data must fail validation
- source origin should remain traceable where practical
- activation state must never be assumed before validation
- builder stages must be explicit


# ============================================================
# 3. MODEL ROLE
# ============================================================

Initial Nation Draft represents
a nation candidate under construction.

It is expected to be:

- editable
- partially incomplete
- validation-aware
- reviewable
- publication-gated
- activation-gated

It must support both:

- template-based creation
- blank manual creation


# ============================================================
# 4. TOP LEVEL STRUCTURE
# ============================================================

The Initial Nation Draft should contain
the following top-level bundles.

- draft_identity
- template_binding
- symbolic_identity_bundle
- basic_identity_bundle
- territory_bundle
- population_bundle
- currency_bundle
- governance_bundle
- regime_bundle
- zoning_bundle
- market_bundle
- facility_bundle
- infrastructure_bundle
- culture_bundle
- public_service_bundle
- holiday_bundle
- notification_profile_bundle
- validation_bundle
- approval_bundle
- publication_bundle
- activation_bundle
- audit_bundle


# ============================================================
# 5. DRAFT IDENTITY
# ============================================================

draft_identity contains builder-level identity.

Fields:
- nation_draft_id
- draft_code
- draft_status
- builder_stage
- created_by
- created_at
- updated_at

Recommended draft_status values:
- draft
- validation_pending
- validation_passed
- approval_pending
- approved
- publication_pending
- published
- activation_pending
- activated
- rejected
- archived

Recommended builder_stage values:
- draft
- validation
- approval
- publication
- activation


# ============================================================
# 6. TEMPLATE BINDING
# ============================================================

template_binding stores preset linkage.

Fields:
- nation_template_code
- zone_template_set_codes
- market_preset_code
- template_application_mode
- template_locked_fields
- template_notes

Recommended template_application_mode:
- full_template_apply
- partial_template_apply
- blank_start

Recommended template_locked_fields:
- empty by default
- used only if future design introduces lockable presets

This bundle exists even if blank_start is used.


# ============================================================
# 7. SYMBOLIC IDENTITY BUNDLE
# ============================================================

symbolic_identity_bundle defines symbolic presentation.

Fields:
- source_mode
- flag_asset_ref
- emblem_asset_ref
- national_color_palette
- map_color
- symbolic_style_notes

Recommended source_mode:
- template_default
- user_defined
- mixed
- system_generated


# ============================================================
# 8. BASIC IDENTITY BUNDLE
# ============================================================

basic_identity_bundle defines nation identity.

Fields:
- source_mode
- formal_name
- short_name
- nation_type
- nation_category
- language_profile
- summary_description
- public_profile_text

formal_name is mandatory before validation pass.
nation_type is mandatory before validation pass.


# ============================================================
# 9. TERRITORY BUNDLE
# ============================================================

territory_bundle defines territorial structure.

Fields:
- source_mode
- territory_profile_code
- region_summary
- capital_city_code
- sub_capital_city_code
- major_city_roles
- city_role_bindings
- territory_notes

major_city_roles may include:
- capital_city
- sub_capital_city
- industrial_core_city
- logistics_core_city
- finance_core_city
- culture_core_city
- education_core_city
- religion_core_city

capital_city_code is mandatory before validation pass.


# ============================================================
# 10. POPULATION BUNDLE
# ============================================================

population_bundle defines population design.

Fields:
- source_mode
- population_profile_code
- total_population_plan
- household_profile_summary
- workforce_profile_summary
- population_composition
- migration_posture
- social_density_posture
- population_notes

population_composition may include:
- children_ratio
- working_ratio
- elderly_ratio
- student_ratio
- religious_affiliation_profile
- education_participation_profile

This bundle is mandatory before validation pass.


# ============================================================
# 11. CURRENCY BUNDLE
# ============================================================

currency_bundle defines national currency design.

Fields:
- source_mode
- currency_code
- currency_name
- currency_symbol
- denomination_profile
- display_precision
- monetary_notes

currency_code is mandatory before validation pass.


# ============================================================
# 12. GOVERNANCE BUNDLE
# ============================================================

governance_bundle defines governance structure.

Fields:
- source_mode
- governance_style
- authority_model
- authority_seats
- authority_distribution_summary
- governance_notes

authority_seats may include structured seat objects:
- seat_code
- seat_name
- seat_role_type
- seat_rank
- seat_scope

governance_style is mandatory before validation pass.


# ============================================================
# 13. REGIME BUNDLE
# ============================================================

regime_bundle defines major regime references.

Fields:
- source_mode
- company_regime_bundle
- property_regime_bundle
- tax_regime_bundle
- banking_regime_bundle
- securities_regime_bundle
- welfare_regime_bundle
- education_regime_bundle
- military_regime_bundle
- religion_authority_bundle
- operating_profile_bundle
- regime_notes

Always mandatory before validation pass:
- company_regime_bundle
- property_regime_bundle
- tax_regime_bundle

Conditionally mandatory:
- banking_regime_bundle
- securities_regime_bundle
- religion_authority_bundle
- military_regime_bundle


# ============================================================
# 14. ZONING BUNDLE
# ============================================================

zoning_bundle defines zone configuration.

Fields:
- source_mode
- zoning_profile_code
- zone_template_refs
- zone_map_ref
- zone_rules
- allowed_company_type_matrix
- allowed_site_type_matrix
- restriction_matrix
- zoning_notes

zone_rules should resolve practical opening compatibility.

zoning_bundle is mandatory before validation pass.


# ============================================================
# 15. MARKET BUNDLE
# ============================================================

market_bundle defines listing and public market structure.

Fields:
- source_mode
- market_preset_code
- listing_system_style
- market_tiers
- threshold_rules
- company_type_eligibility
- market_review_notes

Conditionally mandatory:
- when the nation supports listing
- when securities_regime_bundle is enabled

If listing is disabled,
market_bundle may still exist with disabled posture metadata.


# ============================================================
# 16. FACILITY BUNDLE
# ============================================================

facility_bundle defines facility planning.

Fields:
- source_mode
- facility_placement_profile_code
- capital_required_facilities
- facility_function_refs
- facility_placement_instances
- facility_design_selection_refs
- effective_stat_overrides
- facility_notes

facility bundle is conditionally mandatory
when the nation profile requires explicit facility planning.


# ============================================================
# 17. INFRASTRUCTURE BUNDLE
# ============================================================

infrastructure_bundle defines infrastructure planning.

Fields:
- source_mode
- infrastructure_profile_code
- infrastructure_palette
- infrastructure_placement_instances
- topology_connections
- effective_stat_overrides
- infrastructure_notes

Typical infrastructure objects:
- rail
- station
- airport
- port
- road
- utility
- communications
- logistics_hub

This bundle is conditionally mandatory
when nation design explicitly includes infrastructure placement.


# ============================================================
# 18. CULTURE BUNDLE
# ============================================================

culture_bundle defines culture, religion, and value posture.

Fields:
- source_mode
- priority_industries
- culture_summary
- religion_summary
- value_tags
- three_gods_relation_summary
- social_norm_notes
- culture_notes

priority_industries is strongly recommended.
culture_summary is recommended.
religion_summary is conditionally required
for religion-centered nation designs.


# ============================================================
# 19. PUBLIC SERVICE BUNDLE
# ============================================================

public_service_bundle defines baseline service posture.

Fields:
- source_mode
- education_baseline
- health_baseline
- safety_baseline
- transport_baseline
- welfare_baseline
- communications_baseline
- service_notes

public_service_bundle is mandatory before validation pass.


# ============================================================
# 20. HOLIDAY BUNDLE
# ============================================================

holiday_bundle defines holidays and events.

Fields:
- source_mode
- holiday_profile_code
- national_holidays
- recurring_events
- market_holiday_interaction_profile
- holiday_notes

This bundle is recommended.
It becomes conditionally mandatory if
major_holiday_market_bundle is enabled by policy.


# ============================================================
# 21. NOTIFICATION PROFILE BUNDLE
# ============================================================

notification_profile_bundle defines dashboard and notification posture.

Fields:
- source_mode
- dashboard_profile_code
- governance_alert_level
- market_alert_level
- facility_alert_level
- incident_alert_level
- citizen_noise_posture
- notification_notes

notification_profile_bundle is mandatory before validation pass.


# ============================================================
# 22. VALIDATION BUNDLE
# ============================================================

validation_bundle stores validation state.

Fields:
- last_validation_run_at
- validation_state
- blocking_error_count
- warning_count
- info_count
- validation_results
- passed_gate_stage

Recommended validation_state:
- not_run
- passed
- failed
- passed_with_warnings

validation_results should store structured records
based on Nation Builder Validation Policy.

Each result should include:
- code
- severity
- category
- builder_stage
- title
- message
- target_path
- recommended_fix


# ============================================================
# 23. APPROVAL BUNDLE
# ============================================================

approval_bundle stores approval review state.

Fields:
- approval_state
- approval_requested_at
- approved_at
- rejected_at
- approved_by
- reviewer_notes
- approval_conditions

Recommended approval_state:
- not_requested
- pending
- approved
- rejected


# ============================================================
# 24. PUBLICATION BUNDLE
# ============================================================

publication_bundle stores publication state.

Fields:
- publication_state
- publication_requested_at
- published_at
- publication_notes

Recommended publication_state:
- not_requested
- pending
- published
- blocked


# ============================================================
# 25. ACTIVATION BUNDLE
# ============================================================

activation_bundle stores live activation state.

Fields:
- activation_state
- activation_requested_at
- activated_at
- activation_notes

Recommended activation_state:
- not_requested
- pending
- activated
- blocked


# ============================================================
# 26. AUDIT BUNDLE
# ============================================================

audit_bundle stores traceability data.

Fields:
- source_trace_summary
- template_derivation_log
- manual_override_log
- reviewer_action_log
- publication_action_log
- activation_action_log

Audit data is required for governance-quality traceability.


# ============================================================
# 27. REQUIREDNESS SUMMARY
# ============================================================

## 27-1. Always structurally present
The following bundles should always exist as objects,
even if partially incomplete.

- draft_identity
- template_binding
- symbolic_identity_bundle
- basic_identity_bundle
- territory_bundle
- population_bundle
- currency_bundle
- governance_bundle
- regime_bundle
- zoning_bundle
- market_bundle
- facility_bundle
- infrastructure_bundle
- culture_bundle
- public_service_bundle
- holiday_bundle
- notification_profile_bundle
- validation_bundle
- approval_bundle
- publication_bundle
- activation_bundle
- audit_bundle

## 27-2. Mandatory before validation pass
- basic_identity_bundle.formal_name
- basic_identity_bundle.nation_type
- territory_bundle.capital_city_code
- population_bundle
- currency_bundle.currency_code
- governance_bundle.governance_style
- regime_bundle.company_regime_bundle
- regime_bundle.property_regime_bundle
- regime_bundle.tax_regime_bundle
- zoning_bundle
- public_service_bundle
- notification_profile_bundle

## 27-3. Conditionally mandatory
- regime_bundle.banking_regime_bundle
- regime_bundle.securities_regime_bundle
- regime_bundle.religion_authority_bundle
- market_bundle.listing_system_style
- market_bundle.market_tiers
- facility_bundle
- infrastructure_bundle
- holiday_bundle.market_holiday_interaction_profile


# ============================================================
# 28. OFFICIAL SKELETON
# ============================================================

draft_identity:
  nation_draft_id:
  draft_code:
  draft_status:
  builder_stage:
  created_by:
  created_at:
  updated_at:

template_binding:
  nation_template_code:
  zone_template_set_codes:
  market_preset_code:
  template_application_mode:
  template_locked_fields:
  template_notes:

symbolic_identity_bundle:
  source_mode:
  flag_asset_ref:
  emblem_asset_ref:
  national_color_palette:
  map_color:
  symbolic_style_notes:

basic_identity_bundle:
  source_mode:
  formal_name:
  short_name:
  nation_type:
  nation_category:
  language_profile:
  summary_description:
  public_profile_text:

territory_bundle:
  source_mode:
  territory_profile_code:
  region_summary:
  capital_city_code:
  sub_capital_city_code:
  major_city_roles:
  city_role_bindings:
  territory_notes:

population_bundle:
  source_mode:
  population_profile_code:
  total_population_plan:
  household_profile_summary:
  workforce_profile_summary:
  population_composition:
  migration_posture:
  social_density_posture:
  population_notes:

currency_bundle:
  source_mode:
  currency_code:
  currency_name:
  currency_symbol:
  denomination_profile:
  display_precision:
  monetary_notes:

governance_bundle:
  source_mode:
  governance_style:
  authority_model:
  authority_seats:
  authority_distribution_summary:
  governance_notes:

regime_bundle:
  source_mode:
  company_regime_bundle:
  property_regime_bundle:
  tax_regime_bundle:
  banking_regime_bundle:
  securities_regime_bundle:
  welfare_regime_bundle:
  education_regime_bundle:
  military_regime_bundle:
  religion_authority_bundle:
  operating_profile_bundle:
  regime_notes:

zoning_bundle:
  source_mode:
  zoning_profile_code:
  zone_template_refs:
  zone_map_ref:
  zone_rules:
  allowed_company_type_matrix:
  allowed_site_type_matrix:
  restriction_matrix:
  zoning_notes:

market_bundle:
  source_mode:
  market_preset_code:
  listing_system_style:
  market_tiers:
  threshold_rules:
  company_type_eligibility:
  market_review_notes:

facility_bundle:
  source_mode:
  facility_placement_profile_code:
  capital_required_facilities:
  facility_function_refs:
  facility_placement_instances:
  facility_design_selection_refs:
  effective_stat_overrides:
  facility_notes:

infrastructure_bundle:
  source_mode:
  infrastructure_profile_code:
  infrastructure_palette:
  infrastructure_placement_instances:
  topology_connections:
  effective_stat_overrides:
  infrastructure_notes:

culture_bundle:
  source_mode:
  priority_industries:
  culture_summary:
  religion_summary:
  value_tags:
  three_gods_relation_summary:
  social_norm_notes:
  culture_notes:

public_service_bundle:
  source_mode:
  education_baseline:
  health_baseline:
  safety_baseline:
  transport_baseline:
  welfare_baseline:
  communications_baseline:
  service_notes:

holiday_bundle:
  source_mode:
  holiday_profile_code:
  national_holidays:
  recurring_events:
  market_holiday_interaction_profile:
  holiday_notes:

notification_profile_bundle:
  source_mode:
  dashboard_profile_code:
  governance_alert_level:
  market_alert_level:
  facility_alert_level:
  incident_alert_level:
  citizen_noise_posture:
  notification_notes:

validation_bundle:
  last_validation_run_at:
  validation_state:
  blocking_error_count:
  warning_count:
  info_count:
  validation_results:
  passed_gate_stage:

approval_bundle:
  approval_state:
  approval_requested_at:
  approved_at:
  rejected_at:
  approved_by:
  reviewer_notes:
  approval_conditions:

publication_bundle:
  publication_state:
  publication_requested_at:
  published_at:
  publication_notes:

activation_bundle:
  activation_state:
  activation_requested_at:
  activated_at:
  activation_notes:

audit_bundle:
  source_trace_summary:
  template_derivation_log:
  manual_override_log:
  reviewer_action_log:
  publication_action_log:
  activation_action_log:


# ============================================================
# 29. TEMPLATE APPLICATION RULE
# ============================================================

When a nation template is applied:

- template_binding.nation_template_code must be set
- template-derived defaults may populate any editable bundle
- source_mode should reflect mixed origin where overrides occur
- missing mandatory values must still be validated explicitly
- template application never implies approval, publication, or activation


# ============================================================
# 30. FINAL RULE
# ============================================================

Initial Nation Draft is the official editable nation instance model
for Nation Builder.

All approval, publication, and activation flows
must reference this model or a structurally compatible descendant model.

If required state is unresolved,
the nation must not proceed.
