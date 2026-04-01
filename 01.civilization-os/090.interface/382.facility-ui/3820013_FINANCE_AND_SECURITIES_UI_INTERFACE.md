# ============================================================
# FINANCE AND SECURITIES UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: finance-and-securities-ui-interface
component: finance-and-securities-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the finance and securities UI interface contract
for Civilization finance-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- FINANCE_AND_SECURITIES_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for finance and securities UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- finance_overview_screen
- finance_manage_screen
- finance_service_and_product_screen
- finance_account_and_channel_screen
- finance_review_screen
- finance_market_and_information_screen
- finance_staffing_screen
- finance_risk_and_exception_screen
- finance_issue_screen


# ============================================================
# 3. FINANCE OVERVIEW SCREEN
# ============================================================

screen_id: finance_overview_screen
route_key: finance/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- finance_summary_card
- finance_status_strip
- finance_review_warning_panel
- finance_risk_warning_panel
- finance_kpi_strip
- finance_issue_panel
- finance_recent_history_panel

primary_actions:
- open_finance_manage
- open_finance_service_and_product
- open_finance_review
- open_finance_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. FINANCE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_and_product_tab
- account_and_channel_tab
- review_tab
- market_and_information_tab
- staffing_tab
- risk_and_exception_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. FINANCE SUMMARY CARD
# ============================================================

section_id: finance_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- trust_context
- district_summary
- service_state
- review_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE AND PRODUCT TAB
# ============================================================

section_id: finance_service_and_product_section
section_type: grouped_list

fields:
- service_or_product_group
- active_item_count
- service_priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. ACCOUNT AND CHANNEL TAB
# ============================================================

section_id: finance_account_and_channel_section
section_type: table

fields:
- account_or_channel_group
- access_state
- bottleneck_flag
- unstable_service_flag
- correction_need_flag
- burden_state

actions:
- open_channel_detail
- correct_channel_support
- escalate_channel_issue


# ============================================================
# 8. REVIEW TAB
# ============================================================

section_id: finance_review_section
section_type: table

fields:
- review_group
- backlog_state
- blocked_item_flag
- delayed_item_flag
- escalation_need_flag
- completion_state

actions:
- open_review_detail
- escalate_review
- reprioritize_review


# ============================================================
# 9. MARKET AND INFORMATION TAB
# ============================================================

section_id: finance_market_and_information_section
section_type: detail_panel

fields:
- market_board_state where applicable
- information_freshness_state
- delayed_data_flag
- public_or_internal_board_state
- correction_need_flag
- visibility_scope

actions:
- open_market_detail
- refresh_information where supported
- escalate_information_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: finance_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- counter_burden_flag
- review_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. RISK AND EXCEPTION TAB
# ============================================================

section_id: finance_risk_and_exception_section
section_type: issue_panel

fields:
- risk_state
- exception_visibility
- unstable_service_flag
- manual_oversight_need_flag
- escalation_urgency_flag
- trust_impact_flag

actions:
- open_risk_detail
- escalate_risk_issue
- trigger_exception_follow_up where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: finance_automation_section
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

section_id: finance_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- review_posture
- channel_stability_posture
- risk_posture
- information_exposure_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: finance_issue_section
section_type: issue_panel

issue_types:
- review_backlog
- service_bottleneck
- staffing_shortage
- unstable_information_board_state
- risk_escalation
- abnormal_exception_visibility
- trust_impact_concern

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
- account_and_channel_tab
- service_and_product_tab limited
- issue_tab
- history_tab limited

review_operator:
- review_tab
- risk_and_exception_tab limited
- issue_tab
- summary_tab

authority_or_risk_observer:
- risk_and_exception_tab
- issue_tab
- history_tab
- permission_tab limited

customer_access_user:
- account_and_channel_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Finance UI interface must remain
finance-service-oriented,
product-visible,
review-visible,
risk-visible,
information-visible,
issue-visible,
and explicitly separable
from government or real-estate UI.
