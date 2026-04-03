# ============================================================
# CITY MAP UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: city-map-ui-implementation
component: city-map-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for city map UI
inside Civilization.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- CITY_MAP_UI_INTERFACE
- CITY_BUILDER_UI_IMPLEMENTATION
- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

City map is the city-local operational layer.

It must implement:

- city-local spatial visibility
- city list entry
- city information entry
- empty-area city-builder entry
- facility tap entry
- district tap entry
- back to continent map
- common menu access


# ============================================================
# 3. INITIAL LOAD RULE
# ============================================================

City map initial load should prioritize:

1. city-local tappable regions
2. facility tap targets
3. district tap targets
4. empty-area builder eligibility posture
5. back navigation readiness
6. common menu readiness

The map should become operational
as soon as the user can distinguish:

- facility
- district
- empty area


# ============================================================
# 4. CITY LIST RULE
# ============================================================

City list is a structured entry route.

Representative route:

city_map_screen
-> city_list_screen
-> city_information_screen

City list should support readable access
to city information and context.


# ============================================================
# 5. EMPTY-AREA TAP RULE
# ============================================================

Empty-area tap is the trigger
for city builder.

Representative route:

city_map_screen
-> empty_area_tap
-> city_builder_start_screen

Empty-area tap must not finalize city boundary.

It only opens builder flow.


# ============================================================
# 6. FACILITY TAP RULE
# ============================================================

Facility tap is a primary operational action.

Representative route:

city_map_screen
-> facility_tap
-> facility_overview_screen

Facility tap must not skip directly
to deep management tabs by default.

Facility overview remains canonical entry.


# ============================================================
# 7. DISTRICT TAP RULE
# ============================================================

District tap is a structured local information route.

Representative route:

city_map_screen
-> district_tap
-> district_detail_information_screen

District tap must not be confused
with facility tap or empty-area tap.


# ============================================================
# 8. BACK ROUTE RULE
# ============================================================

Back from city map must return to:

- continent_map_screen

This route must remain predictable.


# ============================================================
# 9. VISUAL ASSET RULE
# ============================================================

Initial city map may use
atlas-style or diagram-like colored presentation.

This visual asset must still support:

- facility distinction
- district distinction
- empty-area distinction
- readable local spatial separation

Visual simplicity is acceptable
if spatial interaction remains clear.


# ============================================================
# 10. PARTIAL DATA RULE
# ============================================================

City map may use partial_data
if some overlays are incomplete
but core routing remains usable.

If facility tap targets are unresolved,
the map should not claim fully ready state.

If district detail is unavailable,
that must be explicit.


# ============================================================
# 11. FINAL RULE
# ============================================================

City map implementation must remain:

- facility-entry-capable
- district-entry-capable
- builder-entry-capable
- back-safe
- menu-consistent
- asset-replaceable
