# ============================================================
# STREAMER AGENCY OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: streamer-agency-operation-ui-interface
component: streamer-agency-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the streamer agency operation UI interface contract
for Civilization streamer-agency facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- STREAMER_AGENCY_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for streamer-agency operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- streamer_agency_overview_screen
- streamer_agency_manage_screen
- streamer_agency_roster_screen
- streamer_agency_scouting_screen
- streamer_agency_announcement_screen
- streamer_agency_goods_screen
- streamer_agency_review_visibility_screen
- streamer_agency_fulfillment_screen
- streamer_agency_revenue_screen
- streamer_agency_issue_screen


# ============================================================
# 3. STREAMER AGENCY OVERVIEW SCREEN
# ============================================================

screen_id: streamer_agency_overview_screen
route_key: streamer-agency/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- streamer_agency_summary_card
- streamer_agency_status_strip
- streamer_agency_roster_warning_panel
- streamer_agency_fulfillment_warning_panel
- streamer_agency_kpi_strip
- streamer_agency_issue_panel
- streamer_agency_recent_history_panel

primary_actions:
- open_streamer_agency_manage
- open_streamer_agency_roster
- open_streamer_agency_fulfillment
- open_streamer_agency_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. STREAMER AGENCY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- roster_tab
- scouting_tab
- announcement_tab
- goods_tab
- review_tab
- fulfillment_tab
- mirrored_revenue_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. STREAMER AGENCY SUMMARY CARD
# ============================================================

section_id: streamer_agency_summary_card
section_type: summary_card

fields:
- facility_name
- agency_type
- company_context
- premises_context
- active_roster_count
- active_goods_posture
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROSTER TAB
# ============================================================

section_id: streamer_agency_roster_section
section_type: table

fields:
- roster_group
- active_member_count
- support_load_flag
- instability_flag
- management_burden_flag
- unresolved_support_flag

actions:
- open_roster_detail
- reassign_support
- escalate_roster_issue


# ============================================================
# 7. SCOUTING TAB
# ============================================================

section_id: streamer_agency_scouting_section
section_type: grouped_list

fields:
- candidate_group
- scouting_posture
- intake_pressure_flag
- pending_decision_flag
- support_burden_flag
- backlog_flag

actions:
- open_candidate_detail
- reprioritize_candidate
- escalate_scouting_issue


# ============================================================
# 8. ANNOUNCEMENT TAB
# ============================================================

section_id: streamer_agency_announcement_section
section_type: table

fields:
- campaign_group
- announcement_posture
- schedule_visibility
- blocked_flag
- coordination_burden_flag
- correction_need_flag

actions:
- open_announcement_detail
- reprioritize_announcement
- escalate_announcement_issue


# ============================================================
# 9. GOODS TAB
# ============================================================

section_id: streamer_agency_goods_section
section_type: table

fields:
- goods_group
- sales_posture
- active_goods_count
- demand_signal
- coordination_flag
- blocked_flag

actions:
- open_goods_detail
- reprioritize_goods
- open_review_visibility


# ============================================================
# 10. REVIEW TAB
# ============================================================

section_id: streamer_agency_review_section
section_type: issue_panel

fields:
- pending_review_count
- review_blocked_count
- correction_needed_count
- ready_state_count
- review_delay_flag
- routing_need_flag

actions:
- open_review_detail
- open_follow_up_route
- escalate_review_issue


# ============================================================
# 11. FULFILLMENT TAB
# ============================================================

section_id: streamer_agency_fulfillment_section
section_type: table

fields:
- fulfillment_posture
- pending_shipment_count
- backlog_flag
- delay_flag
- logistics_dependency_flag
- intervention_need_flag

actions:
- open_fulfillment_detail
- escalate_fulfillment
- open_linked_logistics


# ============================================================
# 12. MIRRORED REVENUE TAB
# ============================================================

section_id: streamer_agency_revenue_section
section_type: metric_strip

fields:
- mirrored_revenue_posture
- period_group
- trend_state
- anomaly_flag
- delayed_mirror_flag
- interpretation_note

actions:
- open_revenue_detail
- investigate_revenue_anomaly


# ============================================================
# 13. AUTOMATION TAB
# ============================================================

section_id: streamer_agency_automation_section
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

section_id: streamer_agency_kpi_section
section_type: metric_strip

kpi_items:
- roster_stability_posture
- scouting_pressure_posture
- support_burden_posture
- goods_handling_posture
- fulfillment_backlog_posture
- mirrored_revenue_posture


# ============================================================
# 15. ISSUE TAB
# ============================================================

section_id: streamer_agency_issue_section
section_type: issue_panel

issue_types:
- roster_management_overload
- scouting_backlog
- support_failure_or_delay
- announcement_blockage
- goods_review_blockage
- fulfillment_delay
- mirrored_revenue_anomaly

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

owner:
- all tabs visible
- selected permission or escalation actions may be limited

scout_operator:
- scouting_tab
- roster_tab limited
- issue_tab
- history_tab

fulfillment_operator:
- fulfillment_tab
- goods_tab limited
- issue_tab
- linked_tab limited

finance_observer:
- mirrored_revenue_tab
- summary_tab
- issue_tab limited


# ============================================================
# 17. FINAL RULE
# ============================================================

Streamer-agency UI interface must remain
boundary-clear with StreamingOS,
roster-visible,
goods-visible,
fulfillment-visible,
and mirrored-revenue-visible.
