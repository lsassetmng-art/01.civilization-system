# ============================================================
# RESEARCH AND TECHNOLOGY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: research-and-technology-ui-interface
component: research-and-technology-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the research and technology UI interface contract
for Civilization research-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for research and technology UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- research_overview_screen
- research_manage_screen
- research_program_and_focus_screen
- research_staff_and_allocation_screen
- research_laboratory_and_equipment_screen
- research_output_and_progress_screen
- research_budget_and_support_screen
- research_issue_screen


# ============================================================
# 3. RESEARCH OVERVIEW SCREEN
# ============================================================

screen_id: research_overview_screen
route_key: research/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- research_summary_card
- research_status_strip
- research_equipment_warning_panel
- research_progress_warning_panel
- research_kpi_strip
- research_issue_panel
- research_recent_history_panel

primary_actions:
- open_research_manage
- open_research_program_and_focus
- open_research_output_and_progress
- open_research_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESEARCH MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_focus_tab
- staff_and_allocation_tab
- laboratory_and_equipment_tab
- output_and_progress_tab
- budget_and_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESEARCH SUMMARY CARD
# ============================================================

section_id: research_summary_card
section_type: summary_card

fields:
- facility_name
- research_type
- institution_context
- district_summary
- program_state
- equipment_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND FOCUS TAB
# ============================================================

section_id: research_program_and_focus_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- focus_visibility
- unsupported_area_flag
- priority_state
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. STAFF AND ALLOCATION TAB
# ============================================================

section_id: research_staff_and_allocation_section
section_type: table

fields:
- staff_group
- allocation_state
- coverage_state
- overload_flag
- specialization_need_flag
- reassignment_need_flag

actions:
- open_staff_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 8. LABORATORY AND EQUIPMENT TAB
# ============================================================

section_id: research_laboratory_and_equipment_section
section_type: table

fields:
- lab_or_equipment_group
- readiness_state
- degradation_flag
- bottleneck_flag
- correction_need_flag
- support_burden_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_support_action


# ============================================================
# 9. OUTPUT AND PROGRESS TAB
# ============================================================

section_id: research_output_and_progress_section
section_type: issue_panel

fields:
- output_state
- progress_visibility
- unstable_progress_flag
- blocked_output_flag
- milestone_posture where applicable
- correction_urgency_flag

actions:
- open_progress_detail
- investigate_blocked_progress
- escalate_progress_issue


# ============================================================
# 10. BUDGET AND SUPPORT TAB
# ============================================================

section_id: research_budget_and_support_section
section_type: detail_panel

fields:
- budget_visibility where applicable
- support_visibility
- burden_concentration_flag
- under_supported_area_flag
- correction_need_flag
- support_note where applicable

actions:
- open_support_detail
- rebalance_support where supported
- escalate_support_issue


# ============================================================
# 11. AUTOMATION TAB
# ============================================================

section_id: research_automation_section
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
# 12. KPI TAB
# ============================================================

section_id: research_kpi_section
section_type: metric_strip

kpi_items:
- program_continuity_posture
- staffing_sufficiency_posture
- equipment_readiness_posture
- output_posture
- support_posture
- intervention_frequency_posture


# ============================================================
# 13. ISSUE TAB
# ============================================================

section_id: research_issue_section
section_type: issue_panel

issue_types:
- staffing_shortage
- equipment_instability
- blocked_progress
- under_supported_program
- output_degradation
- lab_bottleneck
- urgent_intervention_trigger

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 14. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

program_operator:
- program_and_focus_tab
- output_and_progress_tab limited
- issue_tab
- history_tab limited

lab_operator:
- laboratory_and_equipment_tab
- issue_tab
- summary_tab
- linked_tab limited

support_or_budget_operator:
- budget_and_support_tab
- issue_tab
- history_tab limited
- summary_tab


# ============================================================
# 15. FINAL RULE
# ============================================================

Research UI interface must remain
research-oriented,
program-visible,
staffing-visible,
equipment-visible,
progress-visible,
issue-visible,
and explicitly separable
from education or manufacturing UI.
