# ============================================================
# LODGING AND STAY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: lodging-and-stay-ui-interface
component: lodging-and-stay-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the lodging and stay UI interface contract
for Civilization temporary-stay-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LODGING_AND_STAY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for lodging and stay UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- lodging_overview_screen
- lodging_manage_screen
- lodging_room_and_unit_screen
- lodging_booking_and_assignment_screen
- lodging_guest_and_support_screen
- lodging_cleaning_and_turnover_screen
- lodging_occupancy_and_utilization_screen
- lodging_money_visibility_screen
- lodging_issue_screen


# ============================================================
# 3. LODGING OVERVIEW SCREEN
# ============================================================

screen_id: lodging_overview_screen
route_key: lodging/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- lodging_summary_card
- lodging_status_strip
- lodging_booking_warning_panel
- lodging_turnover_warning_panel
- lodging_kpi_strip
- lodging_issue_panel
- lodging_recent_history_panel

primary_actions:
- open_lodging_manage
- open_lodging_room_and_unit
- open_lodging_booking_and_assignment
- open_lodging_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LODGING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- room_and_unit_tab
- booking_and_assignment_tab
- guest_and_support_tab
- cleaning_and_turnover_tab
- occupancy_and_utilization_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LODGING SUMMARY CARD
# ============================================================

section_id: lodging_summary_card
section_type: summary_card

fields:
- facility_name
- lodging_type
- operation_context
- district_summary
- occupancy_state
- turnover_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROOM AND UNIT TAB
# ============================================================

section_id: lodging_room_and_unit_section
section_type: table

fields:
- room_or_unit_group
- room_type
- allocation_state
- unavailable_flag
- underuse_flag
- reassignment_need_flag

actions:
- open_room_detail
- reassign_room
- escalate_room_issue


# ============================================================
# 7. BOOKING AND ASSIGNMENT TAB
# ============================================================

section_id: lodging_booking_and_assignment_section
section_type: table

fields:
- booking_group
- assignment_state
- blocked_assignment_flag
- delayed_assignment_flag
- turnover_conflict_flag
- correction_need_flag

actions:
- open_booking_detail
- correct_assignment
- escalate_booking_issue


# ============================================================
# 8. GUEST AND SUPPORT TAB
# ============================================================

section_id: lodging_guest_and_support_section
section_type: grouped_list

fields:
- guest_group
- support_burden_flag
- special_support_visibility where applicable
- assignment_mismatch_flag
- unresolved_support_flag
- escalation_need_flag

actions:
- open_guest_detail
- open_support_follow_up
- escalate_guest_issue


# ============================================================
# 9. CLEANING AND TURNOVER TAB
# ============================================================

section_id: lodging_cleaning_and_turnover_section
section_type: table

fields:
- turnover_group
- cleaning_state
- turnover_burden_flag
- delayed_turnover_flag
- room_readiness_state
- correction_urgency_flag

actions:
- open_turnover_detail
- escalate_turnover_issue
- trigger_cleaning_action where supported


# ============================================================
# 10. OCCUPANCY AND UTILIZATION TAB
# ============================================================

section_id: lodging_occupancy_and_utilization_section
section_type: issue_panel

fields:
- occupancy_state
- utilization_state
- underuse_flag
- overload_flag
- mismatch_between_intended_and_actual_use_flag
- correction_need_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_occupancy_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: lodging_money_visibility_section
section_type: detail_panel

fields:
- stay_charge_visibility where applicable
- burden_visibility
- underperforming_unit_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: lodging_automation_section
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

section_id: lodging_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- turnover_posture
- room_readiness_posture
- staffing_sufficiency_posture
- guest_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: lodging_issue_section
section_type: issue_panel

issue_types:
- booking_conflict
- occupancy_instability
- cleaning_delay
- turnover_backlog
- staffing_shortage
- guest_support_concern
- urgent_intervention_trigger

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

booking_operator:
- booking_and_assignment_tab
- occupancy_and_utilization_tab limited
- issue_tab
- history_tab limited

cleaning_operator:
- cleaning_and_turnover_tab
- room_and_unit_tab limited
- issue_tab
- summary_tab

guest_support_operator:
- guest_and_support_tab
- issue_tab
- linked_tab limited
- summary_tab

authority:
- summary_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Lodging UI interface must remain
stay-oriented,
room-visible,
booking-visible,
turnover-visible,
occupancy-visible,
issue-visible,
and explicitly separable
from residence or real-estate UI.
