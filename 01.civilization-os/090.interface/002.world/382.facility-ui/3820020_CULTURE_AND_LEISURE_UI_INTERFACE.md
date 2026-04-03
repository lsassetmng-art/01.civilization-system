# ============================================================
# CULTURE AND LEISURE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: culture-and-leisure-ui-interface
component: culture-and-leisure-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the culture and leisure UI interface contract
for Civilization attraction-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- CULTURE_AND_LEISURE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for culture and leisure UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- culture_overview_screen
- culture_manage_screen
- culture_program_and_activity_screen
- culture_visitor_and_flow_screen
- culture_atmosphere_and_condition_screen
- culture_staffing_and_upkeep_screen
- culture_appeal_and_visibility_screen
- culture_money_visibility_screen
- culture_issue_screen


# ============================================================
# 3. CULTURE OVERVIEW SCREEN
# ============================================================

screen_id: culture_overview_screen
route_key: culture/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- culture_summary_card
- culture_status_strip
- culture_visitor_warning_panel
- culture_condition_warning_panel
- culture_kpi_strip
- culture_issue_panel
- culture_recent_history_panel

primary_actions:
- open_culture_manage
- open_culture_program_and_activity
- open_culture_visitor_and_flow
- open_culture_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. CULTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_activity_tab
- visitor_and_flow_tab
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- appeal_and_visibility_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. CULTURE SUMMARY CARD
# ============================================================

section_id: culture_summary_card
section_type: summary_card

fields:
- facility_name
- attraction_type
- institution_context
- district_summary
- visitor_state
- appeal_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND ACTIVITY TAB
# ============================================================

section_id: culture_program_and_activity_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. VISITOR AND FLOW TAB
# ============================================================

section_id: culture_visitor_and_flow_section
section_type: table

fields:
- visitor_group
- visitor_state
- overcrowding_flag
- underuse_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_visitor_detail
- correct_flow
- escalate_flow_issue


# ============================================================
# 8. ATMOSPHERE AND CONDITION TAB
# ============================================================

section_id: culture_atmosphere_and_condition_section
section_type: detail_panel

fields:
- atmosphere_state
- cleanliness_state where applicable
- visual_condition_state
- degradation_flag
- attraction_quality_flag
- urgent_correction_flag

actions:
- open_condition_detail
- apply_condition_correction
- escalate_condition_issue


# ============================================================
# 9. STAFFING AND UPKEEP TAB
# ============================================================

section_id: culture_staffing_and_upkeep_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- upkeep_burden_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. APPEAL AND VISIBILITY TAB
# ============================================================

section_id: culture_appeal_and_visibility_section
section_type: issue_panel

fields:
- appeal_state
- visibility_state
- decline_flag
- growth_signal where applicable
- underperforming_area_flag
- correction_need_flag

actions:
- open_appeal_detail
- investigate_decline
- escalate_appeal_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: culture_money_visibility_section
section_type: detail_panel

fields:
- admission_state where applicable
- pricing_visibility
- burden_visibility
- underperforming_program_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: culture_automation_section
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

section_id: culture_kpi_section
section_type: metric_strip

kpi_items:
- visitor_posture
- attraction_continuity_posture
- site_condition_posture
- staffing_sufficiency_posture
- appeal_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: culture_issue_section
section_type: issue_panel

issue_types:
- visitor_instability
- overcrowding_or_underuse
- site_condition_degradation
- staffing_shortage
- appeal_decline
- program_imbalance
- readiness_concern

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

program_operator:
- program_and_activity_tab
- visitor_and_flow_tab limited
- issue_tab
- history_tab limited

site_operator:
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- issue_tab
- summary_tab

public_information_operator:
- appeal_and_visibility_tab
- money_visibility_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Culture and leisure UI interface must remain
attraction-oriented,
program-visible,
visitor-visible,
condition-visible,
appeal-visible,
issue-visible,
and explicitly separable
from exhibition or media UI.
