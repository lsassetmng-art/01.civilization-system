# ============================================================
# WORLD MAP AND BUILDER UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: world-map-and-builder-ui
component: world-map-and-builder-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for Civilization world navigation,
map hierarchy,
common map menu,
state builder,
city builder,
and map-linked builder transition.

This document covers:

- login-to-world routing
- map hierarchy routing
- common map menu
- search routing
- notification routing
- marketplace routing
- state builder routing
- city builder routing
- zoom and scale behavior during placement

This document defines UI responsibility
and routing structure only.

This document does not redefine:

- auth backend internals
- mail reset internals
- legal text contents
- story scenario internals
- state policy internals
- city policy internals
- facility business logic


# ============================================================
# 2. TOP-LEVEL WORLD ENTRY ROUTES
# ============================================================

Civilization has two primary entry families.

1. normal world route
2. story route

Normal world route:

login screen
-> global map
-> continent map
-> city map
-> district / facility / builder routes

Story route:

login screen
-> aerial access token route
-> story mode
-> story select
-> story screen

Story mode entry exists only from
the login screen.

Story mode entry must not appear
on global map,
continent map,
or city map.


# ============================================================
# 3. LOGIN SCREEN ROUTES
# ============================================================

The login screen must support
the following routes.

- normal login
- create new user
- password reset mail request
- legal explanation
- story mode entry when aerial access token is available

Canonical routes:

login screen
-> global map

login screen
-> create new user
-> login screen

login screen
-> password reset mail request
-> mail link
-> password reset screen
-> login screen

login screen
-> legal explanation screen

login screen
-> aerial access token check
-> story mode
-> story select screen
-> story screen


# ============================================================
# 4. MAP HIERARCHY
# ============================================================

The canonical world map hierarchy is:

global map
-> continent map
-> city map

Global map is the top-level world map.
Continent map is the middle layer.
City map is the city-level operational entry layer.


# ============================================================
# 5. GLOBAL MAP RESPONSIBILITY
# ============================================================

Global map is responsible for:

- continent selection
- world-scale navigation
- continent summary visibility
- entry into continent map
- access to common map menu

Global map must expose continent information.

At minimum,
continent information should include:

- continent characteristics
- continent population
- number of states
- other continent-level meta information where available

Canonical route:

global map
-> continent tap
-> continent map


# ============================================================
# 6. CONTINENT MAP RESPONSIBILITY
# ============================================================

Continent map is responsible for:

- state selection
- state overview entry
- state builder entry from empty area
- return route to global map
- access to common map menu

Canonical routes:

continent map
-> state tap
-> city map

continent map
-> state list
-> state information

continent map
-> empty area tap
-> state builder

continent map
-> back
-> global map


# ============================================================
# 7. CITY MAP RESPONSIBILITY
# ============================================================

City map is responsible for:

- city-local world navigation
- district selection
- facility selection
- city builder entry from empty area
- city information entry
- return route to continent map
- access to common map menu

Canonical routes:

city map
-> city list
-> city information

city map
-> empty area tap
-> city builder

city map
-> facility tap
-> facility overview

city map
-> district tap
-> district detail information

city map
-> back
-> continent map


# ============================================================
# 8. MAP COMMON MENU
# ============================================================

All maps must share the same common menu structure.

This common menu applies to:

- global map
- continent map
- city map

Right-top common menu:

- legal explanation
- help

Right-bottom common menu:

- home
- search
- notifications
- marketplace
- profile
- settings


# ============================================================
# 9. SEARCH ROUTE
# ============================================================

The common bottom menu item is named:

search

It must not be restricted
to facility search only.

Search must support,
at minimum:

- facility search
- state search

Future expansion may include:

- city search
- district search
- company search
- persona search

The canonical visible label is:

search


# ============================================================
# 10. MAP COMMON ROUTES
# ============================================================

Global map,
continent map,
and city map
must all support the following common routes.

- menu
- search
- notifications
- marketplace
- profile
- settings
- legal explanation
- help

Story mode must not be included
in common map routes.


# ============================================================
# 11. GLOBAL MAP OPTIONAL DETAIL ROUTES
# ============================================================

Where implemented,
global map may also route to:

- continent detail information
- bookmarked destination sets
- notification-linked location jump
- marketplace world landing

These are optional refinements,
but continent selection remains primary.


# ============================================================
# 12. CONTINENT MAP OPTIONAL DETAIL ROUTES
# ============================================================

Where implemented,
continent map may also route to:

- continent detailed information
- state bookmark access
- search-result jump
- notification-linked state jump

These are optional refinements,
but state selection and builder entry remain primary.


# ============================================================
# 13. CITY MAP OPTIONAL DETAIL ROUTES
# ============================================================

Where implemented,
city map may also route to:

- city layered filters
- city issue focus
- builder menu variants
- search-result jump
- notification-linked facility jump

These are optional refinements,
but facility entry,
district entry,
and city builder entry remain primary.


# ============================================================
# 14. STATE BUILDER POSITION
# ============================================================

State builder is entered from
continent map empty-area interaction.

Empty-area tap is only the entry trigger.

Actual territory determination occurs
inside state builder.

Therefore:

empty area tap
does not itself finalize state territory.

Territory / Area Selection is the real
state territory selection step.


# ============================================================
# 15. STATE BUILDER CANONICAL ROUTE
# ============================================================

Canonical state builder route:

continent map
-> empty area tap
-> state builder start
-> state template selection
-> territory / area selection
-> capital / core point selection
-> state identity setup
-> government / policy setup
-> population / initial resource setup
-> validation review
-> state create
-> state information
-> city map or state-local operational route

Validation failure must return
the user to the appropriate editable builder step,
not silently create the state.


# ============================================================
# 16. STATE TERRITORY SELECTION RULE
# ============================================================

State territory selection must use
state-scale territory cells.

Canonical state territory unit:

10km x 10km

State builder must not use
facility-scale or city-scale cells
as the direct state-establishment unit.

Recommended minimum state establishment rule:

- minimum state cell size = 10km x 10km
- minimum state establishment size = 10 connected cells

This yields an approximate minimum area of:

1,000 km²

State territory selection must support:

- connected-cell validation
- no disconnected island selection unless explicitly allowed later
- invalid terrain exclusion where applicable
- neighbor boundary validation where applicable
- selected cell count visibility
- selected total area visibility


# ============================================================
# 17. CITY BUILDER POSITION
# ============================================================

City builder is entered from
city map empty-area interaction.

Empty-area tap is only the entry trigger.

Actual city area determination occurs
inside city builder.


# ============================================================
# 18. CITY BUILDER CANONICAL ROUTE
# ============================================================

Canonical city builder route:

city map
-> empty area tap
-> city builder start
-> city template selection
-> boundary / area selection
-> core / center selection
-> city identity setup
-> district / zone planning
-> infrastructure setup
-> initial facility setup
-> validation review
-> city create
-> city information
-> city map

Validation failure must return
the user to the appropriate editable builder step,
not silently create the city.


# ============================================================
# 19. CITY AREA SELECTION RULE
# ============================================================

City territory selection must use
city-scale cells.

Canonical city territory unit:

1km x 1km

City builder must not use
state-scale cells
for city establishment.

Recommended city establishment rule:

- city area unit = 1km x 1km
- city minimum establishment size is larger than a single city cell

Recommended operational interpretation:

- 1km cell is the manipulation unit
- city establishment minimum is defined separately from the manipulation unit

A single 1km cell should not automatically be treated
as a full city by default.


# ============================================================
# 20. CITY CELL FACILITY CAPACITY RULE
# ============================================================

A city cell may contain
multiple facilities.

Recommended canonical model:

- 1 city cell = 10 placement capacity units

Facilities consume capacity
according to facility scale.

Illustrative structure:

- very small facility = 1
- small facility = 2
- medium facility = 3
- large facility = 5 to 10
- extra-large facility = one full cell or multiple cells

Therefore,
the city cell does not mean
one facility only.

It means one city-scale spatial unit
with internal placement capacity.


# ============================================================
# 21. FACILITY ENTRY FROM CITY MAP
# ============================================================

Facility tap from city map
must not jump directly into
deep management screens.

Canonical route:

city map
-> facility tap
-> facility overview
-> facility manage / issue / history / permission / linked facility

Facility overview is the canonical entry
for facility-local operation.


# ============================================================
# 22. DISTRICT ENTRY FROM CITY MAP
# ============================================================

District tap from city map
must route first into district detail information.

Canonical route:

city map
-> district tap
-> district detail information

District detail may then route to:

- district facility list
- district zone or policy information
- district statistics
- linked city information
- facility jump inside the district


# ============================================================
# 23. SCALE CHANGE REQUIREMENT
# ============================================================

Placement-related builder UIs
must support scale changes.

This is a canonical builder requirement,
not an optional enhancement.

Scale change must be supported in:

- state builder
- city builder
- facility placement inside city planning where applicable

Required builder map interactions include:

- zoom in
- zoom out
- pan
- reset zoom
- fit selected area
- current scale indicator

Zoom level changes must not themselves
mutate canonical territory truth.

Only explicit selection and confirmation
may mutate builder truth.


# ============================================================
# 24. SCALE CHANGE IN STATE BUILDER
# ============================================================

State builder must support:

- zoomed-out continent-scale review
- zoomed-in territory-cell review
- boundary confirmation under state cell selection
- pan during territory selection

State builder scale change exists
to balance strategic placement
and boundary precision.


# ============================================================
# 25. SCALE CHANGE IN CITY BUILDER
# ============================================================

City builder must support:

- zoomed-out city-scale review
- district-scale planning visibility
- 1km cell-level planning
- local placement review inside city cells where supported

City builder scale change exists
to balance overall city structure
and local planning precision.


# ============================================================
# 26. SCALE CHANGE IN FACILITY PLACEMENT
# ============================================================

Where city builder supports internal facility placement,
facility placement must support:

- zoom-in for local precision
- zoom-out for surrounding-balance review

Facility placement is therefore
not a pure list-based operation only.

It is a spatial placement operation.


# ============================================================
# 27. MAP COMMON MENU LAYOUT RULE
# ============================================================

The world map UI must maintain
clear separation between:

- top-right support menu
- bottom-right core navigation

Top-right support menu contains:

- legal explanation
- help

Bottom-right core navigation contains:

- home
- search
- notifications
- marketplace
- profile
- settings

This separation must remain consistent
across all map layers.


# ============================================================
# 28. HOME ROUTE INTERPRETATION
# ============================================================

Home in the bottom-right map menu
must return to the canonical normal-world entry hub.

If no separate dashboard is implemented,
home may resolve to the canonical world entry route.

In the currently defined flow,
home may resolve to the normal world route
beginning at global map,
unless a dedicated world home screen is defined later.


# ============================================================
# 29. NOTIFICATION ROUTE INTERPRETATION
# ============================================================

Notifications must be reachable
from all map layers.

Notification entries may route to:

- a map location
- a state
- a city
- a district
- a facility overview
- an issue or alert screen

Notifications are cross-layer entry points,
not facility-only entry points.


# ============================================================
# 30. MARKETPLACE ROUTE INTERPRETATION
# ============================================================

Marketplace must be reachable
from all map layers.

Marketplace is not a local map-only function.

It is a global cross-system route
reachable from world navigation.


# ============================================================
# 31. LEGAL EXPLANATION ROUTE
# ============================================================

Legal explanation must be reachable from:

- login screen
- map common top-right menu

Legal explanation is currently treated
as a required route,
even if the internal detailed screen design
is not yet completed.


# ============================================================
# 32. HELP ROUTE
# ============================================================

Help must be reachable from
the map common top-right menu.

Help is treated as a support route,
not a core world progression route.


# ============================================================
# 33. UNDESIGNED BUT RESERVED ROUTES
# ============================================================

The following routes are recognized
as existing or necessary,
but not yet fully designed in detail.

- create new user detailed flow
- password reset detailed flow
- legal explanation detailed screen
- story mode post-entry detailed flows
- map common menu detailed screen structure
- district detailed interface structure
- city information detailed interface structure
- search detailed interface structure
- notification detailed interface structure

These are reserved follow-up documents.


# ============================================================
# 34. FINAL RULE
# ============================================================

Civilization world navigation must remain:

- login-rooted
- map-hierarchical
- story-separated from normal-world routing
- consistent in common map menu
- explicit in builder transitions
- scale-aware during placement
- spatially deterministic

State builder and city builder
must be treated as distinct spatial systems
with distinct canonical territory units.

# ============================================================
# SUPPLEMENT A. INITIAL MAP VISUAL ASSET RULE
# ============================================================

Initial map presentation may use
atlas-style colored map assets.

This rule applies to:

- global map
- continent map
- city map

Atlas-style colored maps are allowed
as provisional presentation assets
for early implementation,
navigation confirmation,
and builder interaction testing.

These map visuals must remain replaceable.


# ============================================================
# SUPPLEMENT B. VISUAL ASSET AND TERRITORY TRUTH SEPARATION
# ============================================================

Map image assets are presentation layers only.

They must not be treated as
canonical geographic truth,
canonical territory truth,
or canonical placement truth.

Canonical truth for:

- continents
- states
- cities
- districts
- cells
- boundaries
- selectable placement areas

must remain stored separately
from the rendered map image.


# ============================================================
# SUPPLEMENT C. INITIAL GLOBAL MAP VISUAL RULE
# ============================================================

The initial global map may use
atlas-style colored continent presentation.

The global map should still clearly expose:

- continent separability
- tappable continent regions
- continent information visibility


# ============================================================
# SUPPLEMENT D. INITIAL CONTINENT MAP VISUAL RULE
# ============================================================

The initial continent map may use
atlas-style colored state presentation.

The continent map should still clearly expose:

- tappable states
- distinguishable empty territory
- readable state boundaries
- builder entry from valid empty area


# ============================================================
# SUPPLEMENT E. INITIAL CITY MAP VISUAL RULE
# ============================================================

The initial city map may use
atlas-style or diagram-like colored city presentation.

The city map should still clearly expose:

- empty area
- districts
- tappable facilities
- tappable district regions
- readable local spatial separation


# ============================================================
# SUPPLEMENT F. MAP ASSET REPLACEMENT RULE
# ============================================================

Map presentation assets may be replaced later
without changing canonical territory truth.

Replacement of visual assets must not by itself
change:

- continent truth
- state territory truth
- city territory truth
- district truth
- cell truth
- facility placement truth


# ============================================================
# SUPPLEMENT G. MAP INTERACTION RULE
# ============================================================

User interactions such as:

- tap
- zoom
- pan
- select
- place

must operate against the canonical coordinate
and territory system,
not against the image alone.

Visual assets support interpretation.
They do not define truth.


## Exact UI Projection Rule
## Exact UI Projection Rule

World UI must explicitly distinguish:

- canonical truth
- projection read model
- UI-local state
- cached state

These are not interchangeable.

## Exact Builder And Operation Routing

Builder routing targets staged builder sessions.
Operation routing targets active runtime-owned entities.
A single ambiguous route must not serve both.

## Exact World Map Boundary

The following must remain separate:

- world map visual projection
- map focus state
- builder entry route
- active operation route
- notification projection

World UI may display them together,
but may not collapse them into one mutation surface.
