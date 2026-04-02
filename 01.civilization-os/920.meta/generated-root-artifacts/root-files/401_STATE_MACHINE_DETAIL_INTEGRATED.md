# ============================================================
# 401 STATE MACHINE DETAIL INTEGRATED
# ============================================================

status: canonical
type: integrated
owner: Boss
prepared_by: Zero

# ============================================================
# SOURCE FILES
# ============================================================
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.military-and-infrastructure-ui-integration/4010001_MILITARY_AND_INFRASTRUCTURE_UI_INTEGRATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010002_LEGISLATIVE_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010003_ADMINISTRATIVE_PROCESS_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010004_JUDICIAL_PROCESS_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010005_DISEASE_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010006_ACCIDENT_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010007_AI_ROBOT_ABNORMAL_STATE_MACHINE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010101_MILITARY_SERVICE_UI_INTEGRATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010102_INFRASTRUCTURE_BUILD_UI_INTEGRATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010103_NATION_TYPE_DEFAULT_AND_OVERRIDE_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010104_MILITARY_AND_INFRASTRUCTURE_PREVIEW_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010105_MILITARY_AND_INFRASTRUCTURE_PERMISSION_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010106_FIELD_MAP_POLICY_TO_ACTION_BINDING_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010107_NATION_BUILDER_POLICY_SUMMARY_CARD_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010108_MILITARY_INFRASTRUCTURE_UI_COPY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_UI_INTERFACE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_UI_IMPLEMENTATION.md



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.military-and-infrastructure-ui-integration/4010001_MILITARY_AND_INFRASTRUCTURE_UI_INTEGRATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# MILITARY AND INFRASTRUCTURE UI INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI integration architecture
for military service policy
and infrastructure governance
inside Nation Builder and Field Map.

This architecture defines:

- nation type default display
- nation-specific override display
- military service control surfaces
- infrastructure governance control surfaces
- field-map execution surfaces
- preview and permission-aware UI behavior


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Policy design must become visible
at the point where users configure,
preview,
and execute actions.

Users must be able to understand:

- what the nation type default is
- what this specific nation overrides
- how conscription or enlistment behaves
- who may place roads, rail, stations, and ports
- what the current authority allows on the field map


# ============================================================
# 3. REQUIRED UI TARGETS
# ============================================================

required_ui_targets:
- nation_builder
- nation_overview
- nation_detail
- field_map
- military_facility_surface
- infrastructure_build_menu
- permission_feedback_surface


# ============================================================
# 4. FINAL RULE
# ============================================================

Military and infrastructure policy
must not remain hidden in abstract documents.
They must become visible
where the user actually decides and acts.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_ARCHITECTURE.md
# ============================================================

# ============================================================
# STATE MACHINE DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: state-machine-detail
component: state-machine-detail

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for explicit state-machine detail
inside Civilization.

This document covers:

- legislative state machine
- administrative state machine
- judicial state machine
- disease state machine
- accident state machine
- Ai(Robot) abnormal state machine

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

High-impact progression families
must remain state-explicit.

Transitions,
holds,
recovery,
and terminal outcomes
must not remain implicit.

# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- LEGISLATIVE_STATE_MACHINE_ARCHITECTURE
- ADMINISTRATIVE_PROCESS_STATE_MACHINE_ARCHITECTURE
- JUDICIAL_PROCESS_STATE_MACHINE_ARCHITECTURE
- DISEASE_STATE_MACHINE_ARCHITECTURE
- ACCIDENT_STATE_MACHINE_ARCHITECTURE
- AI_ROBOT_ABNORMAL_STATE_MACHINE_ARCHITECTURE

# ============================================================
# 4. FINAL RULE
# ============================================================

State machine detail architecture must remain:

- stage-explicit
- transition-aware
- recoverable where supported
- history-capable


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010002_LEGISLATIVE_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# LEGISLATIVE STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: legislative-state-machine
component: legislative-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative legislative states include:

- drafting
- submitted
- queued_for_deliberation
- deliberating
- amended
- voted_pass
- voted_fail
- promulgated
- effective
- repealed

# ============================================================
# 2. FINAL RULE
# ============================================================

Legislative state machine architecture must remain:

- stage-explicit
- vote-aware
- promulgation-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010003_ADMINISTRATIVE_PROCESS_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# ADMINISTRATIVE PROCESS STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: administrative-process-state-machine
component: administrative-process-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative administrative states include:

- submitted
- queued
- under_review
- waiting_for_information
- approved
- denied
- enforced
- redirected
- archived

# ============================================================
# 2. FINAL RULE
# ============================================================

Administrative process state machine architecture must remain:

- queue-aware
- approval-aware
- denial-aware
- enforcement-capable


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010004_JUDICIAL_PROCESS_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# JUDICIAL PROCESS STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: judicial-process-state-machine
component: judicial-process-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative judicial states include:

- intake
- scheduled
- hearing
- under_judgment
- detained
- bailed
- released
- sentenced
- closed

# ============================================================
# 2. FINAL RULE
# ============================================================

Judicial process state machine architecture must remain:

- hearing-aware
- detention-aware
- bail-aware
- judgment-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010005_DISEASE_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# DISEASE STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: disease-state-machine
component: disease-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative disease states include:

- exposed
- latent
- symptomatic
- treated
- hospitalized
- recovered
- chronic_where_supported
- dead

# ============================================================
# 2. FINAL RULE
# ============================================================

Disease state machine architecture must remain:

- progression-aware
- treatment-aware
- hospitalization-aware
- recovery-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010006_ACCIDENT_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# ACCIDENT STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: accident-state-machine
component: accident-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative accident states include:

- risk_exposed
- incident_occurred
- injured
- rescued
- treated
- stabilized
- recovered
- dead

# ============================================================
# 2. FINAL RULE
# ============================================================

Accident state machine architecture must remain:

- incident-aware
- rescue-aware
- treatment-aware
- recovery-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/401.state-machine-detail/4010007_AI_ROBOT_ABNORMAL_STATE_MACHINE_ARCHITECTURE.md
# ============================================================

# ============================================================
# AI ROBOT ABNORMAL STATE MACHINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: ai-robot-abnormal-state-machine
component: ai-robot-abnormal-state-machine

owner: Boss
prepared_by: Zero

# ============================================================
# 1. REPRESENTATIVE STATES
# ============================================================

Representative Ai(Robot) abnormal states include:

- normal
- contaminated
- override_active
- runaway
- isolated
- rolled_back
- revalidated
- restored

# ============================================================
# 2. FINAL RULE
# ============================================================

Ai(Robot) abnormal state machine architecture must remain:

- contamination-aware
- isolation-capable
- rollback-capable
- restoration-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010101_MILITARY_SERVICE_UI_INTEGRATION_MODEL.md
# ============================================================

# ============================================================
# MILITARY SERVICE UI INTEGRATION MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-service-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NATION BUILDER SURFACES
# ============================================================

nation_builder_surfaces:
- military_service_policy_panel
- conscription_mode_panel
- mobilization_posture_panel
- loyalty_and_compliance_effect_panel
- nation_type_default_vs_override_panel


# ============================================================
# 2. FIELD MAP SURFACES
# ============================================================

field_map_surfaces:
- military_facility_entry
- recruitment_and_notice_entry
- intake_and_assignment_entry
- mobilization_notice_surface


# ============================================================
# 3. DISPLAY RULES
# ============================================================

display_rules:
- nation builder must show type default and nation override separately
- field map must expose recruitment or intake only where current nation policy allows
- forced service routes must not be displayed as voluntary routes
- voluntary enlistment routes must remain visible where supported
- military facility execution surfaces must respect permission and policy state


# ============================================================
# 4. FINAL RULE
# ============================================================

Military service UI
must show both sovereign rule
and practical execution route.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010102_INFRASTRUCTURE_BUILD_UI_INTEGRATION_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE BUILD UI INTEGRATION MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: infrastructure-build-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. NATION BUILDER SURFACES
# ============================================================

nation_builder_surfaces:
- infrastructure_governance_panel
- road_authority_panel
- rail_authority_panel
- station_authority_panel
- port_authority_panel
- nation_type_default_vs_override_panel


# ============================================================
# 2. FIELD MAP SURFACES
# ============================================================

field_map_surfaces:
- infrastructure_build_menu
- road_build_surface
- rail_build_surface
- station_node_build_surface
- port_node_build_surface
- infrastructure_permission_feedback_surface


# ============================================================
# 3. DISPLAY RULES
# ============================================================

display_rules:
- nation builder must show governance defaults and nation-specific override clearly
- field map build menu must reflect currently permitted infrastructure modes
- line placement and node placement must remain visually distinct
- licensed private infrastructure options appear only where governance allows
- blocked infrastructure options may appear disabled with authority explanation


# ============================================================
# 4. FINAL RULE
# ============================================================

Infrastructure UI
must connect governance design
to actual build affordances.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010103_NATION_TYPE_DEFAULT_AND_OVERRIDE_UI_MODEL.md
# ============================================================

# ============================================================
# NATION TYPE DEFAULT AND OVERRIDE UI MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: nation-type-default-and-override-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- nation_type_default_summary
- nation_specific_override_summary
- final_effective_profile_summary
- override_difference_highlight
- reset_to_default_action
- explicit_override_edit_action


# ============================================================
# 2. RULES
# ============================================================

rules:
- default and override must never be visually merged into one unexplained value
- final effective profile must be shown as computed result
- unchanged values may be visually collapsed in simple mode
- changed values must be clearly highlighted
- existing nations must be allowed to diverge from type defaults


# ============================================================
# 3. FINAL RULE
# ============================================================

Users must always understand
whether a rule comes from type default
or nation-specific override.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010104_MILITARY_AND_INFRASTRUCTURE_PREVIEW_MODEL.md
# ============================================================

# ============================================================
# MILITARY AND INFRASTRUCTURE PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW CONTEXTS
# ============================================================

preview_contexts:
- nation_builder_preview
- military_policy_preview
- infrastructure_governance_preview
- field_map_build_preview
- permission_preview


# ============================================================
# 2. PREVIEW THEMES
# ============================================================

preview_themes:
- likely_conscription_behavior
- likely_volunteer_bias
- likely_compliance_profile
- likely_infrastructure_operator_mix
- likely_public_vs_private_control
- likely_field_map_available_actions


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview must help users understand
how policy becomes action
before they commit changes.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010105_MILITARY_AND_INFRASTRUCTURE_PERMISSION_UI_MODEL.md
# ============================================================

# ============================================================
# MILITARY AND INFRASTRUCTURE PERMISSION UI MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-permission-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- hidden
- visible_disabled
- visible_overview_only
- visible_usable
- visible_manageable
- visible_approval_required


# ============================================================
# 2. RULES
# ============================================================

rules:
- military management actions use stricter visibility than ordinary service use
- conscription and mobilization controls require elevated authority feedback
- infrastructure actions show authority-specific disabled reasons when blocked
- public or sovereign actions may appear visible_overview_only to lower actors
- UI must not imply actionability when execution is blocked


# ============================================================
# 3. FINAL RULE
# ============================================================

Permission-aware UI
must show not only what exists
but what the current actor can actually do.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010106_FIELD_MAP_POLICY_TO_ACTION_BINDING_MODEL.md
# ============================================================

# ============================================================
# FIELD MAP POLICY TO ACTION BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: field-map-policy-to-action-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BINDING THEMES
# ============================================================

binding_themes:
- military_policy_to_recruitment_entry
- military_policy_to_intake_entry
- mobilization_policy_to_notice_surface
- infrastructure_policy_to_build_menu
- infrastructure_policy_to_line_node_options
- permission_policy_to_visibility_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Field map options
must be derived from policy and authority,
not hardcoded independently.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010107_NATION_BUILDER_POLICY_SUMMARY_CARD_MODEL.md
# ============================================================

# ============================================================
# NATION BUILDER POLICY SUMMARY CARD MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: nation-builder-policy-summary-card

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUMMARY CARD BLOCKS
# ============================================================

summary_card_blocks:
- military_service_mode_summary
- mobilization_mode_summary
- loyalty_effect_summary
- infrastructure_governance_summary
- road_and_rail_operator_summary
- station_and_port_authority_summary
- override_count_summary


# ============================================================
# 2. FINAL RULE
# ============================================================

Nation Builder summary
must let users see
the military and infrastructure posture
at a glance.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/401.military-and-infrastructure-ui-integration/4010108_MILITARY_INFRASTRUCTURE_UI_COPY_MODEL.md
# ============================================================

# ============================================================
# MILITARY INFRASTRUCTURE UI COPY MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-infrastructure-ui-copy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COPY THEMES
# ============================================================

copy_themes:
- default_rule
- override_rule
- final_effective_rule
- permission_required
- approval_required
- not_available_in_this_nation
- military_intake_open
- infrastructure_authority_required


# ============================================================
# 2. FINAL RULE
# ============================================================

UI copy
must distinguish rule origin,
effective result,
and actionability clearly.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_UI_INTERFACE.md
# ============================================================

# ============================================================
# STATE MACHINE DETAIL UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: state-machine-detail-ui
component: state-machine-detail-ui

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CANONICAL SCREENS
# ============================================================

Canonical screens:

- state_machine_detail_dashboard_screen
- legislative_state_screen
- administrative_state_screen
- judicial_state_screen
- disease_state_screen
- accident_state_screen
- ai_robot_abnormal_state_screen
- state_machine_detail_history_screen


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/401.state-machine-detail/4010001_STATE_MACHINE_DETAIL_UI_IMPLEMENTATION.md
# ============================================================

# ============================================================
# STATE MACHINE DETAIL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: state-machine-detail-ui-implementation
component: state-machine-detail-ui-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for state machine detail UI
inside Civilization.

# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- state visibility
- transition visibility
- hold visibility
- recovery visibility where supported
- terminal outcome visibility

# ============================================================
# 3. FINAL RULE
# ============================================================

State machine detail UI implementation must remain:

- transition-aware
- stage-explicit
- history-aware
