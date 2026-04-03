# ============================================================
# GLOBAL MAP UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: global-map-ui-implementation
component: global-map-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for global map UI
inside Civilization.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- GLOBAL_MAP_UI_INTERFACE
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Global map is the top-level world map.

It must implement:

- continent visibility
- continent selection
- continent information visibility
- common menu access


# ============================================================
# 3. INITIAL LOAD RULE
# ============================================================

Global map initial load should prioritize:

1. continent render visibility
2. tappable continent posture
3. continent information panel readiness
4. common menu readiness

The map should become navigable
as soon as continent tap targets
are stable enough for use.


# ============================================================
# 4. CONTINENT TAP RULE
# ============================================================

Continent tap is the primary action
on the global map.

Representative route:

global_map_screen
-> continent_tap
-> continent_map_screen

Continent tap must be explicit
and visually readable.


# ============================================================
# 5. CONTINENT INFORMATION RULE
# ============================================================

Global map must expose
continent information at minimum:

- continent characteristics
- continent population
- number of states
- other continent metadata where available

Continent information may appear as:

- side panel
- bottom sheet
- detail panel
- focused info card

The exact presentation may vary,
but visibility is required.


# ============================================================
# 6. VISUAL ASSET RULE
# ============================================================

Initial global map may use
atlas-style colored continent assets.

These are presentation assets only.

Tap, zoom, and information behavior
must operate against canonical map truth,
not raw image assumption alone.


# ============================================================
# 7. LOADING / PARTIAL DATA RULE
# ============================================================

Global map must distinguish:

- loading
- ready
- partial_data
- error

If continent information is incomplete
but continent navigation is usable,
partial_data may be used.

Partial_data must remain explicit.


# ============================================================
# 8. FINAL RULE
# ============================================================

Global map implementation must remain:

- world-entry-first
- continent-selectable
- info-visible
- menu-consistent
- asset-replaceable
