# ============================================================
# 402 MAP VISUAL REFLECTION DETAIL INTEGRATED
# ============================================================

status: canonical
type: integrated
owner: Boss
prepared_by: Zero

# ============================================================
# SOURCE FILES
# ============================================================
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.infrastructure-management-entry-ui/4020001_INFRASTRUCTURE_MANAGEMENT_ENTRY_UI_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020002_REFLECTION_PRIORITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020003_VISIBLE_AREA_DIFFERENTIAL_UPDATE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020004_CONGESTION_AND_DENSITY_REFLECTION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020005_DISASTER_AND_FAILURE_REFLECTION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020101_INFRASTRUCTURE_AUTHORITY_FACILITY_ENTRY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020102_INFRASTRUCTURE_MANAGEMENT_HOME_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020103_ROAD_NETWORK_MANAGEMENT_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020104_RAIL_NETWORK_MANAGEMENT_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020105_PORT_INFRASTRUCTURE_MANAGEMENT_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020106_INFRASTRUCTURE_DIRECT_SHORTCUT_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020107_INFRASTRUCTURE_AUTHORITY_RESOLUTION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020108_INFRASTRUCTURE_LINE_AND_NODE_PREVIEW_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020109_INFRASTRUCTURE_PERMISSION_FEEDBACK_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020110_INFRASTRUCTURE_MANAGEMENT_UI_COPY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_UI_INTERFACE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_UI_IMPLEMENTATION.md



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.infrastructure-management-entry-ui/4020001_INFRASTRUCTURE_MANAGEMENT_ENTRY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# INFRASTRUCTURE MANAGEMENT ENTRY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: infrastructure-management-entry-ui
component: infrastructure-management-entry-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI architecture
for entering infrastructure placement
and infrastructure management flows
through dedicated infrastructure authority facilities.

This architecture defines:

- authority facility entry
- infrastructure management home
- road, rail, station, and port entry flows
- direct field-map infrastructure shortcut
- authority resolution and permission display
- line placement and node placement separation


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Infrastructure placement should normally begin
from an infrastructure authority facility.

Examples include:

- road authority facility
- rail operator facility
- national rail authority facility
- city transit authority facility
- port authority facility

A direct field-map shortcut may exist,
but it must still resolve
to a valid authority owner behind the action.


# ============================================================
# 3. ENTRY PRINCIPLE
# ============================================================

Infrastructure management must separate:

- authority facility overview
- infrastructure management home
- line placement entry
- node placement entry
- replacement and removal entry
- permission and approval feedback
- network status overview


# ============================================================
# 4. FINAL RULE
# ============================================================

Infrastructure UI must make it clear
who is acting,
what network is being edited,
and what kind of infrastructure action is allowed.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_ARCHITECTURE.md
# ============================================================

# ============================================================
# MAP VISUAL REFLECTION DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: map-visual-reflection-detail
component: map-visual-reflection-detail

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for detailed map and visual reflection policy
inside Civilization.

This document covers:

- reflection priority
- visible-area differential update
- congestion reflection
- disaster reflection
- facility and infrastructure state reflection
- actor density reflection

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

World-visible layers
must reflect simulation truth
through explicit reflection families.

# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- REFLECTION_PRIORITY_ARCHITECTURE
- VISIBLE_AREA_DIFFERENTIAL_UPDATE_ARCHITECTURE
- CONGESTION_AND_DENSITY_REFLECTION_ARCHITECTURE
- DISASTER_AND_FAILURE_REFLECTION_ARCHITECTURE

# ============================================================
# 4. FINAL RULE
# ============================================================

Map visual reflection detail architecture must remain:

- truth-linked
- visibility-aware
- differential-update-aware
- disaster-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020002_REFLECTION_PRIORITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# REFLECTION PRIORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: reflection-priority
component: reflection-priority

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Representative reflection priority order may include:

1. disaster and emergency posture
2. infrastructure outage and restoration
3. facility availability change
4. congestion and crowd density
5. routine visual drift

# ============================================================
# 2. FINAL RULE
# ============================================================

Reflection priority architecture must remain:

- priority-explicit
- emergency-biased
- readable


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020003_VISIBLE_AREA_DIFFERENTIAL_UPDATE_ARCHITECTURE.md
# ============================================================

# ============================================================
# VISIBLE AREA DIFFERENTIAL UPDATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: visible-area-differential-update
component: visible-area-differential-update

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Visible or focal map regions
may update at higher cadence
than non-visible regions.

This must remain compatible with
truth-preserving batch catchup.

# ============================================================
# 2. FINAL RULE
# ============================================================

Visible-area differential update architecture must remain:

- focal-aware
- batch-compatible
- truth-preserving


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020004_CONGESTION_AND_DENSITY_REFLECTION_ARCHITECTURE.md
# ============================================================

# ============================================================
# CONGESTION AND DENSITY REFLECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: congestion-and-density-reflection
component: congestion-and-density-reflection

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Map and world-visible layers
may reflect:

- traffic congestion
- queue burden
- crowd density
- actor concentration
- service bottleneck posture

# ============================================================
# 2. FINAL RULE
# ============================================================

Congestion and density reflection architecture must remain:

- density-aware
- congestion-aware
- bottleneck-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/402.map-visual-reflection-detail/4020005_DISASTER_AND_FAILURE_REFLECTION_ARCHITECTURE.md
# ============================================================

# ============================================================
# DISASTER AND FAILURE REFLECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: disaster-and-failure-reflection
component: disaster-and-failure-reflection

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Map and world-visible layers
must reflect high-impact events such as:

- disaster damage
- flood or fire spread
- infrastructure outage
- facility failure
- emergency response posture

# ============================================================
# 2. FINAL RULE
# ============================================================

Disaster and failure reflection architecture must remain:

- high-impact-aware
- outage-aware
- emergency-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020101_INFRASTRUCTURE_AUTHORITY_FACILITY_ENTRY_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE AUTHORITY FACILITY ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-authority-facility-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY FACILITY TYPES
# ============================================================

entry_facility_types:
- road_authority_facility
- rail_operator_facility
- national_rail_authority_facility
- city_transit_authority_facility
- port_authority_facility
- transport_control_facility


# ============================================================
# 2. ENTRY RULES
# ============================================================

entry_rules:
- tapping an authority facility may open infrastructure management home
- visible actions depend on current actor permission
- restricted actions may be shown as disabled with explanation
- overview-only mode may be used where management is not allowed
- authority facility entry is the preferred formal route for infrastructure actions


# ============================================================
# 3. FINAL RULE
# ============================================================

Authority facility entry
must make infrastructure governance visible
before placement begins.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020102_INFRASTRUCTURE_MANAGEMENT_HOME_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE MANAGEMENT HOME MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-management-home

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- management_home
- network_overview
- line_placement_entry
- node_placement_entry
- replacement_entry
- removal_entry
- permission_feedback_surface
- authority_scope_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- authority_identity_block
- governance_mode_block
- available_action_block
- managed_network_summary
- pending_project_summary
- restriction_and_approval_block


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure management home
must function as the operational gateway
between authority identity
and actual placement actions.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020103_ROAD_NETWORK_MANAGEMENT_UI_MODEL.md
# ============================================================

# ============================================================
# ROAD NETWORK MANAGEMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: road-network-management-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED ACTIONS
# ============================================================

supported_actions:
- lay_road
- replace_road
- remove_road
- place_road_junction
- reconfigure_road_junction
- inspect_road_network


# ============================================================
# 2. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- road_network_summary
- road_build_mode_toggle
- road_path_preview
- junction_node_tools
- replacement_and_removal_tools
- authority_and_permission_banner


# ============================================================
# 3. FINAL RULE
# ============================================================

Road management UI
must treat roads as network lines,
not as ordinary placeable buildings.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020104_RAIL_NETWORK_MANAGEMENT_UI_MODEL.md
# ============================================================

# ============================================================
# RAIL NETWORK MANAGEMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: rail-network-management-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED ACTIONS
# ============================================================

supported_actions:
- lay_rail
- replace_rail
- remove_rail
- place_station_node
- reconfigure_station_node
- inspect_rail_network


# ============================================================
# 2. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- rail_network_summary
- rail_build_mode_toggle
- rail_path_preview
- station_node_tools
- replacement_and_removal_tools
- authority_and_permission_banner


# ============================================================
# 3. FINAL RULE
# ============================================================

Rail management UI
must keep rail line actions
and station node actions distinct.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020105_PORT_INFRASTRUCTURE_MANAGEMENT_UI_MODEL.md
# ============================================================

# ============================================================
# PORT INFRASTRUCTURE MANAGEMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: port-infrastructure-management-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED ACTIONS
# ============================================================

supported_actions:
- place_port_node
- expand_port_node
- reconfigure_port_node
- remove_port_node
- inspect_port_network


# ============================================================
# 2. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- port_network_summary
- port_node_preview
- expansion_tools
- replacement_and_removal_tools
- authority_and_permission_banner


# ============================================================
# 3. FINAL RULE
# ============================================================

Port management UI
must emphasize node authority,
capacity role,
and connection context.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020106_INFRASTRUCTURE_DIRECT_SHORTCUT_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE DIRECT SHORTCUT MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-direct-shortcut

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the optional direct field-map shortcut
for infrastructure placement.


# ============================================================
# 2. RULES
# ============================================================

rules:
- a direct infrastructure shortcut may appear on field map if current actor has sufficient authority
- direct shortcut must still resolve to a valid infrastructure authority owner
- direct shortcut must not bypass permission evaluation
- direct shortcut may be hidden when infrastructure governance does not allow current actor action
- direct shortcut should backlink to the resolved authority context


# ============================================================
# 3. FINAL RULE
# ============================================================

Direct shortcut exists for usability,
not for bypassing infrastructure governance.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020107_INFRASTRUCTURE_AUTHORITY_RESOLUTION_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE AUTHORITY RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-authority-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESOLUTION INPUTS
# ============================================================

resolution_inputs:
- actor_id
- actor_class
- nation_id
- city_id
- district_id
- infrastructure_action_type
- governance_mode
- current_entry_context


# ============================================================
# 2. RESOLUTION OUTPUTS
# ============================================================

resolution_outputs:
- resolved_authority_class
- resolved_authority_facility_id_or_null
- permission_state
- approval_required_flag
- authority_explanation_summary


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure action
must resolve to one authority posture
before build affordances are exposed.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020108_INFRASTRUCTURE_LINE_AND_NODE_PREVIEW_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE LINE AND NODE PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-line-and-node-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW TYPES
# ============================================================

preview_types:
- road_line_preview
- rail_line_preview
- metro_line_preview
- station_node_preview
- port_node_preview
- replacement_preview
- removal_preview


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- preview_type
- target_path_or_node
- authority_context
- permission_state
- projected_build_cost
- projected_build_time
- projected_network_effect
- warning_or_block_reason_set


# ============================================================
# 3. FINAL RULE
# ============================================================

Infrastructure preview
must explain path or node consequences
before execution.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020109_INFRASTRUCTURE_PERMISSION_FEEDBACK_UI_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE PERMISSION FEEDBACK UI MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-permission-feedback-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FEEDBACK STATES
# ============================================================

feedback_states:
- allowed
- allowed_with_approval
- overview_only
- blocked_authority_mismatch
- blocked_protected_corridor
- blocked_governance_mode
- blocked_sensitive_network


# ============================================================
# 2. DISPLAY RULES
# ============================================================

display_rules:
- blocked states should explain which authority is required
- approval-required states should explain what approval is missing
- overview-only states should allow inspection without editing
- feedback should appear close to action entry
- feedback must not falsely imply executable access


# ============================================================
# 3. FINAL RULE
# ============================================================

Permission feedback
must convert governance and authority rules
into understandable user-facing action truth.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/402.infrastructure-management-entry-ui/4020110_INFRASTRUCTURE_MANAGEMENT_UI_COPY_MODEL.md
# ============================================================

# ============================================================
# INFRASTRUCTURE MANAGEMENT UI COPY MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-management-ui-copy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COPY THEMES
# ============================================================

copy_themes:
- authority_owner
- governance_mode
- placement_allowed
- approval_required
- blocked_by_authority
- blocked_by_corridor
- direct_shortcut_resolved_authority
- line_vs_node_explanation


# ============================================================
# 2. FINAL RULE
# ============================================================

Infrastructure copy
must clarify authority,
network type,
and actionability without ambiguity.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/090.interface/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_UI_INTERFACE.md
# ============================================================

# ============================================================
# MAP VISUAL REFLECTION DETAIL UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: map-visual-reflection-detail-ui
component: map-visual-reflection-detail-ui

owner: Boss
prepared_by: Zero

# ============================================================
# 1. CANONICAL SCREENS
# ============================================================

Canonical screens:

- map_visual_reflection_dashboard_screen
- reflection_priority_screen
- visible_area_update_screen
- congestion_density_reflection_screen
- disaster_failure_reflection_screen
- map_visual_reflection_history_screen


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/402.map-visual-reflection-detail/4020001_MAP_VISUAL_REFLECTION_DETAIL_UI_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MAP VISUAL REFLECTION DETAIL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: map-visual-reflection-detail-ui-implementation
component: map-visual-reflection-detail-ui-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for map visual reflection detail UI
inside Civilization.

# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- reflection priority visibility
- focal-vs-background reflection visibility
- congestion/density visibility
- disaster/failure reflection visibility

# ============================================================
# 3. FINAL RULE
# ============================================================

Map visual reflection detail UI implementation must remain:

- priority-aware
- focal-aware
- congestion-aware
- disaster-aware
