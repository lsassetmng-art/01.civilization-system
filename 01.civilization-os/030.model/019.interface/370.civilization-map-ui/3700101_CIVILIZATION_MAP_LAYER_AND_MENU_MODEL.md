# ============================================================
# CIVILIZATION MAP LAYER AND MENU MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-map-ui
component: civilization-map-layer-and-menu

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MAP LAYERS
# ============================================================

map_layers:
- civilization_global_map
- civilization_continent_map
- civilization_field_map


# ============================================================
# 2. CIVILIZATION GLOBAL MAP
# ============================================================

global_map_role:
- civilization-wide overview
- continent selection
- global status lookup

global_map_visible_objects:
- continents
- major seas
- global labels
- continent summaries
- global alerts

global_map_menus:
- Civilization Overview
- Continents
- Global Events
- Global Economy
- Global Population
- Global Trade
- Global Security
- Global Religion
- Global Rankings
- Search


# ============================================================
# 3. CIVILIZATION CONTINENT MAP
# ============================================================

continent_map_role:
- nation selection
- nation comparison
- nation builder entry

continent_map_visible_objects:
- nation borders
- nation labels
- capitals
- major cities
- regional overlays
- continent alerts

continent_map_menus:
- Continent Overview
- Nations
- Nation Builder
- Nation Comparison
- Major Cities
- Infrastructure
- Religion Distribution
- Economy Distribution
- Security Status
- Search


# ============================================================
# 4. CIVILIZATION FIELD MAP
# ============================================================

field_map_role:
- local object interaction
- company, housing, and facility entry
- zoning and infrastructure view

field_map_visible_objects:
- companies
- facilities
- housing
- roads
- railways
- ports
- medical facilities
- education facilities
- religious facilities
- marketplace facilities
- security facilities
- empty lots
- zoning overlays

field_map_menus:
- Field Overview
- Companies
- Facilities
- Housing
- Zoning
- Infrastructure
- Marketplace
- Education
- Medical
- Religion
- Transport
- Security
- Construction
- Search


# ============================================================
# 5. FINAL RULE
# ============================================================

Each map layer must expose
only the menus appropriate
to that layer's abstraction level.
