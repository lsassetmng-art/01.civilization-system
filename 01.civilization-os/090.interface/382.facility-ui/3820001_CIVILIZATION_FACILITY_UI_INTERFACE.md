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
