# ============================================================
# MAP COMMON MENU UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: map-common-menu-ui-implementation
component: map-common-menu-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for common map menu UI
shared by global, continent, and city map.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- MAP_COMMON_MENU_UI_INTERFACE
- WORLD_ENTRY_AND_MAP_FUNCTIONAL_DESIGN


# ============================================================
# 2. COMMON MENU STRUCTURE RULE
# ============================================================

All maps must implement
the same menu structure.

Top-right support menu:

- legal explanation
- help

Bottom-right core menu:

- home
- search
- notifications
- marketplace
- profile
- settings

This structure must remain consistent
across all map layers.


# ============================================================
# 3. TOP-RIGHT SUPPORT MENU RULE
# ============================================================

Top-right support menu is for
non-primary progression routes.

It must support:

- open_legal_explanation
- open_help

These actions must preserve
the current map route context
for safe return behavior.


# ============================================================
# 4. BOTTOM-RIGHT CORE MENU RULE
# ============================================================

Bottom-right menu is the main
cross-map navigation surface.

It must support:

- open_home
- open_search
- open_notifications
- open_marketplace
- open_profile
- open_settings

These actions may suspend
the current map view,
but should preserve enough context
for predictable return behavior.


# ============================================================
# 5. HOME RULE
# ============================================================

Home must resolve to
the canonical normal-world entry hub.

At current design stage,
home may route to:

- global_map_screen

until a separate world home
is explicitly introduced.


# ============================================================
# 6. SEARCH RULE
# ============================================================

Search must use the visible label:

- search

It must support at minimum:

- facility search
- state search

Search implementation must support:

- query input
- target filtering
- result selection
- route to result target

Search must not be treated
as facility-only lookup.


# ============================================================
# 7. NOTIFICATION RULE
# ============================================================

Notifications must support entry from:

- global_map_screen
- continent_map_screen
- city_map_screen

Notification result routing may resolve to:

- state_information_screen
- city_information_screen
- district_detail_information_screen
- facility_overview_screen
- alert-related target screen where supported

Notifications are cross-layer entry routes.


# ============================================================
# 8. MARKETPLACE RULE
# ============================================================

Marketplace must be reachable
from all map layers.

Marketplace entry must preserve
that it is a global route,
not a map-local subfeature only.

Return behavior should be safe and predictable.


# ============================================================
# 9. PROFILE RULE
# ============================================================

Profile must be reachable
from all map layers.

Profile should preserve prior route context
when returning to map navigation,
unless a stronger global navigation rule exists later.


# ============================================================
# 10. SETTINGS RULE
# ============================================================

Settings must be reachable
from all map layers.

Settings return behavior should restore
the prior map layer when possible.


# ============================================================
# 11. HELP RULE
# ============================================================

Help is a support route.

It must be accessible from
top-right support menu
and should return safely
to the originating map route.


# ============================================================
# 12. MENU STATE RULE
# ============================================================

Map common menu must support
explicit states for:

- loading
- ready
- blocked
- error

Examples:

- search unavailable by failure
- notifications temporarily unavailable
- marketplace unavailable by route failure

These states must remain explicit.


# ============================================================
# 13. FINAL RULE
# ============================================================

Map common menu implementation must remain:

- cross-map-consistent
- support-menu-separated
- route-safe
- return-safe
- explicit in state handling
