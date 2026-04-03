# ============================================================
# HOUSING AND RESIDENCE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: housing-and-residence-ui-interface
component: housing-and-residence-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the housing and residence UI interface contract
for Civilization living-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOUSING_AND_RESIDENCE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for residence UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- residence_overview_screen
- residence_manage_screen
- resident_household_screen
- residence_unit_structure_screen
- residence_occupancy_screen
- residence_livability_screen
- residence_maintenance_screen
- residence_neighborhood_screen
- residence_issue_screen


# ============================================================
# 3. RESIDENCE OVERVIEW SCREEN
# ============================================================

screen_id: residence_overview_screen
route_key: residence/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- residence_summary_card
- residence_status_strip
- residence_occupancy_warning_panel
- residence_livability_warning_panel
- residence_kpi_strip
- residence_issue_panel
- residence_recent_history_panel

primary_actions:
- open_residence_manage
- open_resident_household
- open_residence_maintenance
- open_residence_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESIDENCE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- resident_tab
- structure_tab
- occupancy_tab
- livability_tab
- maintenance_tab
- neighborhood_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESIDENCE SUMMARY CARD
# ============================================================

section_id: residence_summary_card
section_type: summary_card

fields:
- facility_name
- residence_type
- occupancy_state
- management_context
- district_summary
- livability_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. RESIDENT TAB
# ============================================================

section_id: resident_household_section
section_type: grouped_list

fields:
- resident_group
- household_group where applicable
- resident_count
- support_need_flag
- assignment_context_flag where applicable

actions:
- open_resident_detail
- reassign_resident where supported
- escalate_support_need


# ============================================================
# 7. STRUCTURE TAB
# ============================================================

section_id: residence_structure_section
section_type: table

fields:
- unit_or_room_name
- unit_type
- shared_or_private_state
- suitability_state
- furnishing_completeness_flag where supported
- maintenance_flag

actions:
- open_structure_detail
- reassign_unit where supported


# ============================================================
# 8. OCCUPANCY TAB
# ============================================================

section_id: residence_occupancy_section
section_type: table

fields:
- capacity_value
- current_occupancy_value
- vacancy_state
- crowding_flag
- turnover_signal
- reallocation_pressure_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_overcrowding


# ============================================================
# 9. LIVABILITY TAB
# ============================================================

section_id: residence_livability_section
section_type: detail_panel

fields:
- comfort_state
- cleanliness_state where applicable
- privacy_state where applicable
- daily_life_support_access_state
- environmental_suitability_state
- quality_of_life_warning_flag

actions:
- open_livability_detail
- apply_livability_correction


# ============================================================
# 10. MAINTENANCE TAB
# ============================================================

section_id: residence_maintenance_section
section_type: table

fields:
- utility_availability_state
- maintenance_burden_state
- repair_backlog_flag
- deterioration_state
- habitability_risk_flag
- urgent_maintenance_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 11. NEIGHBORHOOD TAB
# ============================================================

section_id: residence_neighborhood_section
section_type: relationship_panel

fields:
- district_context
- nearby_school_access_state
- nearby_hospital_access_state
- nearby_market_access_state
- transport_access_state
- community_support_access_state
- safety_context_state

actions:
- open_linked_facility
- view_local_dependency


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: residence_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: residence_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- livability_posture
- maintenance_posture
- utility_stability_posture
- neighborhood_access_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: residence_issue_section
section_type: issue_panel

issue_types:
- overcrowding
- under_maintenance
- livability_degradation
- safety_concern
- utility_disruption
- resident_support_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all actions except restricted authority-only actions

owner:
- all tabs visible
- some actions may be limited by managed context

resident:
- summary_tab
- resident_tab limited
- neighborhood_tab
- issue_tab limited visibility
- permission tab hidden

authority_or_support_operator:
- issue_tab
- neighborhood_tab
- resident_tab with role-based limits
- maintenance_tab where applicable


# ============================================================
# 16. FINAL RULE
# ============================================================

Residence UI interface must remain
living-oriented,
livability-visible,
occupancy-visible,
and explicitly separable
from pure real-estate asset logic.
