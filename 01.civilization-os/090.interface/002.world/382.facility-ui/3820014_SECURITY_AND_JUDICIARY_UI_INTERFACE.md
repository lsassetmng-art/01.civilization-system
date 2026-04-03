# ============================================================
# SECURITY AND JUDICIARY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: security-and-judiciary-ui-interface
component: security-and-judiciary-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the security and judiciary UI interface contract
for Civilization enforcement- and justice-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SECURITY_AND_JUDICIARY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for security and judiciary UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- security_overview_screen
- security_manage_screen
- security_incident_and_intake_screen
- security_case_and_process_screen
- security_custody_and_capacity_screen
- security_staffing_screen
- security_readiness_and_escalation_screen
- security_stability_screen
- security_issue_screen


# ============================================================
# 3. SECURITY OVERVIEW SCREEN
# ============================================================

screen_id: security_overview_screen
route_key: security/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- security_summary_card
- security_status_strip
- security_case_warning_panel
- security_capacity_warning_panel
- security_kpi_strip
- security_issue_panel
- security_recent_history_panel

primary_actions:
- open_security_manage
- open_security_incident_and_intake
- open_security_case_and_process
- open_security_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SECURITY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- incident_and_intake_tab
- case_and_process_tab
- custody_and_capacity_tab
- staffing_tab
- readiness_and_escalation_tab
- stability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SECURITY SUMMARY CARD
# ============================================================

section_id: security_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- authority_context
- district_summary
- incident_state
- case_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. INCIDENT AND INTAKE TAB
# ============================================================

section_id: security_incident_and_intake_section
section_type: table

fields:
- incident_group
- intake_load_state
- severity_state
- response_burden_flag
- backlog_flag
- escalation_need_flag

actions:
- open_incident_detail
- reprioritize_response
- escalate_incident_issue


# ============================================================
# 7. CASE AND PROCESS TAB
# ============================================================

section_id: security_case_and_process_section
section_type: table

fields:
- case_group
- process_backlog_state
- blocked_case_flag
- delayed_case_flag
- progression_state
- escalation_need_flag

actions:
- open_case_detail
- escalate_case
- reprioritize_case_handling


# ============================================================
# 8. CUSTODY AND CAPACITY TAB
# ============================================================

section_id: security_custody_and_capacity_section
section_type: table

fields:
- custody_group
- capacity_value
- utilization_state
- overcapacity_flag
- transfer_need_flag
- stability_pressure_flag

actions:
- open_custody_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: security_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- response_burden_flag
- process_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. READINESS AND ESCALATION TAB
# ============================================================

section_id: security_readiness_and_escalation_section
section_type: detail_panel

fields:
- readiness_state
- escalation_state
- emergency_response_visibility
- instability_flag
- rapid_correction_need_flag
- dependency_visibility

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_response_action where supported


# ============================================================
# 11. STABILITY TAB
# ============================================================

section_id: security_stability_section
section_type: issue_panel

fields:
- safety_state
- internal_stability_state
- custody_stability_state where applicable
- risk_concentration_flag
- support_burden_flag
- urgent_correction_flag

actions:
- open_stability_detail
- escalate_stability_issue
- trigger_follow_up where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: security_automation_section
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

section_id: security_kpi_section
section_type: metric_strip

kpi_items:
- response_continuity_posture
- intake_posture
- case_progression_posture
- custody_capacity_posture
- escalation_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: security_issue_section
section_type: issue_panel

issue_types:
- incident_overload
- case_backlog
- staffing_shortage
- custody_capacity_concern
- escalation_delay
- stability_concern
- linked_authority_inconsistency_visibility

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

response_operator:
- incident_and_intake_tab
- readiness_and_escalation_tab limited
- issue_tab
- history_tab limited

case_operator:
- case_and_process_tab
- issue_tab
- summary_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Security and judiciary UI interface must remain
authority-oriented,
incident-visible,
case-visible,
capacity-visible,
readiness-visible,
issue-visible,
and explicitly separable
from government or military UI.
