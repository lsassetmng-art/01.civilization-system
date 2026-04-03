# ============================================================
# EXHIBITION AND EVENT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: exhibition-and-event-ui-interface
component: exhibition-and-event-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the exhibition and event UI interface contract
for Civilization venue- and event-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- EXHIBITION_AND_EVENT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for exhibition and event UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- exhibition_overview_screen
- exhibition_manage_screen
- exhibition_event_and_program_screen
- exhibition_layout_and_space_screen
- exhibition_exhibitor_and_participant_screen
- exhibition_admission_and_visitor_flow_screen
- exhibition_staffing_and_turnover_screen
- exhibition_readiness_and_reliability_screen
- exhibition_issue_screen


# ============================================================
# 3. EXHIBITION OVERVIEW SCREEN
# ============================================================

screen_id: exhibition_overview_screen
route_key: exhibition/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- exhibition_summary_card
- exhibition_status_strip
- exhibition_layout_warning_panel
- exhibition_admission_warning_panel
- exhibition_kpi_strip
- exhibition_issue_panel
- exhibition_recent_history_panel

primary_actions:
- open_exhibition_manage
- open_exhibition_event_and_program
- open_exhibition_layout_and_space
- open_exhibition_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. EXHIBITION MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- event_and_program_tab
- layout_and_space_tab
- exhibitor_and_participant_tab
- admission_and_visitor_flow_tab
- staffing_and_turnover_tab
- readiness_and_reliability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. EXHIBITION SUMMARY CARD
# ============================================================

section_id: exhibition_summary_card
section_type: summary_card

fields:
- facility_name
- venue_type
- institution_context
- district_summary
- event_state
- readiness_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. EVENT AND PROGRAM TAB
# ============================================================

section_id: exhibition_event_and_program_section
section_type: grouped_list

fields:
- event_group
- program_count
- timing_posture
- overload_flag
- unsupported_area_flag
- reconfiguration_pressure_flag

actions:
- open_event_detail
- reprioritize_event
- escalate_event_issue


# ============================================================
# 7. LAYOUT AND SPACE TAB
# ============================================================

section_id: exhibition_layout_and_space_section
section_type: table

fields:
- zone_or_layout_group
- allocation_state
- overcrowding_flag
- underuse_flag
- setup_readiness_flag
- mismatch_flag

actions:
- open_layout_detail
- reassign_space
- escalate_layout_issue


# ============================================================
# 8. EXHIBITOR AND PARTICIPANT TAB
# ============================================================

section_id: exhibition_exhibitor_and_participant_section
section_type: table

fields:
- exhibitor_or_participant_group
- onboarding_state
- readiness_state
- coordination_burden_flag
- instability_flag
- correction_need_flag

actions:
- open_participant_detail
- reprioritize_participant_support
- escalate_participant_issue


# ============================================================
# 9. ADMISSION AND VISITOR FLOW TAB
# ============================================================

section_id: exhibition_admission_and_visitor_flow_section
section_type: table

fields:
- admission_group
- entry_state
- queue_state
- visitor_flow_state
- bottleneck_flag
- correction_need_flag

actions:
- open_admission_detail
- correct_admission_flow
- escalate_admission_issue


# ============================================================
# 10. STAFFING AND TURNOVER TAB
# ============================================================

section_id: exhibition_staffing_and_turnover_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- turnover_burden_flag
- setup_teardown_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. READINESS AND RELIABILITY TAB
# ============================================================

section_id: exhibition_readiness_and_reliability_section
section_type: issue_panel

fields:
- readiness_state
- setup_completion_state
- instability_flag
- delay_concentration_flag
- service_reliability_state
- correction_urgency_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_correction_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: exhibition_automation_section
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

section_id: exhibition_kpi_section
section_type: metric_strip

kpi_items:
- event_continuity_posture
- layout_readiness_posture
- staffing_sufficiency_posture
- admission_posture
- visitor_flow_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: exhibition_issue_section
section_type: issue_panel

issue_types:
- layout_instability
- staffing_shortage
- participant_coordination_burden
- admission_bottleneck
- schedule_delay
- readiness_concern
- visitor_flow_instability

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

venue_operator:
- layout_and_space_tab
- admission_and_visitor_flow_tab limited
- issue_tab
- history_tab limited

participant_coordinator:
- exhibitor_and_participant_tab
- event_and_program_tab limited
- issue_tab
- summary_tab

admission_operator:
- admission_and_visitor_flow_tab
- readiness_and_reliability_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Exhibition UI interface must remain
venue-operation-oriented,
event-visible,
layout-visible,
admission-visible,
readiness-visible,
issue-visible,
and explicitly separable
from media or culture UI.
