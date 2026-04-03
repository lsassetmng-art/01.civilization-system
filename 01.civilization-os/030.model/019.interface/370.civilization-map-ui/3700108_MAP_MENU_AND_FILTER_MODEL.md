# ============================================================
# MAP MENU AND FILTER MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: map-menu-and-filter

owner: Boss
prepared_by: Zero


# ============================================================
# 1. GLOBAL MAP FILTERS
# ============================================================

global_map_filters:
- continent_status
- economy_overlay
- population_overlay
- security_overlay
- religion_overlay
- event_overlay


# ============================================================
# 2. CONTINENT MAP FILTERS
# ============================================================

continent_map_filters:
- nation_type
- custom_nation_only
- editable_nation_only
- economy_overlay
- religion_overlay
- security_overlay
- infrastructure_overlay


# ============================================================
# 3. FIELD MAP FILTERS
# ============================================================

field_map_filters:
- companies
- public_facilities
- housing
- education
- medical
- religion
- transport
- military
- marketplace
- infrastructure
- zoning
- empty_lots
- creator_owned_only
- manageable_only


# ============================================================
# 4. FINAL RULE
# ============================================================

Filters must help users understand
what can be used,
what can be built,
and what can be managed.
