# ============================================================
# MEDIA OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: media-operation-ui-interface
component: media-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the media operation UI interface contract
for Civilization media-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MEDIA_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for media operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- media_overview_screen
- media_manage_screen
- media_content_and_catalog_screen
- media_schedule_screen
- media_staffing_and_production_screen
- media_audience_and_reach_screen
- media_advertising_and_sponsorship_screen
- media_reliability_and_exposure_screen
- media_issue_screen


# ============================================================
# 3. MEDIA OVERVIEW SCREEN
# ============================================================

screen_id: media_overview_screen
route_key: media/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- media_summary_card
- media_status_strip
- media_schedule_warning_panel
- media_exposure_warning_panel
- media_kpi_strip
- media_issue_panel
- media_recent_history_panel

primary_actions:
- open_media_manage
- open_media_content_and_catalog
- open_media_schedule
- open_media_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MEDIA MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- content_and_catalog_tab
- schedule_tab
- staffing_and_production_tab
- audience_and_reach_tab
- advertising_and_sponsorship_tab
- reliability_and_exposure_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MEDIA SUMMARY CARD
# ============================================================

section_id: media_summary_card
section_type: summary_card

fields:
- facility_name
- media_type
- institution_context
- district_summary
- content_state
- schedule_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. CONTENT AND CATALOG TAB
# ============================================================

section_id: media_content_and_catalog_section
section_type: grouped_list

fields:
- content_group
- active_content_count
- category_balance_state
- unsupported_area_flag
- priority_state
- reconfiguration_pressure_flag

actions:
- open_content_detail
- reprioritize_content
- escalate_content_issue


# ============================================================
# 7. SCHEDULE TAB
# ============================================================

section_id: media_schedule_section
section_type: table

fields:
- schedule_group
- timing_state
- delay_flag
- overload_flag
- instability_flag
- bottleneck_flag

actions:
- open_schedule_detail
- correct_schedule
- escalate_schedule_issue


# ============================================================
# 8. STAFFING AND PRODUCTION TAB
# ============================================================

section_id: media_staffing_and_production_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- production_burden_flag
- editorial_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. AUDIENCE AND REACH TAB
# ============================================================

section_id: media_audience_and_reach_section
section_type: detail_panel

fields:
- audience_state
- reach_state
- unstable_exposure_flag
- engagement_signal where supported
- growth_or_decline_flag
- correction_need_flag

actions:
- open_audience_detail
- investigate_reach_change
- escalate_audience_issue


# ============================================================
# 10. ADVERTISING AND SPONSORSHIP TAB
# ============================================================

section_id: media_advertising_and_sponsorship_section
section_type: table

fields:
- monetization_group
- advertising_state
- sponsorship_state
- underused_space_flag
- concentration_flag
- correction_need_flag

actions:
- open_advertising_detail
- reprioritize_slot where supported
- escalate_monetization_issue


# ============================================================
# 11. RELIABILITY AND EXPOSURE TAB
# ============================================================

section_id: media_reliability_and_exposure_section
section_type: issue_panel

fields:
- reliability_state
- interruption_flag
- degraded_exposure_flag
- delay_concentration_flag
- unstable_service_flag
- correction_urgency_flag

actions:
- open_reliability_detail
- escalate_reliability_issue
- trigger_correction_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: media_automation_section
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

section_id: media_kpi_section
section_type: metric_strip

kpi_items:
- content_continuity_posture
- schedule_stability_posture
- staffing_sufficiency_posture
- audience_reach_posture
- reliability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: media_issue_section
section_type: issue_panel

issue_types:
- schedule_disruption
- production_backlog
- staffing_shortage
- exposure_instability
- audience_decline_concern
- advertising_imbalance
- publication_delay

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

editorial_operator:
- content_and_catalog_tab
- schedule_tab limited
- issue_tab
- history_tab limited

schedule_operator:
- schedule_tab
- reliability_and_exposure_tab
- issue_tab
- summary_tab

advertising_operator:
- advertising_and_sponsorship_tab
- audience_and_reach_tab limited
- issue_tab
- history_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Media UI interface must remain
media-service-oriented,
content-visible,
schedule-visible,
reach-visible,
reliability-visible,
issue-visible,
and explicitly separable
from streamer or exhibition UI.
