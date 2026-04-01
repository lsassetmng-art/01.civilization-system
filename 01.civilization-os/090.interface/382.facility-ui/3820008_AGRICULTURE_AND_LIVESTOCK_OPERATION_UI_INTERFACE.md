# ============================================================
# AGRICULTURE AND LIVESTOCK OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: agriculture-and-livestock-operation-ui-interface
component: agriculture-and-livestock-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the agriculture and livestock operation UI interface contract
for Civilization production-ground facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for agriculture and livestock operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- agriculture_overview_screen
- agriculture_manage_screen
- agriculture_mix_screen
- agriculture_zone_allocation_screen
- agriculture_staffing_screen
- agriculture_supply_screen
- agriculture_output_screen
- agriculture_health_and_quality_screen
- agriculture_issue_screen


# ============================================================
# 3. AGRICULTURE OVERVIEW SCREEN
# ============================================================

screen_id: agriculture_overview_screen
route_key: agriculture/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- agriculture_summary_card
- agriculture_status_strip
- agriculture_supply_warning_panel
- agriculture_health_warning_panel
- agriculture_kpi_strip
- agriculture_issue_panel
- agriculture_recent_history_panel

primary_actions:
- open_agriculture_manage
- open_agriculture_mix
- open_agriculture_output
- open_agriculture_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. AGRICULTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- mix_tab
- zone_allocation_tab
- staffing_tab
- supply_tab
- output_tab
- health_and_quality_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. AGRICULTURE SUMMARY CARD
# ============================================================

section_id: agriculture_summary_card
section_type: summary_card

fields:
- facility_name
- production_type
- operation_context
- district_summary
- output_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MIX TAB
# ============================================================

section_id: agriculture_mix_section
section_type: grouped_list

fields:
- crop_or_livestock_group
- active_unit_count
- diversification_state
- unsupported_area_flag
- overload_flag
- priority_state

actions:
- open_mix_detail
- reprioritize_mix
- escalate_mix_issue


# ============================================================
# 7. ZONE ALLOCATION TAB
# ============================================================

section_id: agriculture_zone_allocation_section
section_type: table

fields:
- field_or_zone_name
- zone_type
- assigned_use
- utilization_state
- overcrowding_flag
- reallocation_pressure_flag

actions:
- open_zone_detail
- reassign_zone
- escalate_zone_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: agriculture_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- workload_flag
- specialized_labor_need_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. SUPPLY TAB
# ============================================================

section_id: agriculture_supply_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- replenishment_need_flag
- dependency_visibility
- disruption_risk_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_supply_action where supported


# ============================================================
# 10. OUTPUT TAB
# ============================================================

section_id: agriculture_output_section
section_type: table

fields:
- output_group
- expected_output_state
- harvest_timing_visibility where applicable
- shipment_posture
- self_consumption_posture where applicable
- spoilage_risk_flag

actions:
- open_output_detail
- reprioritize_output
- escalate_output_issue


# ============================================================
# 11. HEALTH AND QUALITY TAB
# ============================================================

section_id: agriculture_health_and_quality_section
section_type: issue_panel

fields:
- crop_health_state
- livestock_health_state
- product_quality_state
- disease_concern_flag
- contamination_concern_flag where supported
- intervention_urgency_flag

actions:
- open_health_detail
- escalate_health_issue
- trigger_response_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: agriculture_automation_section
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

section_id: agriculture_kpi_section
section_type: metric_strip

kpi_items:
- production_continuity_posture
- labor_sufficiency_posture
- supply_sufficiency_posture
- health_posture
- output_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: agriculture_issue_section
section_type: issue_panel

issue_types:
- disease_concern
- labor_shortage
- supply_shortage
- output_disruption
- spoilage_pressure
- environmental_suitability_concern
- shipment_coordination_concern

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

worker_or_operator:
- summary_tab
- zone_allocation_tab limited
- supply_tab limited
- issue_tab
- history_tab limited

inspection_or_quality_operator:
- health_and_quality_tab
- issue_tab
- summary_tab
- linked_tab limited

authority:
- summary_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Agriculture UI interface must remain
production-ground-oriented,
supply-visible,
output-visible,
health-visible,
issue-visible,
and explicitly separable
from retail or logistics UI.
