# ============================================================
# CIVILIZATION NATION BUILDER UI SURFACE TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI surface table
for nation builder inside CivilizationOS.


# ============================================================
# 1. CORE UI SURFACES
# ============================================================

core_ui_surfaces:
- nation_draft_list_surface
- nation_draft_create_surface
- template_selection_surface
- symbolic_identity_surface
- basic_identity_surface
- governance_surface
- major_city_role_surface
- territory_surface
- population_surface
- currency_surface
- priority_industry_surface
- culture_religion_value_surface
- public_service_baseline_surface
- holiday_event_surface
- operating_profile_surface
- initial_nation_frame_surface
- regime_bundle_surface
- validation_surface
- approval_surface
- publication_activation_surface


# ============================================================
# 2. EDITOR UI SURFACES
# ============================================================

editor_ui_surfaces:
- zoning_map_editor_surface
- zoning_rule_editor_surface
- market_tier_editor_surface
- market_tier_threshold_surface
- company_type_listing_eligibility_surface
- facility_placement_surface
- facility_design_selection_surface
- infrastructure_placement_surface
- topology_editor_surface


# ============================================================
# 3. DASHBOARD / REVIEW UI SURFACES
# ============================================================

dashboard_review_ui_surfaces:
- notification_dashboard_profile_surface
- contradiction_review_surface
- diff_review_surface
- publish_readiness_surface
- activation_readiness_surface


# ============================================================
# 4. REQUIRED UI GROUPS
# ============================================================

required_ui_groups:
- symbolic_identity_group
- governance_group
- city_role_group
- population_group
- industry_group
- culture_religion_group
- public_service_group
- holiday_event_group
- operating_profile_group
- initial_frame_group
- zoning_group
- market_tier_group
- facility_placement_group
- infrastructure_group
- notification_group
- validation_group


# ============================================================
# 5. FINAL UI SURFACE TABLE RULE
# ============================================================

This table defines the official UI surface mapping
for the full nation builder inside CivilizationOS.

Core summary:

- core nation drafting surfaces are explicit
- editor surfaces are explicit
- dashboard/review surfaces are explicit
- extended nation builder groups are explicit
