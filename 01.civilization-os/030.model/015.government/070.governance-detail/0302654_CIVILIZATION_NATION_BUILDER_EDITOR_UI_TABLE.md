# ============================================================
# CIVILIZATION NATION BUILDER EDITOR UI TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI table for nation builder editor extensions
inside CivilizationOS.


# ============================================================
# 1. ZONING EDITOR UI TABLE
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


# ============================================================
# 2. MARKET TIER EDITOR UI TABLE
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


# ============================================================
# 3. CROSS-EDITOR UI ITEMS
# ============================================================

cross_editor_items:
- validation_summary
- contradiction_summary
- unresolved_rule_summary
- diff_summary
- publish_readiness_summary
- activation_readiness_summary


# ============================================================
# 4. FINAL UI TABLE RULE
# ============================================================

This UI table defines the official editor items
for zoning and market-tier editing
inside CivilizationOS nation builder.
