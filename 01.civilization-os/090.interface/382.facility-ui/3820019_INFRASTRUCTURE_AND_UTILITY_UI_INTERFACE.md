# ============================================================
# INFRASTRUCTURE AND UTILITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: infrastructure-and-utility-ui-interface
component: infrastructure-and-utility-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the infrastructure and utility UI interface contract
for Civilization foundational-service facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for infrastructure and utility UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- infrastructure_overview_screen
- infrastructure_manage_screen
- infrastructure_coverage_and_region_screen
- infrastructure_supply_and_capacity_screen
- infrastructure_dependency_and_linkage_screen
- infrastructure_maintenance_and_condition_screen
- infrastructure_outage_and_restoration_screen
- infrastructure_staffing_and_control_screen
- infrastructure_issue_screen


# ============================================================
# 3. INFRASTRUCTURE OVERVIEW SCREEN
# ============================================================

screen_id: infrastructure_overview_screen
route_key: infrastructure/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- infrastructure_summary_card
- infrastructure_status_strip
- infrastructure_outage_warning_panel
- infrastructure_dependency_warning_panel
- infrastructure_kpi_strip
- infrastructure_issue_panel
- infrastructure_recent_history_panel

primary_actions:
- open_infrastructure_manage
- open_infrastructure_coverage_and_region
- open_infrastructure_outage_and_restoration
- open_infrastructure_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. INFRASTRUCTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- coverage_and_region_tab
- supply_and_capacity_tab
- dependency_and_linkage_tab
- maintenance_and_condition_tab
- outage_and_restoration_tab
- staffing_and_control_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. INFRASTRUCTURE SUMMARY CARD
# ============================================================

section_id: infrastructure_summary_card
section_type: summary_card

fields:
- facility_name
- utility_type
- service_role
- district_summary
- coverage_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. COVERAGE AND REGION TAB
# ============================================================

section_id: infrastructure_coverage_and_region_section
section_type: table

fields:
- region_group
- coverage_state
- uncovered_flag
- overextended_flag
- imbalance_flag
- priority_region_flag

actions:
- open_region_detail
- reprioritize_region
- escalate_coverage_issue


# ============================================================
# 7. SUPPLY AND CAPACITY TAB
# ============================================================

section_id: infrastructure_supply_and_capacity_section
section_type: table

fields:
- supply_group
- capacity_value
- supply_state
- overload_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_supply_detail
- correct_supply_allocation
- escalate_supply_issue


# ============================================================
# 8. DEPENDENCY AND LINKAGE TAB
# ============================================================

section_id: infrastructure_dependency_and_linkage_section
section_type: detail_panel

fields:
- dependency_group
- linked_facility_visibility
- critical_dependency_flag
- cascading_risk_flag
- unstable_link_flag
- correction_urgency_flag

actions:
- open_dependency_detail
- open_linked_facility
- escalate_dependency_issue


# ============================================================
# 9. MAINTENANCE AND CONDITION TAB
# ============================================================

section_id: infrastructure_maintenance_and_condition_section
section_type: table

fields:
- maintenance_group
- maintenance_burden_state
- repair_backlog_flag
- degradation_flag
- interruption_risk_flag
- restoration_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 10. OUTAGE AND RESTORATION TAB
# ============================================================

section_id: infrastructure_outage_and_restoration_section
section_type: issue_panel

fields:
- outage_group
- outage_state
- restoration_progress_state
- affected_region_count
- emergency_correction_flag
- recovery_burden_flag

actions:
- open_outage_detail
- escalate_outage_issue
- trigger_restoration_action where supported


# ============================================================
# 11. STAFFING AND CONTROL TAB
# ============================================================

section_id: infrastructure_staffing_and_control_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- control_burden_flag
- maintenance_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: infrastructure_automation_section
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

section_id: infrastructure_kpi_section
section_type: metric_strip

kpi_items:
- coverage_posture
- supply_sufficiency_posture
- outage_posture
- restoration_posture
- dependency_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: infrastructure_issue_section
section_type: issue_panel

issue_types:
- coverage_gap
- supply_instability
- outage_concentration
- dependency_concern
- maintenance_overload
- staffing_shortage
- restoration_delay

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

control_operator:
- supply_and_capacity_tab
- dependency_and_linkage_tab limited
- outage_and_restoration_tab
- issue_tab

maintenance_operator:
- maintenance_and_condition_tab
- outage_and_restoration_tab limited
- issue_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Infrastructure UI interface must remain
utility-service-oriented,
coverage-visible,
supply-visible,
outage-visible,
dependency-visible,
issue-visible,
and explicitly separable
from logistics or manufacturing UI.
