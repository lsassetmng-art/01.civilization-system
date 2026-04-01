# ============================================================
# FACILITY UI INTERFACE INTEGRATED
# 090.interface / 382.facility-ui
# ============================================================

status: reference-integrated
layer: interface
scope: facility-ui-interface-integrated
component: facility-ui-interface-integrated

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

This document is an integrated reference edition
of the facility UI interface documents
under 090.interface / 382.facility-ui.

This file is for reading, review, and implementation reference.

Authoritative editing targets remain
the original split interface documents.

Do not treat this integrated file
as the primary editing source.


# ============================================================
# FILE: 3820001_CIVILIZATION_FACILITY_UI_INTERFACE.md
# ============================================================

# ============================================================
# CIVILIZATION FACILITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: facility-ui-interface
component: civilization-facility-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical interface contract
for facility UI systems inside Civilization.

This document defines:

- screen-level interface rules
- section-level interface rules
- UI input and output contract structure
- UI state model
- role and permission exposure model
- linked-facility exposure model
- common facility screen composition

This document must align with:

- CIVILIZATION_FACILITY_UI_ARCHITECTURE
- facility type master related documents
- canonical ui target related documents

This document is the top-level UI interface contract
for all facility operation UIs.


# ============================================================
# 2. NON-DUPLICATION RULE
# ============================================================

This document defines only
common UI interface structure.

This document must not redefine:

- business rules
- policy rules
- lower data truth
- calculation formulas
- domain-specific operational logic

Those belong to architecture,
model,
runtime,
and policy layers.


# ============================================================
# 3. CANONICAL SCREEN STACK
# ============================================================

All facility UIs must be derivable
from the following screen stack.

- facility_overview_screen
- facility_manage_screen
- facility_issue_screen
- facility_history_screen
- facility_permission_screen

Optional:

- facility_builder_handoff_screen
- facility_network_screen
- facility_intervention_screen
- facility_kpi_screen
- facility_public_view_screen


# ============================================================
# 4. COMMON TAB SET
# ============================================================

The canonical common tab set is:

- summary_tab
- operation_tab
- people_tab
- goods_or_service_tab
- capacity_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab

A child UI may hide tabs
that are not applicable.

A child UI may add domain tabs,
but may not remove
the concept of issue visibility,
history visibility,
or permission visibility.


# ============================================================
# 5. COMMON SCREEN CONTRACT
# ============================================================

Each facility screen contract
must define:

- screen_id
- screen_name
- route_key
- route_params
- access_context
- mode
- primary_entity
- secondary_entities
- visible_sections
- editable_sections
- actions
- data_dependencies
- empty_state
- loading_state
- error_state
- blocked_state


# ============================================================
# 6. ROUTE PARAMS
# ============================================================

Canonical route params:

- facility_id
- facility_type
- canonical_ui_target
- operator_context_id where applicable
- tenant_context_id where applicable
- district_id where applicable
- screen_mode
- selected_tab where applicable

Child interfaces may add
domain-specific params,
but must not remove facility_id
or canonical_ui_target.


# ============================================================
# 7. ACCESS CONTEXT
# ============================================================

Canonical access contexts:

- visitor
- public_user
- resident
- customer
- employee
- operator
- manager
- owner
- tenant
- authority
- emergency_authority
- maintenance

UI exposure must vary by access context.

Access context changes:

- visible sections
- editable sections
- callable actions

Access context does not change
canonical service truth.


# ============================================================
# 8. UI MODES
# ============================================================

Canonical UI modes:

- overview_mode
- setup_mode
- operate_mode
- auto_mode
- intervention_mode
- admin_mode
- public_mode

Each screen must declare
its mode explicitly.


# ============================================================
# 9. COMMON SECTION CONTRACT
# ============================================================

Each visible section must define:

- section_id
- section_name
- section_type
- display_priority
- visibility_rule
- editability_rule
- data_source_group
- empty_behavior
- action_bindings
- warning_bindings

Section types include:

- summary_card
- metric_strip
- table
- grouped_list
- form
- timeline
- issue_panel
- action_panel
- map_panel
- relationship_panel
- detail_panel


# ============================================================
# 10. COMMON FIELD CONTRACT
# ============================================================

Each field definition must declare:

- field_key
- label
- field_type
- required
- editable
- visibility_rule
- display_format
- validation_rule
- placeholder where applicable
- option_source where applicable
- warning_rule where applicable
- help_text where applicable

Field types may include:

- text
- multiline_text
- enum
- number
- decimal
- boolean
- date
- datetime
- badge
- money
- percentage
- reference
- grouped_reference
- status
- metric
- image
- link_action
- chip_list


# ============================================================
# 11. COMMON ACTION CONTRACT
# ============================================================

Each action must define:

- action_id
- label
- action_type
- visibility_rule
- enabled_rule
- confirmation_rule
- target_scope
- effect_summary

Action types include:

- open_screen
- open_modal
- submit_form
- change_mode
- escalate
- intervene
- assign
- reassign
- pause
- resume
- export
- view_history


# ============================================================
# 12. COMMON UI STATES
# ============================================================

Each screen must define
the following UI states:

- loading
- ready
- empty
- warning
- blocked
- partial_data
- error

Each section may define
its own empty/warning/blocked states
as a specialization.


# ============================================================
# 13. COMMON WARNING MODEL
# ============================================================

Warnings must be grouped by severity.

Canonical severity:

- info
- caution
- warning
- critical

Warnings must expose:

- warning_id
- severity
- title
- summary
- affected_scope
- recommended_action
- linked_action where applicable


# ============================================================
# 14. KPI PANEL CONTRACT
# ============================================================

All operation-family UIs must expose
a KPI panel contract.

Each KPI item must define:

- kpi_key
- label
- value
- unit
- trend_visibility
- warning_state
- comparison_scope where applicable

KPI formulas are not defined here.
Only UI exposure is defined here.


# ============================================================
# 15. ISSUE PANEL CONTRACT
# ============================================================

All operation-family UIs must expose
an issue panel contract.

Each issue item must define:

- issue_id
- issue_type
- severity
- title
- summary
- opened_at where applicable
- current_status
- recommended_action
- linked_detail_action


# ============================================================
# 16. HISTORY PANEL CONTRACT
# ============================================================

History visibility is mandatory.

Each history item must define:

- history_id
- event_type
- occurred_at
- actor_context
- summary
- linked_detail_action where applicable


# ============================================================
# 17. PERMISSION PANEL CONTRACT
# ============================================================

Permission visibility is mandatory.

Each permission block must define:

- role_key
- visible_scope
- editable_scope
- restricted_actions
- escalation_actions where applicable


# ============================================================
# 18. LINKED FACILITY PANEL CONTRACT
# ============================================================

Where applicable,
linked facilities must be exposed.

Each linked facility item must define:

- linked_facility_id
- linked_facility_type
- linked_facility_name
- relation_type
- linked_status
- open_linked_action


# ============================================================
# 19. FINAL RULE
# ============================================================

All child facility UI interface documents
must inherit this interface contract.

No child interface may remove:

- issue visibility
- history visibility
- permission visibility
- explicit state handling
- route identity by facility_id and canonical_ui_target



# ============================================================
# FILE: 3820002_RETAIL_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820003_HOUSING_AND_RESIDENCE_UI_INTERFACE.md
# ============================================================

# ============================================================
# HOUSING AND RESIDENCE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: housing-and-residence-ui-interface
component: housing-and-residence-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the housing and residence UI interface contract
for Civilization living-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOUSING_AND_RESIDENCE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for residence UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- residence_overview_screen
- residence_manage_screen
- resident_household_screen
- residence_unit_structure_screen
- residence_occupancy_screen
- residence_livability_screen
- residence_maintenance_screen
- residence_neighborhood_screen
- residence_issue_screen


# ============================================================
# 3. RESIDENCE OVERVIEW SCREEN
# ============================================================

screen_id: residence_overview_screen
route_key: residence/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- residence_summary_card
- residence_status_strip
- residence_occupancy_warning_panel
- residence_livability_warning_panel
- residence_kpi_strip
- residence_issue_panel
- residence_recent_history_panel

primary_actions:
- open_residence_manage
- open_resident_household
- open_residence_maintenance
- open_residence_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESIDENCE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- resident_tab
- structure_tab
- occupancy_tab
- livability_tab
- maintenance_tab
- neighborhood_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESIDENCE SUMMARY CARD
# ============================================================

section_id: residence_summary_card
section_type: summary_card

fields:
- facility_name
- residence_type
- occupancy_state
- management_context
- district_summary
- livability_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. RESIDENT TAB
# ============================================================

section_id: resident_household_section
section_type: grouped_list

fields:
- resident_group
- household_group where applicable
- resident_count
- support_need_flag
- assignment_context_flag where applicable

actions:
- open_resident_detail
- reassign_resident where supported
- escalate_support_need


# ============================================================
# 7. STRUCTURE TAB
# ============================================================

section_id: residence_structure_section
section_type: table

fields:
- unit_or_room_name
- unit_type
- shared_or_private_state
- suitability_state
- furnishing_completeness_flag where supported
- maintenance_flag

actions:
- open_structure_detail
- reassign_unit where supported


# ============================================================
# 8. OCCUPANCY TAB
# ============================================================

section_id: residence_occupancy_section
section_type: table

fields:
- capacity_value
- current_occupancy_value
- vacancy_state
- crowding_flag
- turnover_signal
- reallocation_pressure_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_overcrowding


# ============================================================
# 9. LIVABILITY TAB
# ============================================================

section_id: residence_livability_section
section_type: detail_panel

fields:
- comfort_state
- cleanliness_state where applicable
- privacy_state where applicable
- daily_life_support_access_state
- environmental_suitability_state
- quality_of_life_warning_flag

actions:
- open_livability_detail
- apply_livability_correction


# ============================================================
# 10. MAINTENANCE TAB
# ============================================================

section_id: residence_maintenance_section
section_type: table

fields:
- utility_availability_state
- maintenance_burden_state
- repair_backlog_flag
- deterioration_state
- habitability_risk_flag
- urgent_maintenance_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 11. NEIGHBORHOOD TAB
# ============================================================

section_id: residence_neighborhood_section
section_type: relationship_panel

fields:
- district_context
- nearby_school_access_state
- nearby_hospital_access_state
- nearby_market_access_state
- transport_access_state
- community_support_access_state
- safety_context_state

actions:
- open_linked_facility
- view_local_dependency


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: residence_automation_section
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

section_id: residence_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- livability_posture
- maintenance_posture
- utility_stability_posture
- neighborhood_access_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: residence_issue_section
section_type: issue_panel

issue_types:
- overcrowding
- under_maintenance
- livability_degradation
- safety_concern
- utility_disruption
- resident_support_concern

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

owner:
- all tabs visible
- some actions may be limited by managed context

resident:
- summary_tab
- resident_tab limited
- neighborhood_tab
- issue_tab limited visibility
- permission tab hidden

authority_or_support_operator:
- issue_tab
- neighborhood_tab
- resident_tab with role-based limits
- maintenance_tab where applicable


# ============================================================
# 16. FINAL RULE
# ============================================================

Residence UI interface must remain
living-oriented,
livability-visible,
occupancy-visible,
and explicitly separable
from pure real-estate asset logic.



# ============================================================
# FILE: 3820004_REAL_ESTATE_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820005_STREAMER_AGENCY_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820006_SCHOOL_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# SCHOOL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: school-operation-ui-interface
component: school-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the school operation UI interface contract
for Civilization education-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SCHOOL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for school operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- school_overview_screen
- school_manage_screen
- school_enrollment_screen
- school_program_screen
- school_staffing_screen
- school_capacity_screen
- school_student_life_screen
- school_safety_and_welfare_screen
- school_issue_screen


# ============================================================
# 3. SCHOOL OVERVIEW SCREEN
# ============================================================

screen_id: school_overview_screen
route_key: school/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- school_summary_card
- school_status_strip
- school_capacity_warning_panel
- school_staffing_warning_panel
- school_kpi_strip
- school_issue_panel
- school_recent_history_panel

primary_actions:
- open_school_manage
- open_school_enrollment
- open_school_student_life
- open_school_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SCHOOL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- enrollment_tab
- program_tab
- staffing_tab
- capacity_tab
- student_life_tab
- safety_and_welfare_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SCHOOL SUMMARY CARD
# ============================================================

section_id: school_summary_card
section_type: summary_card

fields:
- facility_name
- school_type
- institution_context
- district_summary
- enrollment_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ENROLLMENT TAB
# ============================================================

section_id: school_enrollment_section
section_type: table

fields:
- intake_group
- current_student_count
- capacity_state
- progression_stage_group where applicable
- support_need_flag
- overload_flag

actions:
- open_enrollment_detail
- adjust_intake where supported
- escalate_enrollment_issue


# ============================================================
# 7. PROGRAM TAB
# ============================================================

section_id: school_program_section
section_type: grouped_list

fields:
- program_group
- course_count
- specialization_posture
- unsupported_area_flag
- overload_flag
- academic_focus_state

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: school_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- support_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. CAPACITY TAB
# ============================================================

section_id: school_capacity_section
section_type: table

fields:
- campus_or_facility_group
- capacity_value
- utilization_state
- overcrowding_flag
- underuse_flag
- special_facility_pressure_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 10. STUDENT LIFE TAB
# ============================================================

section_id: school_student_life_section
section_type: relationship_panel

fields:
- dormitory_linkage_state where applicable
- student_support_burden_flag
- life_continuity_state
- linked_residence_support_flag
- non_academic_issue_flag
- escalation_need_flag

actions:
- open_student_life_detail
- open_linked_support
- escalate_student_life_issue


# ============================================================
# 11. SAFETY AND WELFARE TAB
# ============================================================

section_id: school_safety_and_welfare_section
section_type: issue_panel

fields:
- safety_state
- discipline_state
- welfare_support_state
- incident_flag
- support_overload_flag
- escalation_need_flag

actions:
- open_safety_detail
- escalate_safety_issue
- trigger_support_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: school_automation_section
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

section_id: school_kpi_section
section_type: metric_strip

kpi_items:
- enrollment_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- program_balance_posture
- student_life_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: school_issue_section
section_type: issue_panel

issue_types:
- overcapacity_or_undercapacity
- teacher_shortage
- student_life_support_overload
- discipline_issue
- safety_concern
- dormitory_linked_issue
- academic_operation_instability

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

teacher_or_staff:
- summary_tab
- program_tab limited
- staffing_tab limited
- issue_tab
- history_tab limited

student_support_operator:
- student_life_tab
- safety_and_welfare_tab
- issue_tab
- linked_tab limited

authority:
- summary_tab
- safety_and_welfare_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

School UI interface must remain
education-oriented,
capacity-visible,
student-life-visible,
issue-visible,
and explicitly separable
from pure residence or training UI.



# ============================================================
# FILE: 3820007_HOSPITAL_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# HOSPITAL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: hospital-operation-ui-interface
component: hospital-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the hospital operation UI interface contract
for Civilization medical-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOSPITAL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for hospital operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- hospital_overview_screen
- hospital_manage_screen
- hospital_patient_flow_screen
- hospital_capacity_screen
- hospital_staffing_screen
- hospital_supply_screen
- hospital_emergency_screen
- hospital_sanitation_and_safety_screen
- hospital_issue_screen


# ============================================================
# 3. HOSPITAL OVERVIEW SCREEN
# ============================================================

screen_id: hospital_overview_screen
route_key: hospital/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- hospital_summary_card
- hospital_status_strip
- hospital_capacity_warning_panel
- hospital_supply_warning_panel
- hospital_kpi_strip
- hospital_issue_panel
- hospital_recent_history_panel

primary_actions:
- open_hospital_manage
- open_hospital_patient_flow
- open_hospital_emergency
- open_hospital_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. HOSPITAL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- patient_flow_tab
- capacity_tab
- staffing_tab
- supply_tab
- emergency_tab
- sanitation_and_safety_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. HOSPITAL SUMMARY CARD
# ============================================================

section_id: hospital_summary_card
section_type: summary_card

fields:
- facility_name
- medical_facility_type
- institution_context
- district_summary
- care_load_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PATIENT FLOW TAB
# ============================================================

section_id: hospital_patient_flow_section
section_type: table

fields:
- intake_group
- patient_flow_posture
- backlog_flag
- overload_flag
- bottleneck_flag
- support_need_flag

actions:
- open_patient_flow_detail
- reprioritize_flow where supported
- escalate_patient_flow_issue


# ============================================================
# 7. CAPACITY TAB
# ============================================================

section_id: hospital_capacity_section
section_type: table

fields:
- department_or_ward_group
- capacity_value
- utilization_state
- overload_flag
- underuse_flag
- mismatch_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: hospital_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- emergency_staffing_stress_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. SUPPLY TAB
# ============================================================

section_id: hospital_supply_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- replenishment_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_emergency_supply_action


# ============================================================
# 10. EMERGENCY TAB
# ============================================================

section_id: hospital_emergency_section
section_type: detail_panel

fields:
- emergency_readiness_state
- surge_pressure_flag
- emergency_capacity_flag
- emergency_staffing_state
- critical_supply_state
- escalation_need_flag

actions:
- open_emergency_detail
- escalate_emergency_state
- trigger_emergency_response where supported


# ============================================================
# 11. SANITATION AND SAFETY TAB
# ============================================================

section_id: hospital_sanitation_and_safety_section
section_type: issue_panel

fields:
- sanitation_state
- hygiene_state
- contamination_concern_flag where supported
- safety_incident_flag
- corrective_burden_flag
- escalation_need_flag

actions:
- open_sanitation_detail
- escalate_sanitation_issue
- trigger_safety_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: hospital_automation_section
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

section_id: hospital_kpi_section
section_type: metric_strip

kpi_items:
- care_load_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- emergency_readiness_posture
- supply_sufficiency_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: hospital_issue_section
section_type: issue_panel

issue_types:
- overload
- staff_shortage
- critical_supply_shortage
- emergency_readiness_concern
- sanitation_or_safety_concern
- intake_bottleneck
- care_capacity_mismatch

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

medical_staff:
- summary_tab
- patient_flow_tab limited
- staffing_tab limited
- supply_tab limited
- issue_tab
- history_tab limited

emergency_operator:
- emergency_tab
- issue_tab
- summary_tab
- linked_tab limited

authority:
- summary_tab
- sanitation_and_safety_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Hospital UI interface must remain
medical-care-oriented,
capacity-visible,
supply-visible,
emergency-visible,
issue-visible,
and explicitly separable
from pure welfare or civic UI.



# ============================================================
# FILE: 3820008_AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820009_FOOD_SERVICE_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820010_LOGISTICS_AND_TRANSPORT_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# LOGISTICS AND TRANSPORT OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: logistics-and-transport-operation-ui-interface
component: logistics-and-transport-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the logistics and transport operation UI interface contract
for Civilization movement-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for logistics and transport operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- logistics_overview_screen
- logistics_manage_screen
- logistics_route_and_service_screen
- logistics_storage_and_transfer_screen
- logistics_capacity_screen
- logistics_staffing_screen
- logistics_reliability_and_delay_screen
- logistics_incident_and_disruption_screen
- logistics_issue_screen


# ============================================================
# 3. LOGISTICS OVERVIEW SCREEN
# ============================================================

screen_id: logistics_overview_screen
route_key: logistics/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- logistics_summary_card
- logistics_status_strip
- logistics_delay_warning_panel
- logistics_capacity_warning_panel
- logistics_kpi_strip
- logistics_issue_panel
- logistics_recent_history_panel

primary_actions:
- open_logistics_manage
- open_logistics_route_and_service
- open_logistics_incident_and_disruption
- open_logistics_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LOGISTICS MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- route_and_service_tab
- storage_and_transfer_tab
- capacity_tab
- staffing_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LOGISTICS SUMMARY CARD
# ============================================================

section_id: logistics_summary_card
section_type: summary_card

fields:
- facility_name
- node_type
- service_role
- district_summary
- route_state
- capacity_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROUTE AND SERVICE TAB
# ============================================================

section_id: logistics_route_and_service_section
section_type: table

fields:
- route_or_service_group
- service_priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_route_detail
- reprioritize_route
- escalate_route_issue


# ============================================================
# 7. STORAGE AND TRANSFER TAB
# ============================================================

section_id: logistics_storage_and_transfer_section
section_type: table

fields:
- storage_or_transfer_group
- load_state
- backlog_flag
- dwell_pressure_flag
- handoff_stability_state
- bottleneck_flag

actions:
- open_storage_detail
- correct_transfer_allocation
- escalate_transfer_issue


# ============================================================
# 8. CAPACITY TAB
# ============================================================

section_id: logistics_capacity_section
section_type: table

fields:
- capacity_group
- capacity_value
- utilization_state
- equipment_sufficiency_state
- readiness_flag
- reassignment_need_flag

actions:
- open_capacity_detail
- reassign_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: logistics_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- dispatch_burden_flag
- handling_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. RELIABILITY AND DELAY TAB
# ============================================================

section_id: logistics_reliability_and_delay_section
section_type: issue_panel

fields:
- delay_state
- reliability_state
- bottleneck_concentration_flag
- disruption_spread_flag
- unstable_service_flag
- corrective_urgency_flag

actions:
- open_reliability_detail
- escalate_delay_issue
- trigger_correction_action where supported


# ============================================================
# 11. INCIDENT AND DISRUPTION TAB
# ============================================================

section_id: logistics_incident_and_disruption_section
section_type: issue_panel

fields:
- incident_group
- severity_state
- affected_service_count
- spread_risk_flag
- emergency_routing_need_flag
- manual_override_need_flag

actions:
- open_incident_detail
- escalate_incident
- trigger_disruption_response where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: logistics_automation_section
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

section_id: logistics_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- capacity_sufficiency_posture
- storage_transfer_posture
- route_reliability_posture
- disruption_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: logistics_issue_section
section_type: issue_panel

issue_types:
- route_instability
- delay_concentration
- storage_backlog
- transfer_bottleneck
- staffing_shortage
- handling_shortage
- disruption_cascade_concern

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

dispatch_operator:
- route_and_service_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- issue_tab
- history_tab limited

transfer_operator:
- storage_and_transfer_tab
- capacity_tab limited
- issue_tab
- summary_tab

authority:
- summary_tab
- incident_and_disruption_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Logistics UI interface must remain
movement-oriented,
route-visible,
capacity-visible,
delay-visible,
disruption-visible,
issue-visible,
and explicitly separable
from manufacturing or infrastructure UI.



# ============================================================
# FILE: 3820011_MANUFACTURING_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# MANUFACTURING OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: manufacturing-operation-ui-interface
component: manufacturing-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the manufacturing operation UI interface contract
for Civilization production-process facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MANUFACTURING_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for manufacturing operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- manufacturing_overview_screen
- manufacturing_manage_screen
- manufacturing_line_and_process_screen
- manufacturing_input_material_screen
- manufacturing_machine_and_equipment_screen
- manufacturing_staffing_screen
- manufacturing_quality_and_defect_screen
- manufacturing_maintenance_and_downtime_screen
- manufacturing_issue_screen


# ============================================================
# 3. MANUFACTURING OVERVIEW SCREEN
# ============================================================

screen_id: manufacturing_overview_screen
route_key: manufacturing/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- manufacturing_summary_card
- manufacturing_status_strip
- manufacturing_input_warning_panel
- manufacturing_quality_warning_panel
- manufacturing_kpi_strip
- manufacturing_issue_panel
- manufacturing_recent_history_panel

primary_actions:
- open_manufacturing_manage
- open_manufacturing_line_and_process
- open_manufacturing_maintenance_and_downtime
- open_manufacturing_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MANUFACTURING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- line_and_process_tab
- input_material_tab
- machine_and_equipment_tab
- staffing_tab
- quality_and_defect_tab
- maintenance_and_downtime_tab
- output_and_linked_flow_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MANUFACTURING SUMMARY CARD
# ============================================================

section_id: manufacturing_summary_card
section_type: summary_card

fields:
- facility_name
- production_type
- operation_context
- district_summary
- line_state
- input_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. LINE AND PROCESS TAB
# ============================================================

section_id: manufacturing_line_and_process_section
section_type: table

fields:
- line_or_process_group
- priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_line_detail
- reprioritize_line
- escalate_line_issue


# ============================================================
# 7. INPUT MATERIAL TAB
# ============================================================

section_id: manufacturing_input_material_section
section_type: table

fields:
- input_group
- sufficiency_state
- shortage_flag
- replenishment_need_flag
- dependency_visibility
- interruption_risk_flag

actions:
- open_input_detail
- escalate_input_issue
- trigger_input_action where supported


# ============================================================
# 8. MACHINE AND EQUIPMENT TAB
# ============================================================

section_id: manufacturing_machine_and_equipment_section
section_type: table

fields:
- machine_group
- readiness_state
- degradation_flag
- operational_strain_flag
- breakdown_risk_flag
- reassignment_need_flag

actions:
- open_machine_detail
- reassign_machine_support
- escalate_machine_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: manufacturing_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- skill_mismatch_flag where applicable
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. QUALITY AND DEFECT TAB
# ============================================================

section_id: manufacturing_quality_and_defect_section
section_type: issue_panel

fields:
- quality_state
- defect_risk_flag
- unstable_output_flag
- mismatch_signal_flag
- corrective_urgency_flag
- rework_burden_flag where supported

actions:
- open_quality_detail
- escalate_quality_issue
- trigger_quality_correction where supported


# ============================================================
# 11. MAINTENANCE AND DOWNTIME TAB
# ============================================================

section_id: manufacturing_maintenance_and_downtime_section
section_type: table

fields:
- maintenance_burden_state
- downtime_state
- repair_backlog_flag
- urgent_maintenance_flag
- line_interruption_flag
- escalation_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 12. OUTPUT AND LINKED FLOW TAB
# ============================================================

section_id: manufacturing_output_and_linked_flow_section
section_type: table

fields:
- output_group
- completion_state
- backlog_flag
- shipment_readiness_state
- storage_pressure_flag
- instability_flag

actions:
- open_output_detail
- open_linked_logistics
- escalate_output_issue


# ============================================================
# 13. AUTOMATION TAB
# ============================================================

section_id: manufacturing_automation_section
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

section_id: manufacturing_kpi_section
section_type: metric_strip

kpi_items:
- production_continuity_posture
- line_utilization_posture
- input_sufficiency_posture
- machine_continuity_posture
- quality_posture
- intervention_frequency_posture


# ============================================================
# 15. ISSUE TAB
# ============================================================

section_id: manufacturing_issue_section
section_type: issue_panel

issue_types:
- input_shortage
- line_instability
- machine_degradation
- breakdown_concern
- staffing_shortage
- quality_degradation
- downtime_concentration
- shipment_linkage_concern

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

line_operator:
- line_and_process_tab
- machine_and_equipment_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- machine_and_equipment_tab
- maintenance_and_downtime_tab
- issue_tab
- summary_tab

quality_operator:
- quality_and_defect_tab
- issue_tab
- output_and_linked_flow_tab limited
- history_tab limited


# ============================================================
# 17. FINAL RULE
# ============================================================

Manufacturing UI interface must remain
process-oriented,
line-visible,
input-visible,
machine-visible,
quality-visible,
issue-visible,
and explicitly separable
from logistics or infrastructure UI.



# ============================================================
# FILE: 3820012_GOVERNMENT_AND_CIVIC_SERVICE_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820013_FINANCE_AND_SECURITIES_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820014_SECURITY_AND_JUDICIARY_UI_INTERFACE.md
# ============================================================

# ============================================================
# SECURITY AND JUDICIARY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: security-and-judiciary-ui-interface
component: security-and-judiciary-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the security and judiciary UI interface contract
for Civilization enforcement- and justice-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SECURITY_AND_JUDICIARY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for security and judiciary UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- security_overview_screen
- security_manage_screen
- security_incident_and_intake_screen
- security_case_and_process_screen
- security_custody_and_capacity_screen
- security_staffing_screen
- security_readiness_and_escalation_screen
- security_stability_screen
- security_issue_screen


# ============================================================
# 3. SECURITY OVERVIEW SCREEN
# ============================================================

screen_id: security_overview_screen
route_key: security/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- security_summary_card
- security_status_strip
- security_case_warning_panel
- security_capacity_warning_panel
- security_kpi_strip
- security_issue_panel
- security_recent_history_panel

primary_actions:
- open_security_manage
- open_security_incident_and_intake
- open_security_case_and_process
- open_security_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SECURITY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- incident_and_intake_tab
- case_and_process_tab
- custody_and_capacity_tab
- staffing_tab
- readiness_and_escalation_tab
- stability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SECURITY SUMMARY CARD
# ============================================================

section_id: security_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- authority_context
- district_summary
- incident_state
- case_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. INCIDENT AND INTAKE TAB
# ============================================================

section_id: security_incident_and_intake_section
section_type: table

fields:
- incident_group
- intake_load_state
- severity_state
- response_burden_flag
- backlog_flag
- escalation_need_flag

actions:
- open_incident_detail
- reprioritize_response
- escalate_incident_issue


# ============================================================
# 7. CASE AND PROCESS TAB
# ============================================================

section_id: security_case_and_process_section
section_type: table

fields:
- case_group
- process_backlog_state
- blocked_case_flag
- delayed_case_flag
- progression_state
- escalation_need_flag

actions:
- open_case_detail
- escalate_case
- reprioritize_case_handling


# ============================================================
# 8. CUSTODY AND CAPACITY TAB
# ============================================================

section_id: security_custody_and_capacity_section
section_type: table

fields:
- custody_group
- capacity_value
- utilization_state
- overcapacity_flag
- transfer_need_flag
- stability_pressure_flag

actions:
- open_custody_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: security_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- response_burden_flag
- process_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. READINESS AND ESCALATION TAB
# ============================================================

section_id: security_readiness_and_escalation_section
section_type: detail_panel

fields:
- readiness_state
- escalation_state
- emergency_response_visibility
- instability_flag
- rapid_correction_need_flag
- dependency_visibility

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_response_action where supported


# ============================================================
# 11. STABILITY TAB
# ============================================================

section_id: security_stability_section
section_type: issue_panel

fields:
- safety_state
- internal_stability_state
- custody_stability_state where applicable
- risk_concentration_flag
- support_burden_flag
- urgent_correction_flag

actions:
- open_stability_detail
- escalate_stability_issue
- trigger_follow_up where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: security_automation_section
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

section_id: security_kpi_section
section_type: metric_strip

kpi_items:
- response_continuity_posture
- intake_posture
- case_progression_posture
- custody_capacity_posture
- escalation_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: security_issue_section
section_type: issue_panel

issue_types:
- incident_overload
- case_backlog
- staffing_shortage
- custody_capacity_concern
- escalation_delay
- stability_concern
- linked_authority_inconsistency_visibility

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

response_operator:
- incident_and_intake_tab
- readiness_and_escalation_tab limited
- issue_tab
- history_tab limited

case_operator:
- case_and_process_tab
- issue_tab
- summary_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Security and judiciary UI interface must remain
authority-oriented,
incident-visible,
case-visible,
capacity-visible,
readiness-visible,
issue-visible,
and explicitly separable
from government or military UI.



# ============================================================
# FILE: 3820015_MILITARY_BASE_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# MILITARY BASE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: military-base-operation-ui-interface
component: military-base-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the military base operation UI interface contract
for Civilization defense-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for military base operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- military_overview_screen
- military_manage_screen
- military_force_organization_screen
- military_readiness_and_alert_screen
- military_equipment_screen
- military_supply_and_support_screen
- military_training_screen
- military_deployment_support_screen
- military_issue_screen


# ============================================================
# 3. MILITARY OVERVIEW SCREEN
# ============================================================

screen_id: military_overview_screen
route_key: military/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- military_summary_card
- military_status_strip
- military_readiness_warning_panel
- military_supply_warning_panel
- military_kpi_strip
- military_issue_panel
- military_recent_history_panel

primary_actions:
- open_military_manage
- open_military_force_organization
- open_military_readiness_and_alert
- open_military_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MILITARY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- force_organization_tab
- readiness_and_alert_tab
- equipment_tab
- supply_and_support_tab
- training_tab
- deployment_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MILITARY SUMMARY CARD
# ============================================================

section_id: military_summary_card
section_type: summary_card

fields:
- facility_name
- base_type
- defense_role
- district_or_strategic_summary
- readiness_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. FORCE ORGANIZATION TAB
# ============================================================

section_id: military_force_organization_section
section_type: table

fields:
- force_group
- role_group
- balance_state
- unsupported_area_flag
- concentration_flag
- reallocation_pressure_flag

actions:
- open_force_detail
- reassign_force where supported
- escalate_force_issue


# ============================================================
# 7. READINESS AND ALERT TAB
# ============================================================

section_id: military_readiness_and_alert_section
section_type: detail_panel

fields:
- readiness_state
- alert_state
- degraded_readiness_flag
- instability_flag
- surge_burden_flag
- corrective_need_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- correct_alert_posture where supported


# ============================================================
# 8. EQUIPMENT TAB
# ============================================================

section_id: military_equipment_section
section_type: table

fields:
- equipment_group
- readiness_state
- degradation_flag
- maintenance_burden_flag
- capability_gap_flag
- downtime_need_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_maintenance_action


# ============================================================
# 9. SUPPLY AND SUPPORT TAB
# ============================================================

section_id: military_supply_and_support_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- escalation_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_support_action where supported


# ============================================================
# 10. TRAINING TAB
# ============================================================

section_id: military_training_section
section_type: grouped_list

fields:
- training_group
- preparedness_state
- unsupported_area_flag
- imbalance_flag
- readiness_improvement_need_flag
- correction_urgency_flag

actions:
- open_training_detail
- reprioritize_training
- escalate_training_issue


# ============================================================
# 11. DEPLOYMENT SUPPORT TAB
# ============================================================

section_id: military_deployment_support_section
section_type: relationship_panel

fields:
- deployment_support_state
- movement_readiness_state
- support_burden_flag
- staging_visibility
- instability_flag
- logistics_dependency_flag

actions:
- open_deployment_detail
- open_linked_logistics
- escalate_deployment_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: military_automation_section
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

section_id: military_kpi_section
section_type: metric_strip

kpi_items:
- readiness_posture
- force_sufficiency_posture
- supply_sufficiency_posture
- equipment_continuity_posture
- training_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: military_issue_section
section_type: issue_panel

issue_types:
- degraded_readiness
- supply_shortage
- equipment_degradation
- training_shortfall
- alert_instability
- support_burden_concern
- linked_logistics_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager_or_command:
- all tabs visible
- all standard actions visible

operations_operator:
- readiness_and_alert_tab
- deployment_support_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- equipment_tab
- supply_and_support_tab limited
- issue_tab
- summary_tab

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Military UI interface must remain
defense-oriented,
force-visible,
readiness-visible,
supply-visible,
equipment-visible,
issue-visible,
and explicitly separable
from security or logistics UI.



# ============================================================
# FILE: 3820016_MEDIA_OPERATION_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820017_EXHIBITION_AND_EVENT_UI_INTERFACE.md
# ============================================================

# ============================================================
# EXHIBITION AND EVENT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: exhibition-and-event-ui-interface
component: exhibition-and-event-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the exhibition and event UI interface contract
for Civilization venue- and event-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- EXHIBITION_AND_EVENT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for exhibition and event UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- exhibition_overview_screen
- exhibition_manage_screen
- exhibition_event_and_program_screen
- exhibition_layout_and_space_screen
- exhibition_exhibitor_and_participant_screen
- exhibition_admission_and_visitor_flow_screen
- exhibition_staffing_and_turnover_screen
- exhibition_readiness_and_reliability_screen
- exhibition_issue_screen


# ============================================================
# 3. EXHIBITION OVERVIEW SCREEN
# ============================================================

screen_id: exhibition_overview_screen
route_key: exhibition/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- exhibition_summary_card
- exhibition_status_strip
- exhibition_layout_warning_panel
- exhibition_admission_warning_panel
- exhibition_kpi_strip
- exhibition_issue_panel
- exhibition_recent_history_panel

primary_actions:
- open_exhibition_manage
- open_exhibition_event_and_program
- open_exhibition_layout_and_space
- open_exhibition_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. EXHIBITION MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- event_and_program_tab
- layout_and_space_tab
- exhibitor_and_participant_tab
- admission_and_visitor_flow_tab
- staffing_and_turnover_tab
- readiness_and_reliability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. EXHIBITION SUMMARY CARD
# ============================================================

section_id: exhibition_summary_card
section_type: summary_card

fields:
- facility_name
- venue_type
- institution_context
- district_summary
- event_state
- readiness_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. EVENT AND PROGRAM TAB
# ============================================================

section_id: exhibition_event_and_program_section
section_type: grouped_list

fields:
- event_group
- program_count
- timing_posture
- overload_flag
- unsupported_area_flag
- reconfiguration_pressure_flag

actions:
- open_event_detail
- reprioritize_event
- escalate_event_issue


# ============================================================
# 7. LAYOUT AND SPACE TAB
# ============================================================

section_id: exhibition_layout_and_space_section
section_type: table

fields:
- zone_or_layout_group
- allocation_state
- overcrowding_flag
- underuse_flag
- setup_readiness_flag
- mismatch_flag

actions:
- open_layout_detail
- reassign_space
- escalate_layout_issue


# ============================================================
# 8. EXHIBITOR AND PARTICIPANT TAB
# ============================================================

section_id: exhibition_exhibitor_and_participant_section
section_type: table

fields:
- exhibitor_or_participant_group
- onboarding_state
- readiness_state
- coordination_burden_flag
- instability_flag
- correction_need_flag

actions:
- open_participant_detail
- reprioritize_participant_support
- escalate_participant_issue


# ============================================================
# 9. ADMISSION AND VISITOR FLOW TAB
# ============================================================

section_id: exhibition_admission_and_visitor_flow_section
section_type: table

fields:
- admission_group
- entry_state
- queue_state
- visitor_flow_state
- bottleneck_flag
- correction_need_flag

actions:
- open_admission_detail
- correct_admission_flow
- escalate_admission_issue


# ============================================================
# 10. STAFFING AND TURNOVER TAB
# ============================================================

section_id: exhibition_staffing_and_turnover_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- turnover_burden_flag
- setup_teardown_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. READINESS AND RELIABILITY TAB
# ============================================================

section_id: exhibition_readiness_and_reliability_section
section_type: issue_panel

fields:
- readiness_state
- setup_completion_state
- instability_flag
- delay_concentration_flag
- service_reliability_state
- correction_urgency_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_correction_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: exhibition_automation_section
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

section_id: exhibition_kpi_section
section_type: metric_strip

kpi_items:
- event_continuity_posture
- layout_readiness_posture
- staffing_sufficiency_posture
- admission_posture
- visitor_flow_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: exhibition_issue_section
section_type: issue_panel

issue_types:
- layout_instability
- staffing_shortage
- participant_coordination_burden
- admission_bottleneck
- schedule_delay
- readiness_concern
- visitor_flow_instability

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

venue_operator:
- layout_and_space_tab
- admission_and_visitor_flow_tab limited
- issue_tab
- history_tab limited

participant_coordinator:
- exhibitor_and_participant_tab
- event_and_program_tab limited
- issue_tab
- summary_tab

admission_operator:
- admission_and_visitor_flow_tab
- readiness_and_reliability_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Exhibition UI interface must remain
venue-operation-oriented,
event-visible,
layout-visible,
admission-visible,
readiness-visible,
issue-visible,
and explicitly separable
from media or culture UI.



# ============================================================
# FILE: 3820018_COMPANY_PREMISES_AND_TENANT_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820019_INFRASTRUCTURE_AND_UTILITY_UI_INTERFACE.md
# ============================================================

# ============================================================
# INFRASTRUCTURE AND UTILITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: infrastructure-and-utility-ui-interface
component: infrastructure-and-utility-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the infrastructure and utility UI interface contract
for Civilization foundational-service facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for infrastructure and utility UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- infrastructure_overview_screen
- infrastructure_manage_screen
- infrastructure_coverage_and_region_screen
- infrastructure_supply_and_capacity_screen
- infrastructure_dependency_and_linkage_screen
- infrastructure_maintenance_and_condition_screen
- infrastructure_outage_and_restoration_screen
- infrastructure_staffing_and_control_screen
- infrastructure_issue_screen


# ============================================================
# 3. INFRASTRUCTURE OVERVIEW SCREEN
# ============================================================

screen_id: infrastructure_overview_screen
route_key: infrastructure/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- infrastructure_summary_card
- infrastructure_status_strip
- infrastructure_outage_warning_panel
- infrastructure_dependency_warning_panel
- infrastructure_kpi_strip
- infrastructure_issue_panel
- infrastructure_recent_history_panel

primary_actions:
- open_infrastructure_manage
- open_infrastructure_coverage_and_region
- open_infrastructure_outage_and_restoration
- open_infrastructure_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. INFRASTRUCTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- coverage_and_region_tab
- supply_and_capacity_tab
- dependency_and_linkage_tab
- maintenance_and_condition_tab
- outage_and_restoration_tab
- staffing_and_control_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. INFRASTRUCTURE SUMMARY CARD
# ============================================================

section_id: infrastructure_summary_card
section_type: summary_card

fields:
- facility_name
- utility_type
- service_role
- district_summary
- coverage_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. COVERAGE AND REGION TAB
# ============================================================

section_id: infrastructure_coverage_and_region_section
section_type: table

fields:
- region_group
- coverage_state
- uncovered_flag
- overextended_flag
- imbalance_flag
- priority_region_flag

actions:
- open_region_detail
- reprioritize_region
- escalate_coverage_issue


# ============================================================
# 7. SUPPLY AND CAPACITY TAB
# ============================================================

section_id: infrastructure_supply_and_capacity_section
section_type: table

fields:
- supply_group
- capacity_value
- supply_state
- overload_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_supply_detail
- correct_supply_allocation
- escalate_supply_issue


# ============================================================
# 8. DEPENDENCY AND LINKAGE TAB
# ============================================================

section_id: infrastructure_dependency_and_linkage_section
section_type: detail_panel

fields:
- dependency_group
- linked_facility_visibility
- critical_dependency_flag
- cascading_risk_flag
- unstable_link_flag
- correction_urgency_flag

actions:
- open_dependency_detail
- open_linked_facility
- escalate_dependency_issue


# ============================================================
# 9. MAINTENANCE AND CONDITION TAB
# ============================================================

section_id: infrastructure_maintenance_and_condition_section
section_type: table

fields:
- maintenance_group
- maintenance_burden_state
- repair_backlog_flag
- degradation_flag
- interruption_risk_flag
- restoration_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 10. OUTAGE AND RESTORATION TAB
# ============================================================

section_id: infrastructure_outage_and_restoration_section
section_type: issue_panel

fields:
- outage_group
- outage_state
- restoration_progress_state
- affected_region_count
- emergency_correction_flag
- recovery_burden_flag

actions:
- open_outage_detail
- escalate_outage_issue
- trigger_restoration_action where supported


# ============================================================
# 11. STAFFING AND CONTROL TAB
# ============================================================

section_id: infrastructure_staffing_and_control_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- control_burden_flag
- maintenance_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: infrastructure_automation_section
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

section_id: infrastructure_kpi_section
section_type: metric_strip

kpi_items:
- coverage_posture
- supply_sufficiency_posture
- outage_posture
- restoration_posture
- dependency_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: infrastructure_issue_section
section_type: issue_panel

issue_types:
- coverage_gap
- supply_instability
- outage_concentration
- dependency_concern
- maintenance_overload
- staffing_shortage
- restoration_delay

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

control_operator:
- supply_and_capacity_tab
- dependency_and_linkage_tab limited
- outage_and_restoration_tab
- issue_tab

maintenance_operator:
- maintenance_and_condition_tab
- outage_and_restoration_tab limited
- issue_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Infrastructure UI interface must remain
utility-service-oriented,
coverage-visible,
supply-visible,
outage-visible,
dependency-visible,
issue-visible,
and explicitly separable
from logistics or manufacturing UI.



# ============================================================
# FILE: 3820020_CULTURE_AND_LEISURE_UI_INTERFACE.md
# ============================================================

# ============================================================
# CULTURE AND LEISURE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: culture-and-leisure-ui-interface
component: culture-and-leisure-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the culture and leisure UI interface contract
for Civilization attraction-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- CULTURE_AND_LEISURE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for culture and leisure UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- culture_overview_screen
- culture_manage_screen
- culture_program_and_activity_screen
- culture_visitor_and_flow_screen
- culture_atmosphere_and_condition_screen
- culture_staffing_and_upkeep_screen
- culture_appeal_and_visibility_screen
- culture_money_visibility_screen
- culture_issue_screen


# ============================================================
# 3. CULTURE OVERVIEW SCREEN
# ============================================================

screen_id: culture_overview_screen
route_key: culture/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- culture_summary_card
- culture_status_strip
- culture_visitor_warning_panel
- culture_condition_warning_panel
- culture_kpi_strip
- culture_issue_panel
- culture_recent_history_panel

primary_actions:
- open_culture_manage
- open_culture_program_and_activity
- open_culture_visitor_and_flow
- open_culture_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. CULTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_activity_tab
- visitor_and_flow_tab
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- appeal_and_visibility_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. CULTURE SUMMARY CARD
# ============================================================

section_id: culture_summary_card
section_type: summary_card

fields:
- facility_name
- attraction_type
- institution_context
- district_summary
- visitor_state
- appeal_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND ACTIVITY TAB
# ============================================================

section_id: culture_program_and_activity_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. VISITOR AND FLOW TAB
# ============================================================

section_id: culture_visitor_and_flow_section
section_type: table

fields:
- visitor_group
- visitor_state
- overcrowding_flag
- underuse_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_visitor_detail
- correct_flow
- escalate_flow_issue


# ============================================================
# 8. ATMOSPHERE AND CONDITION TAB
# ============================================================

section_id: culture_atmosphere_and_condition_section
section_type: detail_panel

fields:
- atmosphere_state
- cleanliness_state where applicable
- visual_condition_state
- degradation_flag
- attraction_quality_flag
- urgent_correction_flag

actions:
- open_condition_detail
- apply_condition_correction
- escalate_condition_issue


# ============================================================
# 9. STAFFING AND UPKEEP TAB
# ============================================================

section_id: culture_staffing_and_upkeep_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- upkeep_burden_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. APPEAL AND VISIBILITY TAB
# ============================================================

section_id: culture_appeal_and_visibility_section
section_type: issue_panel

fields:
- appeal_state
- visibility_state
- decline_flag
- growth_signal where applicable
- underperforming_area_flag
- correction_need_flag

actions:
- open_appeal_detail
- investigate_decline
- escalate_appeal_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: culture_money_visibility_section
section_type: detail_panel

fields:
- admission_state where applicable
- pricing_visibility
- burden_visibility
- underperforming_program_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: culture_automation_section
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

section_id: culture_kpi_section
section_type: metric_strip

kpi_items:
- visitor_posture
- attraction_continuity_posture
- site_condition_posture
- staffing_sufficiency_posture
- appeal_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: culture_issue_section
section_type: issue_panel

issue_types:
- visitor_instability
- overcrowding_or_underuse
- site_condition_degradation
- staffing_shortage
- appeal_decline
- program_imbalance
- readiness_concern

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

program_operator:
- program_and_activity_tab
- visitor_and_flow_tab limited
- issue_tab
- history_tab limited

site_operator:
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- issue_tab
- summary_tab

public_information_operator:
- appeal_and_visibility_tab
- money_visibility_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Culture and leisure UI interface must remain
attraction-oriented,
program-visible,
visitor-visible,
condition-visible,
appeal-visible,
issue-visible,
and explicitly separable
from exhibition or media UI.



# ============================================================
# FILE: 3820021_COMMUNITY_AND_LIFE_SUPPORT_UI_INTERFACE.md
# ============================================================

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



# ============================================================
# FILE: 3820022_LODGING_AND_STAY_UI_INTERFACE.md
# ============================================================

# ============================================================
# LODGING AND STAY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: lodging-and-stay-ui-interface
component: lodging-and-stay-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the lodging and stay UI interface contract
for Civilization temporary-stay-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LODGING_AND_STAY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for lodging and stay UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- lodging_overview_screen
- lodging_manage_screen
- lodging_room_and_unit_screen
- lodging_booking_and_assignment_screen
- lodging_guest_and_support_screen
- lodging_cleaning_and_turnover_screen
- lodging_occupancy_and_utilization_screen
- lodging_money_visibility_screen
- lodging_issue_screen


# ============================================================
# 3. LODGING OVERVIEW SCREEN
# ============================================================

screen_id: lodging_overview_screen
route_key: lodging/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- lodging_summary_card
- lodging_status_strip
- lodging_booking_warning_panel
- lodging_turnover_warning_panel
- lodging_kpi_strip
- lodging_issue_panel
- lodging_recent_history_panel

primary_actions:
- open_lodging_manage
- open_lodging_room_and_unit
- open_lodging_booking_and_assignment
- open_lodging_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LODGING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- room_and_unit_tab
- booking_and_assignment_tab
- guest_and_support_tab
- cleaning_and_turnover_tab
- occupancy_and_utilization_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LODGING SUMMARY CARD
# ============================================================

section_id: lodging_summary_card
section_type: summary_card

fields:
- facility_name
- lodging_type
- operation_context
- district_summary
- occupancy_state
- turnover_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROOM AND UNIT TAB
# ============================================================

section_id: lodging_room_and_unit_section
section_type: table

fields:
- room_or_unit_group
- room_type
- allocation_state
- unavailable_flag
- underuse_flag
- reassignment_need_flag

actions:
- open_room_detail
- reassign_room
- escalate_room_issue


# ============================================================
# 7. BOOKING AND ASSIGNMENT TAB
# ============================================================

section_id: lodging_booking_and_assignment_section
section_type: table

fields:
- booking_group
- assignment_state
- blocked_assignment_flag
- delayed_assignment_flag
- turnover_conflict_flag
- correction_need_flag

actions:
- open_booking_detail
- correct_assignment
- escalate_booking_issue


# ============================================================
# 8. GUEST AND SUPPORT TAB
# ============================================================

section_id: lodging_guest_and_support_section
section_type: grouped_list

fields:
- guest_group
- support_burden_flag
- special_support_visibility where applicable
- assignment_mismatch_flag
- unresolved_support_flag
- escalation_need_flag

actions:
- open_guest_detail
- open_support_follow_up
- escalate_guest_issue


# ============================================================
# 9. CLEANING AND TURNOVER TAB
# ============================================================

section_id: lodging_cleaning_and_turnover_section
section_type: table

fields:
- turnover_group
- cleaning_state
- turnover_burden_flag
- delayed_turnover_flag
- room_readiness_state
- correction_urgency_flag

actions:
- open_turnover_detail
- escalate_turnover_issue
- trigger_cleaning_action where supported


# ============================================================
# 10. OCCUPANCY AND UTILIZATION TAB
# ============================================================

section_id: lodging_occupancy_and_utilization_section
section_type: issue_panel

fields:
- occupancy_state
- utilization_state
- underuse_flag
- overload_flag
- mismatch_between_intended_and_actual_use_flag
- correction_need_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_occupancy_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: lodging_money_visibility_section
section_type: detail_panel

fields:
- stay_charge_visibility where applicable
- burden_visibility
- underperforming_unit_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: lodging_automation_section
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

section_id: lodging_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- turnover_posture
- room_readiness_posture
- staffing_sufficiency_posture
- guest_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: lodging_issue_section
section_type: issue_panel

issue_types:
- booking_conflict
- occupancy_instability
- cleaning_delay
- turnover_backlog
- staffing_shortage
- guest_support_concern
- urgent_intervention_trigger

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

booking_operator:
- booking_and_assignment_tab
- occupancy_and_utilization_tab limited
- issue_tab
- history_tab limited

cleaning_operator:
- cleaning_and_turnover_tab
- room_and_unit_tab limited
- issue_tab
- summary_tab

guest_support_operator:
- guest_and_support_tab
- issue_tab
- linked_tab limited
- summary_tab

authority:
- summary_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Lodging UI interface must remain
stay-oriented,
room-visible,
booking-visible,
turnover-visible,
occupancy-visible,
issue-visible,
and explicitly separable
from residence or real-estate UI.



# ============================================================
# FILE: 3820023_RESEARCH_AND_TECHNOLOGY_UI_INTERFACE.md
# ============================================================

# ============================================================
# RESEARCH AND TECHNOLOGY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: research-and-technology-ui-interface
component: research-and-technology-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the research and technology UI interface contract
for Civilization research-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for research and technology UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- research_overview_screen
- research_manage_screen
- research_program_and_focus_screen
- research_staff_and_allocation_screen
- research_laboratory_and_equipment_screen
- research_output_and_progress_screen
- research_budget_and_support_screen
- research_issue_screen


# ============================================================
# 3. RESEARCH OVERVIEW SCREEN
# ============================================================

screen_id: research_overview_screen
route_key: research/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- research_summary_card
- research_status_strip
- research_equipment_warning_panel
- research_progress_warning_panel
- research_kpi_strip
- research_issue_panel
- research_recent_history_panel

primary_actions:
- open_research_manage
- open_research_program_and_focus
- open_research_output_and_progress
- open_research_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESEARCH MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_focus_tab
- staff_and_allocation_tab
- laboratory_and_equipment_tab
- output_and_progress_tab
- budget_and_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESEARCH SUMMARY CARD
# ============================================================

section_id: research_summary_card
section_type: summary_card

fields:
- facility_name
- research_type
- institution_context
- district_summary
- program_state
- equipment_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND FOCUS TAB
# ============================================================

section_id: research_program_and_focus_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- focus_visibility
- unsupported_area_flag
- priority_state
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. STAFF AND ALLOCATION TAB
# ============================================================

section_id: research_staff_and_allocation_section
section_type: table

fields:
- staff_group
- allocation_state
- coverage_state
- overload_flag
- specialization_need_flag
- reassignment_need_flag

actions:
- open_staff_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 8. LABORATORY AND EQUIPMENT TAB
# ============================================================

section_id: research_laboratory_and_equipment_section
section_type: table

fields:
- lab_or_equipment_group
- readiness_state
- degradation_flag
- bottleneck_flag
- correction_need_flag
- support_burden_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_support_action


# ============================================================
# 9. OUTPUT AND PROGRESS TAB
# ============================================================

section_id: research_output_and_progress_section
section_type: issue_panel

fields:
- output_state
- progress_visibility
- unstable_progress_flag
- blocked_output_flag
- milestone_posture where applicable
- correction_urgency_flag

actions:
- open_progress_detail
- investigate_blocked_progress
- escalate_progress_issue


# ============================================================
# 10. BUDGET AND SUPPORT TAB
# ============================================================

section_id: research_budget_and_support_section
section_type: detail_panel

fields:
- budget_visibility where applicable
- support_visibility
- burden_concentration_flag
- under_supported_area_flag
- correction_need_flag
- support_note where applicable

actions:
- open_support_detail
- rebalance_support where supported
- escalate_support_issue


# ============================================================
# 11. AUTOMATION TAB
# ============================================================

section_id: research_automation_section
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
# 12. KPI TAB
# ============================================================

section_id: research_kpi_section
section_type: metric_strip

kpi_items:
- program_continuity_posture
- staffing_sufficiency_posture
- equipment_readiness_posture
- output_posture
- support_posture
- intervention_frequency_posture


# ============================================================
# 13. ISSUE TAB
# ============================================================

section_id: research_issue_section
section_type: issue_panel

issue_types:
- staffing_shortage
- equipment_instability
- blocked_progress
- under_supported_program
- output_degradation
- lab_bottleneck
- urgent_intervention_trigger

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 14. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

program_operator:
- program_and_focus_tab
- output_and_progress_tab limited
- issue_tab
- history_tab limited

lab_operator:
- laboratory_and_equipment_tab
- issue_tab
- summary_tab
- linked_tab limited

support_or_budget_operator:
- budget_and_support_tab
- issue_tab
- history_tab limited
- summary_tab


# ============================================================
# 15. FINAL RULE
# ============================================================

Research UI interface must remain
research-oriented,
program-visible,
staffing-visible,
equipment-visible,
progress-visible,
issue-visible,
and explicitly separable
from education or manufacturing UI.

