# ============================================================
# MILITARY BASE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: military-base-operation-ui-interface
component: military-base-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the military base operation UI interface contract
for Civilization defense-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for military base operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- military_overview_screen
- military_manage_screen
- military_force_organization_screen
- military_readiness_and_alert_screen
- military_equipment_screen
- military_supply_and_support_screen
- military_training_screen
- military_deployment_support_screen
- military_issue_screen


# ============================================================
# 3. MILITARY OVERVIEW SCREEN
# ============================================================

screen_id: military_overview_screen
route_key: military/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- military_summary_card
- military_status_strip
- military_readiness_warning_panel
- military_supply_warning_panel
- military_kpi_strip
- military_issue_panel
- military_recent_history_panel

primary_actions:
- open_military_manage
- open_military_force_organization
- open_military_readiness_and_alert
- open_military_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MILITARY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- force_organization_tab
- readiness_and_alert_tab
- equipment_tab
- supply_and_support_tab
- training_tab
- deployment_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MILITARY SUMMARY CARD
# ============================================================

section_id: military_summary_card
section_type: summary_card

fields:
- facility_name
- base_type
- defense_role
- district_or_strategic_summary
- readiness_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. FORCE ORGANIZATION TAB
# ============================================================

section_id: military_force_organization_section
section_type: table

fields:
- force_group
- role_group
- balance_state
- unsupported_area_flag
- concentration_flag
- reallocation_pressure_flag

actions:
- open_force_detail
- reassign_force where supported
- escalate_force_issue


# ============================================================
# 7. READINESS AND ALERT TAB
# ============================================================

section_id: military_readiness_and_alert_section
section_type: detail_panel

fields:
- readiness_state
- alert_state
- degraded_readiness_flag
- instability_flag
- surge_burden_flag
- corrective_need_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- correct_alert_posture where supported


# ============================================================
# 8. EQUIPMENT TAB
# ============================================================

section_id: military_equipment_section
section_type: table

fields:
- equipment_group
- readiness_state
- degradation_flag
- maintenance_burden_flag
- capability_gap_flag
- downtime_need_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_maintenance_action


# ============================================================
# 9. SUPPLY AND SUPPORT TAB
# ============================================================

section_id: military_supply_and_support_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- escalation_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_support_action where supported


# ============================================================
# 10. TRAINING TAB
# ============================================================

section_id: military_training_section
section_type: grouped_list

fields:
- training_group
- preparedness_state
- unsupported_area_flag
- imbalance_flag
- readiness_improvement_need_flag
- correction_urgency_flag

actions:
- open_training_detail
- reprioritize_training
- escalate_training_issue


# ============================================================
# 11. DEPLOYMENT SUPPORT TAB
# ============================================================

section_id: military_deployment_support_section
section_type: relationship_panel

fields:
- deployment_support_state
- movement_readiness_state
- support_burden_flag
- staging_visibility
- instability_flag
- logistics_dependency_flag

actions:
- open_deployment_detail
- open_linked_logistics
- escalate_deployment_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: military_automation_section
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

section_id: military_kpi_section
section_type: metric_strip

kpi_items:
- readiness_posture
- force_sufficiency_posture
- supply_sufficiency_posture
- equipment_continuity_posture
- training_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: military_issue_section
section_type: issue_panel

issue_types:
- degraded_readiness
- supply_shortage
- equipment_degradation
- training_shortfall
- alert_instability
- support_burden_concern
- linked_logistics_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager_or_command:
- all tabs visible
- all standard actions visible

operations_operator:
- readiness_and_alert_tab
- deployment_support_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- equipment_tab
- supply_and_support_tab limited
- issue_tab
- summary_tab

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Military UI interface must remain
defense-oriented,
force-visible,
readiness-visible,
supply-visible,
equipment-visible,
issue-visible,
and explicitly separable
from security or logistics UI.
