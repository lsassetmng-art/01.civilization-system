# ============================================================
# GRAND PLAY UI INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: grand-play-ui-integration
component: grand-play-ui-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical UI integration architecture
for the grand play domains of Civilization.

This architecture defines how the following play systems
become visible and reachable from existing surfaces:

- political power and election play
- economic and market play
- social order and ideology play
- military and diplomacy play
- media and information war play
- personal rise and fall play


# ============================================================
# 2. TARGET SURFACES
# ============================================================

target_surfaces:
- civilization_global_map
- continent_map
- nation_detail
- nation_builder
- city_builder
- company_builder
- field_map
- facility_service_surface
- marketplace_surface
- personal_profile_surface
- business_connection_port_surface


# ============================================================
# 3. CORE PRINCIPLE
# ============================================================

Grand play must not exist
as a disconnected hidden meta-system.

Each play domain must appear
where the user would naturally expect it
based on world role,
authority,
facility access,
or personal progression.


# ============================================================
# 4. FINAL RULE
# ============================================================

Grand play UI must remain
world-anchored,
authority-aware,
and role-sensitive.
