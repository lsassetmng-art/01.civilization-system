# ============================================================
# COMMUNITY AND LIFE SUPPORT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: community-and-life-support-ui-interface
component: community-and-life-support-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the community and life support UI interface contract
for Civilization local support-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- COMMUNITY_AND_LIFE_SUPPORT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for community and life support UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- community_support_overview_screen
- community_support_manage_screen
- community_support_service_scope_screen
- community_support_access_and_eligibility_screen
- community_support_case_load_screen
- community_support_staffing_screen
- community_support_continuity_screen
- community_support_linkage_screen
- community_support_issue_screen


# ============================================================
# 3. COMMUNITY SUPPORT OVERVIEW SCREEN
# ============================================================

screen_id: community_support_overview_screen
route_key: community-support/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- community_support_summary_card
- community_support_status_strip
- community_support_access_warning_panel
- community_support_case_warning_panel
- community_support_kpi_strip
- community_support_issue_panel
- community_support_recent_history_panel

primary_actions:
- open_community_support_manage
- open_community_support_service_scope
- open_community_support_case_load
- open_community_support_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. COMMUNITY SUPPORT MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_scope_tab
- access_and_eligibility_tab
- case_load_tab
- staffing_tab
- continuity_tab
- linkage_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. COMMUNITY SUPPORT SUMMARY CARD
# ============================================================

section_id: community_support_summary_card
section_type: summary_card

fields:
- facility_name
- support_type
- institution_context
- district_summary
- service_state
- continuity_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE SCOPE TAB
# ============================================================

section_id: community_support_service_scope_section
section_type: grouped_list

fields:
- service_group
- active_service_count
- priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. ACCESS AND ELIGIBILITY TAB
# ============================================================

section_id: community_support_access_and_eligibility_section
section_type: table

fields:
- access_group
- eligibility_visibility
- blocked_access_flag
- delayed_access_flag
- entry_bottleneck_flag
- unresolved_access_burden_flag

actions:
- open_access_detail
- correct_access_flow
- escalate_access_issue


# ============================================================
# 8. CASE LOAD TAB
# ============================================================

section_id: community_support_case_load_section
section_type: table

fields:
- case_group
- load_state
- backlog_flag
- support_burden_flag
- unmet_need_flag
- escalation_need_flag

actions:
- open_case_detail
- reprioritize_case
- escalate_case_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: community_support_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- support_burden_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. CONTINUITY TAB
# ============================================================

section_id: community_support_continuity_section
section_type: detail_panel

fields:
- life_stability_state
- continuity_visibility
- unresolved_support_pressure_flag
- improvement_or_decline_signal
- correction_urgency_flag
- local_dependency_visibility

actions:
- open_continuity_detail
- apply_continuity_correction
- escalate_continuity_issue


# ============================================================
# 11. LINKAGE TAB
# ============================================================

section_id: community_support_linkage_section
section_type: relationship_panel

fields:
- family_support_state
- childcare_support_state
- employment_support_state
- unstable_linkage_flag
- handoff_burden_flag
- correction_need_flag

actions:
- open_linkage_detail
- open_linked_support
- escalate_linkage_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: community_support_automation_section
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

section_id: community_support_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- access_posture
- case_load_posture
- staffing_sufficiency_posture
- life_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: community_support_issue_section
section_type: issue_panel

issue_types:
- access_blockage
- staffing_shortage
- case_backlog
- unmet_support_need
- continuity_concern
- unstable_linkage_with_other_support_systems
- support_imbalance

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

case_operator:
- case_load_tab
- access_and_eligibility_tab limited
- issue_tab
- history_tab limited

support_operator:
- service_scope_tab limited
- continuity_tab
- linkage_tab
- issue_tab

authority_or_support_admin:
- all tabs visible
- permission-sensitive actions visible by role

resident_or_public_user:
- access_and_eligibility_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Community-support UI interface must remain
support-oriented,
service-visible,
access-visible,
case-visible,
continuity-visible,
issue-visible,
and explicitly separable
from government or medical UI.
