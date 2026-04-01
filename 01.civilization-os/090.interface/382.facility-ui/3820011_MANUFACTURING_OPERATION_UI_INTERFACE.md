# ============================================================
# MANUFACTURING OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: manufacturing-operation-ui-interface
component: manufacturing-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the manufacturing operation UI interface contract
for Civilization production-process facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MANUFACTURING_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for manufacturing operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- manufacturing_overview_screen
- manufacturing_manage_screen
- manufacturing_line_and_process_screen
- manufacturing_input_material_screen
- manufacturing_machine_and_equipment_screen
- manufacturing_staffing_screen
- manufacturing_quality_and_defect_screen
- manufacturing_maintenance_and_downtime_screen
- manufacturing_issue_screen


# ============================================================
# 3. MANUFACTURING OVERVIEW SCREEN
# ============================================================

screen_id: manufacturing_overview_screen
route_key: manufacturing/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- manufacturing_summary_card
- manufacturing_status_strip
- manufacturing_input_warning_panel
- manufacturing_quality_warning_panel
- manufacturing_kpi_strip
- manufacturing_issue_panel
- manufacturing_recent_history_panel

primary_actions:
- open_manufacturing_manage
- open_manufacturing_line_and_process
- open_manufacturing_maintenance_and_downtime
- open_manufacturing_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MANUFACTURING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- line_and_process_tab
- input_material_tab
- machine_and_equipment_tab
- staffing_tab
- quality_and_defect_tab
- maintenance_and_downtime_tab
- output_and_linked_flow_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MANUFACTURING SUMMARY CARD
# ============================================================

section_id: manufacturing_summary_card
section_type: summary_card

fields:
- facility_name
- production_type
- operation_context
- district_summary
- line_state
- input_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. LINE AND PROCESS TAB
# ============================================================

section_id: manufacturing_line_and_process_section
section_type: table

fields:
- line_or_process_group
- priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_line_detail
- reprioritize_line
- escalate_line_issue


# ============================================================
# 7. INPUT MATERIAL TAB
# ============================================================

section_id: manufacturing_input_material_section
section_type: table

fields:
- input_group
- sufficiency_state
- shortage_flag
- replenishment_need_flag
- dependency_visibility
- interruption_risk_flag

actions:
- open_input_detail
- escalate_input_issue
- trigger_input_action where supported


# ============================================================
# 8. MACHINE AND EQUIPMENT TAB
# ============================================================

section_id: manufacturing_machine_and_equipment_section
section_type: table

fields:
- machine_group
- readiness_state
- degradation_flag
- operational_strain_flag
- breakdown_risk_flag
- reassignment_need_flag

actions:
- open_machine_detail
- reassign_machine_support
- escalate_machine_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: manufacturing_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- skill_mismatch_flag where applicable
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. QUALITY AND DEFECT TAB
# ============================================================

section_id: manufacturing_quality_and_defect_section
section_type: issue_panel

fields:
- quality_state
- defect_risk_flag
- unstable_output_flag
- mismatch_signal_flag
- corrective_urgency_flag
- rework_burden_flag where supported

actions:
- open_quality_detail
- escalate_quality_issue
- trigger_quality_correction where supported


# ============================================================
# 11. MAINTENANCE AND DOWNTIME TAB
# ============================================================

section_id: manufacturing_maintenance_and_downtime_section
section_type: table

fields:
- maintenance_burden_state
- downtime_state
- repair_backlog_flag
- urgent_maintenance_flag
- line_interruption_flag
- escalation_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 12. OUTPUT AND LINKED FLOW TAB
# ============================================================

section_id: manufacturing_output_and_linked_flow_section
section_type: table

fields:
- output_group
- completion_state
- backlog_flag
- shipment_readiness_state
- storage_pressure_flag
- instability_flag

actions:
- open_output_detail
- open_linked_logistics
- escalate_output_issue


# ============================================================
# 13. AUTOMATION TAB
# ============================================================

section_id: manufacturing_automation_section
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
# 14. KPI TAB
# ============================================================

section_id: manufacturing_kpi_section
section_type: metric_strip

kpi_items:
- production_continuity_posture
- line_utilization_posture
- input_sufficiency_posture
- machine_continuity_posture
- quality_posture
- intervention_frequency_posture


# ============================================================
# 15. ISSUE TAB
# ============================================================

section_id: manufacturing_issue_section
section_type: issue_panel

issue_types:
- input_shortage
- line_instability
- machine_degradation
- breakdown_concern
- staffing_shortage
- quality_degradation
- downtime_concentration
- shipment_linkage_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 16. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

line_operator:
- line_and_process_tab
- machine_and_equipment_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- machine_and_equipment_tab
- maintenance_and_downtime_tab
- issue_tab
- summary_tab

quality_operator:
- quality_and_defect_tab
- issue_tab
- output_and_linked_flow_tab limited
- history_tab limited


# ============================================================
# 17. FINAL RULE
# ============================================================

Manufacturing UI interface must remain
process-oriented,
line-visible,
input-visible,
machine-visible,
quality-visible,
issue-visible,
and explicitly separable
from logistics or infrastructure UI.
