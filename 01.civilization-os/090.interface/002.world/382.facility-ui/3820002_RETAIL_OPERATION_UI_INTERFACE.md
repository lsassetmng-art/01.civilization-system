# ============================================================
# RETAIL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: retail-operation-ui-interface
component: retail-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the retail operation UI interface contract
for Civilization retail facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- RETAIL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for retail operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- retail_overview_screen
- retail_manage_screen
- retail_shelf_display_screen
- retail_ordering_screen
- retail_inventory_screen
- retail_pricing_screen
- retail_staffing_screen
- retail_automation_screen
- retail_kpi_screen
- retail_issue_screen


# ============================================================
# 3. RETAIL OVERVIEW SCREEN
# ============================================================

screen_id: retail_overview_screen
route_key: retail/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- retail_summary_card
- retail_status_strip
- retail_stock_warning_panel
- retail_staffing_warning_panel
- retail_kpi_strip
- retail_issue_panel
- retail_recent_history_panel

primary_actions:
- open_retail_manage
- open_retail_shelf_display
- open_retail_ordering
- open_retail_pricing
- open_retail_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RETAIL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- merchandise_tab
- shelf_tab
- ordering_tab
- inventory_tab
- pricing_tab
- staffing_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RETAIL SUMMARY CARD
# ============================================================

section_id: retail_summary_card
section_type: summary_card

fields:
- facility_name
- retail_type
- open_status
- operator_name
- location_summary
- active_policy_profile
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MERCHANDISE TAB
# ============================================================

section_id: retail_merchandise_section
section_type: grouped_list

fields:
- category_group
- active_item_count
- shortage_risk_flag
- sales_priority_flag
- unsupported_category_flag

actions:
- open_category_detail
- reprioritize_category


# ============================================================
# 7. SHELF TAB
# ============================================================

section_id: retail_shelf_section
section_type: table

fields:
- section_name
- assigned_category
- display_priority
- stock_health_state
- dead_space_flag
- cleanliness_flag

actions:
- open_shelf_editor
- reassign_section
- escalate_display_issue


# ============================================================
# 8. ORDERING TAB
# ============================================================

section_id: retail_ordering_section
section_type: table

fields:
- supplier_group
- reorder_posture
- lead_time_visibility
- shortage_risk_flag
- emergency_restock_flag

actions:
- open_ordering_editor
- trigger_emergency_restock
- reprioritize_replenishment


# ============================================================
# 9. INVENTORY TAB
# ============================================================

section_id: retail_inventory_section
section_type: table

fields:
- category_group
- stock_level
- freshness_state where applicable
- overstock_flag
- shortage_flag
- spoilage_risk_flag where applicable

actions:
- open_inventory_detail
- escalate_stock_issue


# ============================================================
# 10. PRICING TAB
# ============================================================

section_id: retail_pricing_section
section_type: table

fields:
- category_group
- pricing_posture
- discount_posture
- margin_pressure_flag
- emergency_correction_flag

actions:
- open_pricing_editor
- apply_temporary_price_correction


# ============================================================
# 11. STAFFING TAB
# ============================================================

section_id: retail_staffing_section
section_type: grouped_list

fields:
- role_group
- current_staff_count
- coverage_state
- rush_pressure_flag
- reassignment_need_flag

actions:
- open_staffing_editor
- reassign_staff
- escalate_staff_shortage


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: retail_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_confidence_state
- drift_warning_flag
- intervention_threshold_summary

actions:
- open_automation_detail
- pause_automation
- resume_automation


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: retail_kpi_section
section_type: metric_strip

kpi_items:
- sales_posture
- stock_turnover_posture
- shortage_frequency_posture
- staffing_sufficiency_posture
- cleanliness_posture
- category_balance_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: retail_issue_section
section_type: issue_panel

issue_types:
- stockout_pressure
- cleanliness_warning
- compliance_warning
- service_bottleneck
- supply_disruption
- staffing_shortage

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all actions except restricted authority-only actions

operator:
- all operation tabs visible
- permission tab read-only

staff:
- summary_tab
- inventory_tab
- issue_tab
- history_tab

customer_or_public:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Retail UI interface must remain
store-local,
issue-visible,
automation-visible,
and explicitly actionable.
