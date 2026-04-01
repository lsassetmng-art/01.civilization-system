# ============================================================
# LOGISTICS AND TRANSPORT OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: logistics-and-transport-operation-ui-interface
component: logistics-and-transport-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the logistics and transport operation UI interface contract
for Civilization movement-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for logistics and transport operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- logistics_overview_screen
- logistics_manage_screen
- logistics_route_and_service_screen
- logistics_storage_and_transfer_screen
- logistics_capacity_screen
- logistics_staffing_screen
- logistics_reliability_and_delay_screen
- logistics_incident_and_disruption_screen
- logistics_issue_screen


# ============================================================
# 3. LOGISTICS OVERVIEW SCREEN
# ============================================================

screen_id: logistics_overview_screen
route_key: logistics/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- logistics_summary_card
- logistics_status_strip
- logistics_delay_warning_panel
- logistics_capacity_warning_panel
- logistics_kpi_strip
- logistics_issue_panel
- logistics_recent_history_panel

primary_actions:
- open_logistics_manage
- open_logistics_route_and_service
- open_logistics_incident_and_disruption
- open_logistics_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LOGISTICS MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- route_and_service_tab
- storage_and_transfer_tab
- capacity_tab
- staffing_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LOGISTICS SUMMARY CARD
# ============================================================

section_id: logistics_summary_card
section_type: summary_card

fields:
- facility_name
- node_type
- service_role
- district_summary
- route_state
- capacity_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROUTE AND SERVICE TAB
# ============================================================

section_id: logistics_route_and_service_section
section_type: table

fields:
- route_or_service_group
- service_priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_route_detail
- reprioritize_route
- escalate_route_issue


# ============================================================
# 7. STORAGE AND TRANSFER TAB
# ============================================================

section_id: logistics_storage_and_transfer_section
section_type: table

fields:
- storage_or_transfer_group
- load_state
- backlog_flag
- dwell_pressure_flag
- handoff_stability_state
- bottleneck_flag

actions:
- open_storage_detail
- correct_transfer_allocation
- escalate_transfer_issue


# ============================================================
# 8. CAPACITY TAB
# ============================================================

section_id: logistics_capacity_section
section_type: table

fields:
- capacity_group
- capacity_value
- utilization_state
- equipment_sufficiency_state
- readiness_flag
- reassignment_need_flag

actions:
- open_capacity_detail
- reassign_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: logistics_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- dispatch_burden_flag
- handling_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. RELIABILITY AND DELAY TAB
# ============================================================

section_id: logistics_reliability_and_delay_section
section_type: issue_panel

fields:
- delay_state
- reliability_state
- bottleneck_concentration_flag
- disruption_spread_flag
- unstable_service_flag
- corrective_urgency_flag

actions:
- open_reliability_detail
- escalate_delay_issue
- trigger_correction_action where supported


# ============================================================
# 11. INCIDENT AND DISRUPTION TAB
# ============================================================

section_id: logistics_incident_and_disruption_section
section_type: issue_panel

fields:
- incident_group
- severity_state
- affected_service_count
- spread_risk_flag
- emergency_routing_need_flag
- manual_override_need_flag

actions:
- open_incident_detail
- escalate_incident
- trigger_disruption_response where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: logistics_automation_section
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

section_id: logistics_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- capacity_sufficiency_posture
- storage_transfer_posture
- route_reliability_posture
- disruption_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: logistics_issue_section
section_type: issue_panel

issue_types:
- route_instability
- delay_concentration
- storage_backlog
- transfer_bottleneck
- staffing_shortage
- handling_shortage
- disruption_cascade_concern

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

dispatch_operator:
- route_and_service_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- issue_tab
- history_tab limited

transfer_operator:
- storage_and_transfer_tab
- capacity_tab limited
- issue_tab
- summary_tab

authority:
- summary_tab
- incident_and_disruption_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Logistics UI interface must remain
movement-oriented,
route-visible,
capacity-visible,
delay-visible,
disruption-visible,
issue-visible,
and explicitly separable
from manufacturing or infrastructure UI.
