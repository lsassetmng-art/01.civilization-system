# ============================================================
# CONTINENT MAP UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: continent-map-ui-implementation
component: continent-map-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for continent map UI
inside Civilization.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- CONTINENT_MAP_UI_INTERFACE
- STATE_BUILDER_UI_IMPLEMENTATION
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Continent map is the state-selection layer.

It must implement:

- state visibility
- state tap routing
- state list entry
- state information entry
- empty-area state-builder entry
- back to global map
- common menu access


# ============================================================
# 3. INITIAL LOAD RULE
# ============================================================

Continent map initial load should prioritize:

1. state boundary visibility
2. tappable state posture
3. empty-area builder eligibility posture
4. back navigation readiness
5. common menu readiness

The map should become usable
as soon as state tap and empty-area tap
can be safely distinguished.


# ============================================================
# 4. STATE TAP RULE
# ============================================================

State tap is a primary action.

Representative route:

continent_map_screen
-> state_tap
-> city_map_screen

State tap must be explicit
and must not be confused
with empty-area builder entry.


# ============================================================
# 5. STATE LIST RULE
# ============================================================

State list is a structured entry route.

Representative route:

continent_map_screen
-> state_list_screen
-> state_information_screen

State list should support readable navigation
even when direct map tapping is inconvenient.


# ============================================================
# 6. EMPTY-AREA TAP RULE
# ============================================================

Empty-area tap is the trigger for state builder.

Representative route:

continent_map_screen
-> empty_area_tap
-> state_builder_start_screen

Empty-area tap must not finalize territory.

It only opens builder flow.


# ============================================================
# 7. BACK ROUTE RULE
# ============================================================

Back from continent map must return to:

- global_map_screen

This route must remain predictable
and must not silently redirect
to story or other non-map routes.


# ============================================================
# 8. VISUAL ASSET RULE
# ============================================================

Initial continent map may use
atlas-style colored state presentation.

This visual asset must still support:

- readable state boundaries
- tappable state distinction
- readable empty territory distinction
- builder-entry clarity


# ============================================================
# 9. PARTIAL DATA RULE
# ============================================================

Continent map may use partial_data
if state information is incomplete
but state routing remains usable.

If builder-entry eligibility is unknown,
that must be shown explicitly,
not silently assumed.


# ============================================================
# 10. FINAL RULE
# ============================================================

Continent map implementation must remain:

- state-selectable
- builder-entry-capable
- back-safe
- menu-consistent
- asset-replaceable
