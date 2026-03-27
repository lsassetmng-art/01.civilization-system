# ============================================================
# CIVILIZATION NATION BUILDER UI ITEM TABLE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI item table
for nation builder inside CivilizationOS.

This table reflects:
- core nation builder sections
- zoning editor
- market tier editor
- extended nation profile sections
- validation / approval / publication readiness surfaces


# ============================================================
# 1. COMMON BUILDER LAYOUT
# ============================================================

recommended_layout:

left_panel:
- draft_list
- section_navigation
- validation_anchor_list
- draft_status_summary

center_panel:
- main_editor_surface
- form_editor
- zoning_editor
- market_tier_editor
- facility_placement_editor
- infrastructure_placement_editor

right_panel:
- selected_object_detail
- validation_summary
- contradiction_summary
- diff_summary
- publish_readiness_summary
- activation_readiness_summary


# ============================================================
# 2. PRIMARY BUILDER SECTIONS
# ============================================================

primary_sections:
- template
- symbolic_identity
- basic_identity
- governance
- major_city_roles
- territory
- population
- currency
- priority_industries
- culture_religion_values
- public_service_baselines
- holidays_and_events
- operating_profile
- initial_nation_frame
- regime_bundle
- zoning_editor
- market_tier_editor
- facility_placement
- infrastructure_placement
- notification_dashboard_profile
- validation
- approval
- publication_activation


# ============================================================
# 3. TEMPLATE SECTION UI ITEMS
# ============================================================

template_section_items:
- nation_template_select
- template_category_display
- template_apply_action
- template_applied_status
- template_override_notice


# ============================================================
# 4. SYMBOLIC IDENTITY SECTION UI ITEMS
# ============================================================

symbolic_identity_section_items:
- flag_upload_or_select
- emblem_upload_or_select
- primary_color_code
- secondary_color_code
- map_color_code
- symbolic_identity_status


# ============================================================
# 5. BASIC IDENTITY SECTION UI ITEMS
# ============================================================

basic_identity_section_items:
- formal_name
- short_name
- nation_code_candidate
- nation_type
- capital_candidate
- continent_code
- nation_summary


# ============================================================
# 6. GOVERNANCE SECTION UI ITEMS
# ============================================================

governance_section_items:
- governance_style_code
- authority_structure_summary
- authority_seat_list
- authority_seat_code
- authority_seat_name
- authority_scope
- head_of_state_setting
- head_of_government_setting
- legislature_setting
- judiciary_setting
- military_command_setting
- religious_authority_setting


# ============================================================
# 7. MAJOR CITY ROLE SECTION UI ITEMS
# ============================================================

major_city_role_section_items:
- city_ref_or_name
- city_role_code
- capital_city_assignment
- sub_capital_city_assignment
- industrial_core_city_assignment
- academic_core_city_assignment
- port_core_city_assignment
- religious_core_city_assignment
- cultural_core_city_assignment


# ============================================================
# 8. TERRITORY SECTION UI ITEMS
# ============================================================

territory_section_items:
- territory_summary
- region_scope_summary
- district_scope_summary
- capital_region_ref
- territory_validation_status


# ============================================================
# 9. POPULATION SECTION UI ITEMS
# ============================================================

population_section_items:
- population_baseline
- child_population_ratio
- working_population_ratio
- elderly_population_ratio
- urban_population_ratio
- education_level_summary
- income_structure_summary
- density_rank
- labor_profile_summary


# ============================================================
# 10. CURRENCY SECTION UI ITEMS
# ============================================================

currency_section_items:
- currency_code_candidate
- currency_name
- monetary_summary
- currency_profile_status


# ============================================================
# 11. PRIORITY INDUSTRIES SECTION UI ITEMS
# ============================================================

priority_industry_section_items:
- industry_code
- priority_rank
- industry_status

recommended_industry_codes:
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
# 12. CULTURE / RELIGION / VALUE SECTION UI ITEMS
# ============================================================

culture_religion_value_section_items:
- religion_summary
- culture_summary
- three_gods_relation_summary
- value_tag_code
- intensity_rank
- commerce_priority_tag
- education_priority_tag
- military_priority_tag
- arts_priority_tag
- religion_priority_tag
- welfare_priority_tag
- order_priority_tag


# ============================================================
# 13. PUBLIC SERVICE BASELINE SECTION UI ITEMS
# ============================================================

public_service_baseline_section_items:
- public_order_target_level
- education_target_level
- medical_target_level
- welfare_target_level
- infrastructure_target_level


# ============================================================
# 14. HOLIDAY / NATIONAL EVENT SECTION UI ITEMS
# ============================================================

holiday_event_section_items:
- holiday_code
- holiday_name
- holiday_type
- national_event_code
- national_event_name
- national_event_type

holiday_type_examples:
- founding_day
- religious_holiday
- cultural_holiday
- civic_holiday
- market_holiday

national_event_type_examples:
- ceremony
- education_event
- religious_event
- military_event
- market_event
- cultural_event


# ============================================================
# 15. OPERATING PROFILE SECTION UI ITEMS
# ============================================================

operating_profile_section_items:
- difficulty_code
- governance_trait_summary
- volatility_summary
- operating_profile_status

difficulty_code_examples:
- beginner_friendly
- balanced
- volatile
- strict_governance
- high_growth
- high_conflict_risk


# ============================================================
# 16. INITIAL NATION FRAME SECTION UI ITEMS
# ============================================================

initial_nation_frame_section_items:
- initial_facility_frame_summary
- initial_company_frame_summary
- initial_market_frame_summary
- initial_population_frame_summary
- initial_asset_frame_summary
- frame_status


# ============================================================
# 17. REGIME BUNDLE SECTION UI ITEMS
# ============================================================

regime_bundle_section_items:
- property_regime_profile_ref
- tax_regime_profile_ref
- company_regime_profile_ref
- banking_regime_profile_ref
- securities_regime_profile_ref
- welfare_regime_profile_ref
- education_regime_profile_ref
- military_regime_profile_ref
- bundle_status


# ============================================================
# 18. ZONING EDITOR UI ITEMS
# ============================================================

zoning_editor_tabs:
- zone_map
- zone_rules
- allowed_company_types
- allowed_site_store_types
- restrictions
- zoning_validation

zoning_editor_items:
- selected_region_ref
- selected_district_ref
- zone_type
- zone_status
- allowed_company_type_list
- allowed_site_type_list
- allowed_store_type_list
- public_open_allowed
- late_night_operation_allowed
- high_traffic_event_allowed
- religious_activity_allowed
- screening_event_allowed
- exhibition_event_allowed
- zoning_validation_status


# ============================================================
# 19. MARKET TIER EDITOR UI ITEMS
# ============================================================

market_tier_editor_tabs:
- listing_style
- market_tiers
- threshold_rules
- company_type_eligibility
- listing_validation

market_tier_editor_items:
- listing_system_style
- multi_tier_enabled
- market_tier_code
- display_name
- tier_rank
- minimum_operating_period_days
- minimum_evaluation_score
- minimum_activity_score
- minimum_compliance_score
- minimum_disclosure_score
- optional_scale_threshold_summary
- company_type_code
- listing_eligible_flag
- listing_restriction_summary
- listing_validation_status


# ============================================================
# 20. FACILITY PLACEMENT UI ITEMS
# ============================================================

facility_placement_tabs:
- facility_palette
- placement_surface
- design_selection
- effective_stats
- placement_validation

facility_placement_items:
- selected_region_ref
- selected_district_ref
- facility_type_ref
- facility_design_package_ref
- placement_x
- placement_y
- rotation_code
- placement_status
- base_stat_summary
- design_bonus_summary
- effective_stat_summary
- placement_validation_status


# ============================================================
# 21. INFRASTRUCTURE PLACEMENT UI ITEMS
# ============================================================

infrastructure_placement_tabs:
- infrastructure_palette
- placement_surface
- topology_connections
- effective_stats
- placement_validation

infrastructure_placement_items:
- infrastructure_type_ref
- placement_x
- placement_y
- topology_summary
- connection_list
- placement_status
- effective_stat_summary
- connectivity_validation_status


# ============================================================
# 22. NOTIFICATION / DASHBOARD PROFILE UI ITEMS
# ============================================================

notification_dashboard_profile_items:
- opening_notification_enabled
- company_notification_enabled
- market_notification_enabled
- infrastructure_notification_enabled
- religion_culture_notification_enabled
- service_shortage_notification_enabled
- dashboard_profile_status


# ============================================================
# 23. VALIDATION / APPROVAL / PUBLICATION UI ITEMS
# ============================================================

validation_approval_publication_items:
- validation_summary
- contradiction_summary
- unresolved_rule_summary
- diff_summary
- approval_status
- publication_status
- publish_readiness_summary
- activation_readiness_summary


# ============================================================
# 24. FINAL UI ITEM TABLE RULE
# ============================================================

Nation builder UI item tables in CivilizationOS must be:
- template-aware
- identity-aware
- governance-aware
- city-role-aware
- population-aware
- industry-aware
- culture-aware
- service-aware
- zoning-aware
- market-tier-aware
- placement-aware
- notification-aware
- validation-aware
