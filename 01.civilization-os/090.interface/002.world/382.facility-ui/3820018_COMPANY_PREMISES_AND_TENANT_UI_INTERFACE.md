# ============================================================
# COMPANY PREMISES AND TENANT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: company-premises-and-tenant-ui-interface
component: company-premises-and-tenant-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the company premises and tenant UI interface contract
for Civilization company-occupancy-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- COMPANY_PREMISES_AND_TENANT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for company premises and tenant UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- company_premises_overview_screen
- company_premises_manage_screen
- company_premises_structure_screen
- company_premises_tenant_allocation_screen
- company_premises_shared_space_screen
- company_premises_access_and_movement_screen
- company_premises_staffing_screen
- company_premises_usage_visibility_screen
- company_premises_issue_screen


# ============================================================
# 3. COMPANY PREMISES OVERVIEW SCREEN
# ============================================================

screen_id: company_premises_overview_screen
route_key: company-premises/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- company_premises_summary_card
- company_premises_status_strip
- company_premises_tenant_warning_panel
- company_premises_access_warning_panel
- company_premises_kpi_strip
- company_premises_issue_panel
- company_premises_recent_history_panel

primary_actions:
- open_company_premises_manage
- open_company_premises_structure
- open_company_premises_tenant_allocation
- open_company_premises_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. COMPANY PREMISES MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- structure_tab
- tenant_allocation_tab
- shared_space_tab
- access_and_movement_tab
- staffing_tab
- usage_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. COMPANY PREMISES SUMMARY CARD
# ============================================================

section_id: company_premises_summary_card
section_type: summary_card

fields:
- facility_name
- premises_type
- organization_context
- district_summary
- occupancy_state
- usage_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. STRUCTURE TAB
# ============================================================

section_id: company_premises_structure_section
section_type: table

fields:
- site_or_floor_group
- section_count
- utilization_state
- underuse_flag
- overload_flag
- reallocation_pressure_flag

actions:
- open_structure_detail
- reassign_section
- escalate_structure_issue


# ============================================================
# 7. TENANT ALLOCATION TAB
# ============================================================

section_id: company_premises_tenant_allocation_section
section_type: table

fields:
- tenant_or_branch_group
- occupied_space_count
- stability_state
- mismatch_flag
- concentration_flag
- reassignment_need_flag

actions:
- open_tenant_detail
- reassign_tenant
- escalate_tenant_issue


# ============================================================
# 8. SHARED SPACE TAB
# ============================================================

section_id: company_premises_shared_space_section
section_type: table

fields:
- shared_space_group
- load_state
- usage_imbalance_flag
- contention_flag
- unsupported_area_flag
- correction_need_flag

actions:
- open_shared_space_detail
- correct_shared_space_usage
- escalate_shared_space_issue


# ============================================================
# 9. ACCESS AND MOVEMENT TAB
# ============================================================

section_id: company_premises_access_and_movement_section
section_type: detail_panel

fields:
- access_state
- restricted_area_visibility
- movement_bottleneck_flag
- entry_burden_flag
- unstable_access_flag
- correction_need_flag

actions:
- open_access_detail
- correct_access_flow
- escalate_access_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: company_premises_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- facilities_support_burden_flag
- reception_or_support_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. USAGE VISIBILITY TAB
# ============================================================

section_id: company_premises_usage_visibility_section
section_type: issue_panel

fields:
- occupancy_state
- utilization_state
- underuse_flag
- overuse_flag
- mismatch_between_intended_and_actual_use_flag
- correction_urgency_flag

actions:
- open_usage_detail
- intervene_usage
- escalate_usage_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: company_premises_automation_section
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

section_id: company_premises_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- usage_posture
- tenant_stability_posture
- shared_space_burden_posture
- access_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: company_premises_issue_section
section_type: issue_panel

issue_types:
- occupancy_mismatch
- tenant_instability
- shared_space_contention
- support_staff_shortage
- access_instability
- underuse_or_overload
- premises_usage_inconsistency_visibility

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

tenant_operator:
- tenant_allocation_tab limited
- shared_space_tab limited
- issue_tab
- summary_tab

facilities_operator:
- structure_tab
- access_and_movement_tab
- staffing_tab limited
- issue_tab

owner_or_authority:
- all tabs visible
- permission-sensitive actions visible by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Company-premises UI interface must remain
organization-occupancy-oriented,
tenant-visible,
shared-space-visible,
access-visible,
usage-visible,
issue-visible,
and explicitly separable
from real-estate or retail UI.
