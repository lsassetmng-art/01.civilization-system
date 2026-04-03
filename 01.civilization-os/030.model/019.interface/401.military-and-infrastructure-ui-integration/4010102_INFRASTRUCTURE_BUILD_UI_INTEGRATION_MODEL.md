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
