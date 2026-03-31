# ============================================================
# WORLD ENTRY AND MAP FUNCTIONAL DESIGN
# ============================================================

status: canonical
layer: implementation
scope: world-entry-and-map-functional-design
component: world-entry-and-map-functional-design

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the functional design
for Civilization world entry,
login-related routes,
map hierarchy,
common map menu,
search,
notifications,
marketplace entry,
state builder entry,
and city builder entry.

This document translates
the world UI architecture
and UI interface documents
into implementable functional behavior.

This document defines:

- user-facing functional behavior
- route behavior
- button behavior
- transition behavior
- validation behavior
- temporary display rules
- non-functional expectations needed for implementation

This document does not redefine:

- backend auth internals
- mail delivery internals
- legal text contents
- story narrative internals
- state policy internals
- city policy internals
- facility business logic internals


# ============================================================
# 2. RELATED DOCUMENTS
# ============================================================

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- WORLD_MAP_AND_BUILDER_UI_FLOW_DIAGRAM
- LOGIN_AND_AUTH_UI_INTERFACE
- MAP_COMMON_MENU_UI_INTERFACE
- GLOBAL_MAP_UI_INTERFACE
- CONTINENT_MAP_UI_INTERFACE
- CITY_MAP_UI_INTERFACE
- STATE_BUILDER_UI_INTERFACE
- CITY_BUILDER_UI_INTERFACE


# ============================================================
# 3. USER JOURNEY GROUPS
# ============================================================

This functional design covers
the following user journey groups.

1. login and world entry
2. account support routes
3. legal and help routes
4. story-mode entry route
5. normal map navigation
6. common map menu usage
7. state builder entry
8. city builder entry
9. facility entry from city map
10. district entry from city map


# ============================================================
# 4. LOGIN SCREEN FUNCTION
# ============================================================

The login screen is the canonical entry
for normal world access.

The login screen must allow the user to:

- enter login id
- enter password
- submit login
- open create new user flow
- open password reset mail request flow
- open legal explanation screen
- open story mode route if aerial access token is available

Successful login must route to:

- global map

Failed login must:

- keep the user on login screen
- show explicit error feedback
- not silently reset entered values unless required by security policy


# ============================================================
# 5. CREATE NEW USER FUNCTION
# ============================================================

The create new user route
is a support route from login.

The flow is:

login screen
-> create new user screen
-> submit creation
-> return to login screen

At this stage,
the detailed account field design
may remain minimal or reserved,
but the route must exist in the design.

Create new user is not a map route.


# ============================================================
# 6. PASSWORD RESET FUNCTION
# ============================================================

The password reset support flow is:

login screen
-> password reset mail request screen
-> reset mail issued
-> mail link
-> password reset screen
-> reset completion
-> login screen

This flow must remain separate
from normal world-map routing.

Password reset success must return
the user to login screen.


# ============================================================
# 7. LEGAL EXPLANATION FUNCTION
# ============================================================

Legal explanation must be reachable from:

- login screen
- top-right common map menu

Legal explanation is a support route.

It is not part of builder flow,
facility flow,
or story flow progression.


# ============================================================
# 8. HELP FUNCTION
# ============================================================

Help must be reachable from:

- top-right common map menu

Help is a support function
available during map navigation.

Help is not a core world progression route.


# ============================================================
# 9. STORY MODE ENTRY FUNCTION
# ============================================================

Story mode entry exists only from
the login screen.

The canonical story flow is:

login screen
-> aerial access token check
-> story mode gate
-> story select screen
-> story screen

Story mode entry must not be shown on:

- global map
- continent map
- city map

Story mode is a separate route family
from normal world navigation.


# ============================================================
# 10. NORMAL WORLD ENTRY FUNCTION
# ============================================================

The normal world entry flow is:

login screen
-> global map
-> continent map
-> city map

This is the canonical non-story route.

Home in common bottom navigation
must return to the canonical normal-world entry hub.

At the current design stage,
home may resolve to global map
unless a dedicated home dashboard is later defined.


# ============================================================
# 11. GLOBAL MAP FUNCTION
# ============================================================

Global map is the top-level world map.

Its primary functions are:

- show continents
- allow continent selection
- show continent information
- expose common menus

When the user taps a continent,
the system routes to:

- continent map

Global map must also expose
a continent information surface,
at minimum including:

- continent characteristics
- continent population
- number of states
- other continent-level meta information where available


# ============================================================
# 12. CONTINENT MAP FUNCTION
# ============================================================

Continent map is the state-selection layer.

Its primary functions are:

- show states
- allow state selection
- open state list
- open state information
- allow state builder entry from empty area
- return to global map
- expose common menus

Canonical functional behaviors:

- state tap -> city map
- state list -> state information
- empty area tap -> state builder
- back -> global map


# ============================================================
# 13. CITY MAP FUNCTION
# ============================================================

City map is the city-local operational layer.

Its primary functions are:

- show city-local spatial context
- open city list
- open city information
- allow city builder entry from empty area
- allow facility entry
- allow district entry
- return to continent map
- expose common menus

Canonical functional behaviors:

- city list -> city information
- empty area tap -> city builder
- facility tap -> facility overview
- district tap -> district detail information
- back -> continent map


# ============================================================
# 14. MAP COMMON MENU FUNCTION
# ============================================================

The common map menu must be structurally identical
across:

- global map
- continent map
- city map

Top-right support menu:

- legal explanation
- help

Bottom-right core navigation:

- home
- search
- notifications
- marketplace
- profile
- settings

This separation must remain fixed.


# ============================================================
# 15. SEARCH FUNCTION
# ============================================================

The visible label must be:

search

Search must not be limited
to facility-only lookup.

At minimum,
search must support:

- facility search
- state search

Search results may route to:

- facility overview
- state information
- map jump targets where applicable

Future expansion may include:

- city
- district
- company
- persona


# ============================================================
# 16. NOTIFICATIONS FUNCTION
# ============================================================

Notifications must be reachable
from all map layers.

A notification item may route to:

- map location
- state information
- city information
- district detail
- facility overview
- issue or alert related screen

Notifications are cross-layer entry points.


# ============================================================
# 17. MARKETPLACE FUNCTION
# ============================================================

Marketplace must be reachable
from all map layers.

Marketplace is global in reach
and must not be treated
as city-only navigation.

Marketplace entry is a cross-system route,
not a local map function only.


# ============================================================
# 18. PROFILE FUNCTION
# ============================================================

Profile must be reachable
from all map layers.

Profile is a user-context route,
not a world-progression route.

Returning from profile
must route the user back
to the previous map layer
unless a stronger navigation rule is later defined.


# ============================================================
# 19. SETTINGS FUNCTION
# ============================================================

Settings must be reachable
from all map layers.

Returning from settings
must route the user back
to the previous map layer
unless a stronger navigation rule is later defined.


# ============================================================
# 20. GLOBAL MAP VISUAL ASSET RULE
# ============================================================

Initial map presentation may use
atlas-style colored map assets.

This is a provisional presentation rule.

The visual map asset is not
the canonical territory truth.

Canonical territory truth must remain
separate from the display asset.

Map assets must remain replaceable later
without changing geographic truth.


# ============================================================
# 21. CONTINENT MAP VISUAL FUNCTION
# ============================================================

Continent map may initially use
atlas-style colored state presentation.

The user must still be able to:

- identify tappable states
- distinguish empty territory
- identify state boundaries well enough
- open state-related routes clearly

Visual simplicity is acceptable
at the early stage,
but tappable separation must remain clear.


# ============================================================
# 22. CITY MAP VISUAL FUNCTION
# ============================================================

City map may initially use
atlas-style or diagram-like colored city presentation.

The user must still be able to distinguish:

- empty area
- district area
- facilities
- local route context where relevant

Facility taps and district taps
must not be ambiguous.


# ============================================================
# 23. STATE BUILDER ENTRY FUNCTION
# ============================================================

State builder is entered from:

continent map
-> empty area tap

Empty area tap is only the builder trigger.

It does not finalize territory.

Actual state territory determination happens in:

- territory / area selection screen


# ============================================================
# 24. STATE BUILDER FLOW FUNCTION
# ============================================================

The canonical state builder flow is:

state builder start
-> state template selection
-> territory / area selection
-> capital / core point selection
-> state identity setup
-> government / policy setup
-> population / initial resource setup
-> validation review
-> state create
-> state information
-> city map or state-local next route

Validation failure must return
the user to an editable step.


# ============================================================
# 25. STATE TERRITORY SELECTION FUNCTION
# ============================================================

State territory selection uses
state-scale territory cells.

Canonical state territory unit:

10km x 10km

The state territory selection function must support:

- cell selection
- cell deselection
- selected cell count visibility
- selected total area visibility
- connected-cell validation
- invalid terrain validation where applicable
- boundary validation where applicable
- explicit continuation only after validation conditions are satisfied

Recommended canonical minimum:

- 10 connected state cells
- approximately 1,000 km² minimum area


# ============================================================
# 26. STATE BUILDER SCALE FUNCTION
# ============================================================

State builder must support:

- zoom in
- zoom out
- pan
- reset zoom
- fit selected area
- scale indicator

Scale change is required for:

- continent-scale review
- territory-cell review
- border precision confirmation

Zoom changes must not mutate
territory truth by themselves.


# ============================================================
# 27. CITY BUILDER ENTRY FUNCTION
# ============================================================

City builder is entered from:

city map
-> empty area tap

Empty area tap is only the builder trigger.

Actual city area determination happens in:

- boundary / area selection screen


# ============================================================
# 28. CITY BUILDER FLOW FUNCTION
# ============================================================

The canonical city builder flow is:

city builder start
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
the user to an editable step.


# ============================================================
# 29. CITY AREA SELECTION FUNCTION
# ============================================================

City territory selection uses
city-scale cells.

Canonical city territory unit:

1km x 1km

The city area selection function must support:

- cell selection
- cell deselection
- selected cell count visibility
- selected total area visibility
- explicit continuation only after validation conditions are satisfied

A single city cell is the manipulation unit.

City establishment minimum size
must be defined separately
from the manipulation unit.


# ============================================================
# 30. CITY CELL FACILITY CAPACITY FUNCTION
# ============================================================

A city cell may contain
multiple facilities.

Recommended canonical model:

- 1 city cell = 10 placement capacity units

Facilities consume placement capacity
according to facility scale.

The functional system must support:

- selected city cell visibility
- total capacity visibility
- used capacity visibility
- remaining capacity visibility
- facility-size-aware placement validation

A city cell does not mean
one facility only.


# ============================================================
# 31. CITY BUILDER SCALE FUNCTION
# ============================================================

City builder must support:

- city-scale review
- district-scale planning review
- 1km cell review
- local facility placement review where supported

Required controls:

- zoom in
- zoom out
- pan
- reset zoom
- fit selected area
- scale indicator

Zoom changes must not mutate
city truth by themselves.


# ============================================================
# 32. FACILITY PLACEMENT FUNCTION
# ============================================================

Where city builder supports
initial facility placement,
facility placement must support:

- facility selection
- local placement
- placement validation
- capacity consumption visibility
- zoomed local precision
- surrounding balance review
- explicit placement confirmation

Placement is a spatial operation,
not only a list assignment operation.


# ============================================================
# 33. FACILITY ENTRY FUNCTION
# ============================================================

Facility tap from city map
must first route to:

- facility overview

It must not skip directly
to deep management tabs.

Canonical facility entry route:

city map
-> facility tap
-> facility overview

From facility overview,
the user may continue to:

- facility manage
- facility issue
- facility history
- facility permission
- linked facility


# ============================================================
# 34. DISTRICT ENTRY FUNCTION
# ============================================================

District tap from city map
must first route to:

- district detail information

District detail may then route to:

- district facility list
- district zone or policy information
- district statistics
- linked city information
- facility jump inside the district

District tap must not skip directly
into facility operation.


# ============================================================
# 35. LOADING AND ERROR BEHAVIOR
# ============================================================

All world-entry and map screens
must define explicit behavior for:

- loading
- ready
- blocked
- error

Builder flows must additionally define:

- invalid selection
- validation failure
- unable_to_continue state

Error handling must remain explicit
and must not silently reroute users
without visible feedback.


# ============================================================
# 36. RESERVED BUT NOT FULLY DESIGNED YET
# ============================================================

The following routes are recognized
but not yet fully detailed.

- create new user detailed field set
- password reset detailed validation
- legal explanation detailed composition
- story mode post-entry details
- search result detail structure
- notification detail structure
- profile detailed structure
- settings detailed structure
- district detail field-level structure
- city information field-level structure


# ============================================================
# 37. FINAL RULE
# ============================================================

World entry and map functions must remain:

- login-rooted
- map-hierarchical
- story-separated from normal-world routing
- explicit in common menu behavior
- explicit in builder transitions
- scale-aware during placement
- deterministic in route behavior

State builder and city builder
must remain distinct functional systems
with distinct territory units.
