# ============================================================
# HOSPITAL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: hospital-operation-ui-interface
component: hospital-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the hospital operation UI interface contract
for Civilization medical-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOSPITAL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for hospital operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- hospital_overview_screen
- hospital_manage_screen
- hospital_patient_flow_screen
- hospital_capacity_screen
- hospital_staffing_screen
- hospital_supply_screen
- hospital_emergency_screen
- hospital_sanitation_and_safety_screen
- hospital_issue_screen


# ============================================================
# 3. HOSPITAL OVERVIEW SCREEN
# ============================================================

screen_id: hospital_overview_screen
route_key: hospital/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- hospital_summary_card
- hospital_status_strip
- hospital_capacity_warning_panel
- hospital_supply_warning_panel
- hospital_kpi_strip
- hospital_issue_panel
- hospital_recent_history_panel

primary_actions:
- open_hospital_manage
- open_hospital_patient_flow
- open_hospital_emergency
- open_hospital_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. HOSPITAL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- patient_flow_tab
- capacity_tab
- staffing_tab
- supply_tab
- emergency_tab
- sanitation_and_safety_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. HOSPITAL SUMMARY CARD
# ============================================================

section_id: hospital_summary_card
section_type: summary_card

fields:
- facility_name
- medical_facility_type
- institution_context
- district_summary
- care_load_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PATIENT FLOW TAB
# ============================================================

section_id: hospital_patient_flow_section
section_type: table

fields:
- intake_group
- patient_flow_posture
- backlog_flag
- overload_flag
- bottleneck_flag
- support_need_flag

actions:
- open_patient_flow_detail
- reprioritize_flow where supported
- escalate_patient_flow_issue


# ============================================================
# 7. CAPACITY TAB
# ============================================================

section_id: hospital_capacity_section
section_type: table

fields:
- department_or_ward_group
- capacity_value
- utilization_state
- overload_flag
- underuse_flag
- mismatch_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: hospital_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- emergency_staffing_stress_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. SUPPLY TAB
# ============================================================

section_id: hospital_supply_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- replenishment_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_emergency_supply_action


# ============================================================
# 10. EMERGENCY TAB
# ============================================================

section_id: hospital_emergency_section
section_type: detail_panel

fields:
- emergency_readiness_state
- surge_pressure_flag
- emergency_capacity_flag
- emergency_staffing_state
- critical_supply_state
- escalation_need_flag

actions:
- open_emergency_detail
- escalate_emergency_state
- trigger_emergency_response where supported


# ============================================================
# 11. SANITATION AND SAFETY TAB
# ============================================================

section_id: hospital_sanitation_and_safety_section
section_type: issue_panel

fields:
- sanitation_state
- hygiene_state
- contamination_concern_flag where supported
- safety_incident_flag
- corrective_burden_flag
- escalation_need_flag

actions:
- open_sanitation_detail
- escalate_sanitation_issue
- trigger_safety_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: hospital_automation_section
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

section_id: hospital_kpi_section
section_type: metric_strip

kpi_items:
- care_load_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- emergency_readiness_posture
- supply_sufficiency_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: hospital_issue_section
section_type: issue_panel

issue_types:
- overload
- staff_shortage
- critical_supply_shortage
- emergency_readiness_concern
- sanitation_or_safety_concern
- intake_bottleneck
- care_capacity_mismatch

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

medical_staff:
- summary_tab
- patient_flow_tab limited
- staffing_tab limited
- supply_tab limited
- issue_tab
- history_tab limited

emergency_operator:
- emergency_tab
- issue_tab
- summary_tab
- linked_tab limited

authority:
- summary_tab
- sanitation_and_safety_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Hospital UI interface must remain
medical-care-oriented,
capacity-visible,
supply-visible,
emergency-visible,
issue-visible,
and explicitly separable
from pure welfare or civic UI.
