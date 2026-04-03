# ============================================================
# REAL ESTATE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: real-estate-operation-ui-interface
component: real-estate-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the real-estate operation UI interface contract
for Civilization property-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- REAL_ESTATE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for real-estate operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- real_estate_overview_screen
- real_estate_manage_screen
- real_estate_portfolio_screen
- real_estate_tenancy_screen
- real_estate_occupancy_screen
- real_estate_maintenance_screen
- real_estate_rights_screen
- real_estate_redevelopment_screen
- real_estate_issue_screen


# ============================================================
# 3. REAL ESTATE OVERVIEW SCREEN
# ============================================================

screen_id: real_estate_overview_screen
route_key: real-estate/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- real_estate_summary_card
- real_estate_status_strip
- real_estate_vacancy_warning_panel
- real_estate_maintenance_warning_panel
- real_estate_kpi_strip
- real_estate_issue_panel
- real_estate_recent_history_panel

primary_actions:
- open_real_estate_manage
- open_real_estate_portfolio
- open_real_estate_tenancy
- open_real_estate_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. REAL ESTATE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- portfolio_tab
- tenancy_tab
- occupancy_tab
- maintenance_tab
- rights_tab
- redevelopment_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. REAL ESTATE SUMMARY CARD
# ============================================================

section_id: real_estate_summary_card
section_type: summary_card

fields:
- facility_name
- property_type
- ownership_context
- management_context
- district_summary
- occupancy_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PORTFOLIO TAB
# ============================================================

section_id: real_estate_portfolio_section
section_type: table

fields:
- property_group_name
- asset_category
- occupancy_posture
- vacancy_risk_flag
- maintenance_burden_flag
- underperformance_flag

actions:
- open_property_detail
- compare_properties
- reprioritize_property_group


# ============================================================
# 7. TENANCY TAB
# ============================================================

section_id: real_estate_tenancy_section
section_type: table

fields:
- tenant_or_use_group
- occupied_unit_count
- vacant_unit_count
- turnover_signal
- mismatch_flag
- reassignment_need_flag

actions:
- open_tenancy_detail
- reassign_tenant where supported
- escalate_tenancy_issue


# ============================================================
# 8. OCCUPANCY TAB
# ============================================================

section_id: real_estate_occupancy_section
section_type: table

fields:
- target_occupancy_value
- current_occupancy_value
- vacancy_state
- unstable_turnover_flag
- underuse_flag
- reallocation_pressure_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_vacancy_issue


# ============================================================
# 9. MAINTENANCE TAB
# ============================================================

section_id: real_estate_maintenance_section
section_type: table

fields:
- maintenance_burden_state
- repair_backlog_flag
- deterioration_state
- urgent_condition_flag
- service_disruption_flag
- refurbishment_pressure_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 10. RIGHTS TAB
# ============================================================

section_id: real_estate_rights_section
section_type: detail_panel

fields:
- ownership_posture
- managed_contract_visibility
- transfer_visibility
- restriction_visibility
- approval_dependency_flag
- rights_warning_flag

actions:
- open_rights_detail
- open_related_approval
- escalate_rights_issue


# ============================================================
# 11. REDEVELOPMENT TAB
# ============================================================

section_id: real_estate_redevelopment_section
section_type: grouped_list

fields:
- redevelopment_candidate_group
- use_change_pressure_flag
- repositioning_need_flag
- rebuild_candidate_flag
- district_fit_state
- upgrade_priority_flag

actions:
- open_redevelopment_detail
- start_redevelopment_review
- open_builder_transition where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: real_estate_automation_section
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

section_id: real_estate_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- vacancy_pressure_posture
- maintenance_posture
- turnover_stability_posture
- property_condition_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: real_estate_issue_section
section_type: issue_panel

issue_types:
- critical_vacancy
- unmanaged_turnover
- maintenance_backlog
- condition_degradation
- rights_inconsistency_visibility
- property_use_mismatch

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

owner:
- all tabs visible
- certain rights or approval actions may be limited by governance context

tenant:
- limited visibility
- summary_tab
- occupancy_tab limited
- issue_tab limited
- permission_tab hidden

authority:
- rights_tab
- issue_tab
- history_tab
- selected maintenance or occupancy visibility by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Real-estate UI interface must remain
asset-oriented,
occupancy-visible,
rights-visible,
maintenance-visible,
and explicitly separable
from residence living-truth UI.
