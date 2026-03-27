# ============================================================
# CIVILIZATION NATION BUILDER EXTENDED MODEL MAP
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the extended model map for nation builder
inside CivilizationOS.


# ============================================================
# 1. TEMPLATE MODELS
# ============================================================

## NATION_TEMPLATE
core_fields:
- nation_template_id
- template_code
- template_name
- template_category
- template_status
- created_at
- updated_at

template_category examples:
- commercial
- education
- military
- culture
- religion
- hybrid

## NATION_DRAFT_TEMPLATE_LINK
core_fields:
- nation_draft_template_link_id
- nation_draft_id
- nation_template_id
- applied_status
- applied_at
- created_at
- updated_at


# ============================================================
# 2. SYMBOLIC IDENTITY MODELS
# ============================================================

## NATION_DRAFT_SYMBOLIC_IDENTITY
core_fields:
- nation_draft_symbolic_identity_id
- nation_draft_id
- flag_ref
- emblem_ref
- primary_color_code
- secondary_color_code
- map_color_code
- identity_status
- created_at
- updated_at


# ============================================================
# 3. GOVERNANCE MODELS
# ============================================================

## NATION_DRAFT_GOVERNANCE_PROFILE
core_fields:
- nation_draft_governance_profile_id
- nation_draft_id
- governance_style_code
- authority_structure_summary
- profile_status
- created_at
- updated_at

governance_style_code examples:
- monarchy
- imperial
- parliamentary
- presidential
- military_council
- religious_state
- hybrid_governance

## NATION_DRAFT_AUTHORITY_SEAT
core_fields:
- nation_draft_authority_seat_id
- nation_draft_id
- seat_code
- seat_name
- authority_scope
- seat_status
- created_at
- updated_at

seat_code examples:
- head_of_state
- head_of_government
- legislature
- upper_council
- judiciary
- military_command
- religious_authority


# ============================================================
# 4. CITY ROLE MODELS
# ============================================================

## NATION_DRAFT_MAJOR_CITY_ROLE
core_fields:
- nation_draft_major_city_role_id
- nation_draft_id
- city_ref_or_name
- city_role_code
- role_status
- created_at
- updated_at

city_role_code examples:
- capital_city
- sub_capital_city
- industrial_core_city
- academic_core_city
- port_core_city
- religious_core_city
- cultural_core_city


# ============================================================
# 5. POPULATION COMPOSITION MODELS
# ============================================================

## NATION_DRAFT_POPULATION_COMPOSITION
core_fields:
- nation_draft_population_composition_id
- nation_draft_id
- child_population_ratio
- working_population_ratio
- elderly_population_ratio
- urban_population_ratio
- education_level_summary
- income_structure_summary
- composition_status
- created_at
- updated_at


# ============================================================
# 6. PRIORITY INDUSTRY MODELS
# ============================================================

## NATION_DRAFT_PRIORITY_INDUSTRY
core_fields:
- nation_draft_priority_industry_id
- nation_draft_id
- industry_code
- priority_rank
- industry_status
- created_at
- updated_at

industry_code examples:
- resource
- industry
- commerce
- finance
- education
- arts
- religion
- tourism
- agriculture
- logistics


# ============================================================
# 7. CULTURE / RELIGION / VALUE MODELS
# ============================================================

## NATION_DRAFT_VALUE_TAG
core_fields:
- nation_draft_value_tag_id
- nation_draft_id
- value_tag_code
- intensity_rank
- tag_status
- created_at
- updated_at

value_tag_code examples:
- commerce_priority
- education_priority
- military_priority
- arts_priority
- religion_priority
- welfare_priority
- order_priority

## NATION_DRAFT_RELIGION_CULTURE_PROFILE
core_fields:
- nation_draft_religion_culture_profile_id
- nation_draft_id
- religion_summary
- culture_summary
- three_gods_relation_summary
- profile_status
- created_at
- updated_at


# ============================================================
# 8. PUBLIC SERVICE BASELINE MODELS
# ============================================================

## NATION_DRAFT_PUBLIC_SERVICE_BASELINE
core_fields:
- nation_draft_public_service_baseline_id
- nation_draft_id
- service_code
- target_level
- baseline_status
- created_at
- updated_at

service_code examples:
- public_order
- education
- medical
- welfare
- infrastructure


# ============================================================
# 9. HOLIDAY / EVENT MODELS
# ============================================================

## NATION_DRAFT_HOLIDAY
core_fields:
- nation_draft_holiday_id
- nation_draft_id
- holiday_code
- holiday_name
- holiday_type
- holiday_status
- created_at
- updated_at

holiday_type examples:
- founding_day
- religious_holiday
- cultural_holiday
- civic_holiday
- market_holiday

## NATION_DRAFT_NATIONAL_EVENT
core_fields:
- nation_draft_national_event_id
- nation_draft_id
- event_code
- event_name
- event_type
- event_status
- created_at
- updated_at

event_type examples:
- ceremony
- education_event
- religious_event
- military_event
- market_event
- cultural_event


# ============================================================
# 10. OPERATING PROFILE / INITIAL FRAME MODELS
# ============================================================

## NATION_DRAFT_OPERATING_PROFILE
core_fields:
- nation_draft_operating_profile_id
- nation_draft_id
- difficulty_code
- governance_trait_summary
- volatility_summary
- profile_status
- created_at
- updated_at

difficulty_code examples:
- beginner_friendly
- balanced
- volatile
- strict_governance
- high_growth
- high_conflict_risk

## NATION_DRAFT_INITIAL_FRAME
core_fields:
- nation_draft_initial_frame_id
- nation_draft_id
- initial_facility_frame_summary
- initial_company_frame_summary
- initial_market_frame_summary
- initial_population_frame_summary
- initial_asset_frame_summary
- frame_status
- created_at
- updated_at


# ============================================================
# 11. NOTIFICATION / DASHBOARD MODELS
# ============================================================

## NATION_DRAFT_NOTIFICATION_PROFILE
core_fields:
- nation_draft_notification_profile_id
- nation_draft_id
- notification_type
- enabled_flag
- profile_status
- created_at
- updated_at

notification_type examples:
- opening_notification
- company_notification
- market_notification
- infrastructure_notification
- religion_culture_notification
- service_shortage_notification


# ============================================================
# 12. FINAL MODEL MAP RULE
# ============================================================

This model map is the minimum extended support set
for nation builder inside CivilizationOS.

Core summary:

- template is explicit
- symbolic identity is explicit
- governance is explicit
- city roles are explicit
- population composition is explicit
- industries and values are explicit
- public service baselines are explicit
- holiday and event definitions are explicit
- operating profile and initial frame are explicit
- notification profile is explicit
