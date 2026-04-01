# ============================================================
# GOVERNMENT AND CIVIC SERVICE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: government-and-civic-service-ui-interface
component: government-and-civic-service-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the government and civic service UI interface contract
for Civilization public-service-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- GOVERNMENT_AND_CIVIC_SERVICE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for government and civic service UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- government_overview_screen
- government_manage_screen
- government_service_scope_screen
- government_counter_and_queue_screen
- government_case_and_process_screen
- government_document_and_notice_screen
- government_staffing_screen
- government_public_information_screen
- government_issue_screen


# ============================================================
# 3. GOVERNMENT OVERVIEW SCREEN
# ============================================================

screen_id: government_overview_screen
route_key: government/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- government_summary_card
- government_status_strip
- government_queue_warning_panel
- government_process_warning_panel
- government_kpi_strip
- government_issue_panel
- government_recent_history_panel

primary_actions:
- open_government_manage
- open_government_service_scope
- open_government_case_and_process
- open_government_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. GOVERNMENT MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_scope_tab
- counter_and_queue_tab
- case_and_process_tab
- document_and_notice_tab
- staffing_tab
- public_information_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. GOVERNMENT SUMMARY CARD
# ============================================================

section_id: government_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- authority_context
- district_summary
- service_state
- process_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE SCOPE TAB
# ============================================================

section_id: government_service_scope_section
section_type: grouped_list

fields:
- service_group
- active_service_count
- service_priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. COUNTER AND QUEUE TAB
# ============================================================

section_id: government_counter_and_queue_section
section_type: table

fields:
- counter_group
- queue_state
- waiting_load_flag
- throughput_state
- bottleneck_flag
- support_need_flag

actions:
- open_queue_detail
- reallocate_counter_support
- escalate_queue_issue


# ============================================================
# 8. CASE AND PROCESS TAB
# ============================================================

section_id: government_case_and_process_section
section_type: table

fields:
- process_group
- backlog_state
- blocked_case_flag
- delayed_case_flag
- escalation_need_flag
- completion_state

actions:
- open_process_detail
- escalate_process
- reprioritize_case_handling


# ============================================================
# 9. DOCUMENT AND NOTICE TAB
# ============================================================

section_id: government_document_and_notice_section
section_type: table

fields:
- document_or_notice_group
- publication_state
- freshness_state
- outdated_flag
- correction_need_flag
- visibility_scope

actions:
- open_document_detail
- publish_or_update_notice where supported
- escalate_notice_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: government_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- queue_burden_flag
- process_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. PUBLIC INFORMATION TAB
# ============================================================

section_id: government_public_information_section
section_type: detail_panel

fields:
- public_information_state
- exposed_notice_count
- outdated_public_info_flag
- access_channel_state
- clarification_need_flag
- communication_burden_flag

actions:
- open_public_information_detail
- update_public_information where supported
- escalate_public_information_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: government_automation_section
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

section_id: government_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- queue_posture
- process_completion_posture
- backlog_posture
- public_information_quality_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: government_issue_section
section_type: issue_panel

issue_types:
- service_backlog
- queue_overload
- staffing_shortage
- blocked_process
- outdated_or_missing_notice
- authority_handling_inconsistency_visibility
- service_coverage_concern

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

counter_operator:
- counter_and_queue_tab
- case_and_process_tab limited
- issue_tab
- history_tab limited

document_operator:
- document_and_notice_tab
- public_information_tab
- issue_tab
- summary_tab

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- public_information_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Government UI interface must remain
public-service-oriented,
queue-visible,
process-visible,
notice-visible,
issue-visible,
and explicitly separable
from security or company-office UI.
