# ============================================================
# FOOD SERVICE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: food-service-operation-ui-interface
component: food-service-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the food-service operation UI interface contract
for Civilization dining-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- FOOD_SERVICE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for food-service operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- food_service_overview_screen
- food_service_manage_screen
- food_service_menu_screen
- food_service_ingredient_screen
- food_service_kitchen_flow_screen
- food_service_seating_and_throughput_screen
- food_service_staffing_screen
- food_service_hygiene_and_safety_screen
- food_service_issue_screen


# ============================================================
# 3. FOOD SERVICE OVERVIEW SCREEN
# ============================================================

screen_id: food_service_overview_screen
route_key: food-service/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- food_service_summary_card
- food_service_status_strip
- food_service_stock_warning_panel
- food_service_hygiene_warning_panel
- food_service_kpi_strip
- food_service_issue_panel
- food_service_recent_history_panel

primary_actions:
- open_food_service_manage
- open_food_service_menu
- open_food_service_kitchen_flow
- open_food_service_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. FOOD SERVICE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- menu_tab
- ingredient_tab
- kitchen_flow_tab
- seating_and_throughput_tab
- staffing_tab
- hygiene_and_safety_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. FOOD SERVICE SUMMARY CARD
# ============================================================

section_id: food_service_summary_card
section_type: summary_card

fields:
- facility_name
- dining_type
- operation_context
- district_summary
- menu_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MENU TAB
# ============================================================

section_id: food_service_menu_section
section_type: grouped_list

fields:
- menu_group
- active_item_count
- time_period_posture where applicable
- demand_signal
- unsupported_item_flag
- priority_state

actions:
- open_menu_detail
- reprioritize_menu
- escalate_menu_issue


# ============================================================
# 7. INGREDIENT TAB
# ============================================================

section_id: food_service_ingredient_section
section_type: table

fields:
- ingredient_group
- sufficiency_state
- shortage_flag
- freshness_state where supported
- spoilage_risk_flag
- replenishment_need_flag

actions:
- open_ingredient_detail
- escalate_stock_issue
- trigger_supply_action where supported


# ============================================================
# 8. KITCHEN FLOW TAB
# ============================================================

section_id: food_service_kitchen_flow_section
section_type: table

fields:
- kitchen_flow_group
- workload_state
- bottleneck_flag
- prep_burden_flag
- delay_signal
- reassignment_need_flag

actions:
- open_kitchen_flow_detail
- reassign_flow_support
- escalate_kitchen_issue


# ============================================================
# 9. SEATING AND THROUGHPUT TAB
# ============================================================

section_id: food_service_seating_and_throughput_section
section_type: table

fields:
- service_area_group
- seating_state where applicable
- queue_state
- throughput_state
- overload_flag
- underuse_flag

actions:
- open_seating_detail
- correct_service_flow
- escalate_throughput_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: food_service_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- rush_pressure_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. HYGIENE AND SAFETY TAB
# ============================================================

section_id: food_service_hygiene_and_safety_section
section_type: issue_panel

fields:
- hygiene_state
- sanitation_state
- contamination_concern_flag where supported
- inspection_concern_flag
- corrective_burden_flag
- escalation_need_flag

actions:
- open_hygiene_detail
- escalate_hygiene_issue
- trigger_safety_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: food_service_automation_section
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

section_id: food_service_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- ingredient_sufficiency_posture
- staffing_sufficiency_posture
- throughput_posture
- hygiene_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: food_service_issue_section
section_type: issue_panel

issue_types:
- ingredient_shortage
- staffing_shortage
- kitchen_bottleneck
- throughput_overload
- hygiene_concern
- spoilage_concern
- service_instability

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

kitchen_operator:
- menu_tab limited
- ingredient_tab
- kitchen_flow_tab
- issue_tab
- history_tab limited

floor_service_operator:
- seating_and_throughput_tab
- staffing_tab limited
- issue_tab
- summary_tab

inspection_operator:
- hygiene_and_safety_tab
- issue_tab
- summary_tab
- linked_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Food-service UI interface must remain
dining-operation-oriented,
menu-visible,
stock-visible,
throughput-visible,
hygiene-visible,
issue-visible,
and explicitly separable
from retail or agriculture UI.
