# ============================================================
# CITY BUILDER UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: city-builder-ui-implementation
component: city-builder-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for the Civilization city builder UI.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- WORLD_MAP_AND_BUILDER_UI_FLOW_DIAGRAM
- CITY_BUILDER_UI_INTERFACE

This document defines:

- city builder entry behavior
- area selection behavior
- district and infrastructure planning behavior
- initial facility placement behavior
- capacity handling
- zoom and local placement behavior
- validation behavior
- completion routing behavior

This document does not redefine:

- city governance truth
- city economy truth
- facility business logic
- lower placement formulas beyond UI implementation rules


# ============================================================
# 2. CANONICAL ENTRY
# ============================================================

City builder is entered from:

- city map
- empty area tap

Empty area tap is only the trigger.

It must not finalize city area by itself.

Actual city area determination begins in:

- city_builder_start_screen
- city_boundary_area_selection_screen


# ============================================================
# 3. CANONICAL SCREEN STACK
# ============================================================

City builder must implement:

- city_builder_start_screen
- city_template_selection_screen
- city_boundary_area_selection_screen
- city_core_selection_screen
- city_identity_setup_screen
- city_district_zone_planning_screen
- city_infrastructure_setup_screen
- city_initial_facility_setup_screen
- city_validation_review_screen
- city_create_complete_screen


# ============================================================
# 4. ENTRY INITIALIZATION RULE
# ============================================================

When city builder starts,
the implementation must initialize:

- source city-map context
- current camera / map context where useful
- empty-area origin hint where available
- selectable city-cell dataset
- invalid-area dataset where applicable
- district and infrastructure planning context

Builder start must not silently finalize
city boundaries without explicit user confirmation.


# ============================================================
# 5. DEFAULT START BEHAVIOR
# ============================================================

On entering city builder,
the user should land on:

- city_builder_start_screen

From there,
the normal forward progression is:

- template selection
- boundary selection
- core selection
- identity setup
- district / zone planning
- infrastructure setup
- initial facility setup
- validation review
- create complete


# ============================================================
# 6. CITY AREA SELECTION UNIT
# ============================================================

City area selection must use:

- 1km x 1km city cells

Implementation must not use
10km state cells
as the direct manipulation unit
for city establishment.


# ============================================================
# 7. CITY AREA SELECTION BEHAVIOR
# ============================================================

The boundary selection screen must support:

- select city cell
- deselect city cell
- additive expansion from existing selected area
- visible boundary of selected city area
- selected cell count visibility
- selected total area visibility
- invalid-area visibility where applicable
- minimum requirement status visibility

Selection must be explicit.

Boundary must not expand implicitly
without visible user action.


# ============================================================
# 8. MINIMUM CITY RULE
# ============================================================

The 1km cell is the manipulation unit.

City establishment minimum size
must be validated separately.

Implementation must support:

- minimum city size validation
- selected city-cell count visibility
- continue-blocking when minimum is not satisfied

A single city cell must not automatically
be treated as a full city by default
unless a later rule explicitly permits it.


# ============================================================
# 9. MAP INTERACTION RULE
# ============================================================

City builder must support:

- zoom in
- zoom out
- pan
- reset zoom
- fit selected area
- current scale indicator

These interactions are mandatory.

Zoom changes must not mutate
city truth by themselves.


# ============================================================
# 10. SCALE-AWARE REVIEW RULE
# ============================================================

City builder must support
at least these viewing modes in practice:

- city-scale review
- district-scale planning review
- 1km cell review
- local placement review inside city cells where supported

The implementation may use a single map canvas
with dynamic zoom levels.


# ============================================================
# 11. TEMPLATE SELECTION RULE
# ============================================================

Template selection must be explicit.

A city template may influence:

- initial defaults
- district recommendations
- infrastructure recommendations
- suggested starting posture

A template must not bypass:

- area selection
- core selection
- validation
- explicit final creation


# ============================================================
# 12. CORE / CENTER SELECTION RULE
# ============================================================

Core or center selection
must occur only after city area selection.

Core selection must validate that
the selected core point is:

- inside selected city area
- not in invalid area
- compatible with city boundary truth where required

If the core becomes invalid
after later boundary edits,
the UI must require reselection
before final creation.


# ============================================================
# 13. IDENTITY SETUP RULE
# ============================================================

Identity setup must handle
city-facing descriptive information.

Typical city identity inputs may include:

- city name
- display naming variants where supported
- symbolic identity where supported

Identity setup must remain separate
from spatial truth.


# ============================================================
# 14. DISTRICT / ZONE PLANNING RULE
# ============================================================

District and zone planning
must remain explicit and editable.

This step should expose:

- district grouping
- zone posture
- district allocation logic
- obvious planning conflicts where detectable

District planning must not silently overwrite
user-confirmed city boundary selection.


# ============================================================
# 15. INFRASTRUCTURE SETUP RULE
# ============================================================

Infrastructure setup must expose
city-support planning posture.

It should support visibility into:

- infrastructure grouping
- support posture
- obvious insufficiency warnings
- obvious placement conflicts where detectable

Infrastructure setup should be reviewable
before final city creation.


# ============================================================
# 16. INITIAL FACILITY SETUP POSITION
# ============================================================

Initial facility setup is the step
where internal city cell capacity
begins to matter directly.

This step must remain explicit.

It must not silently auto-place facilities
without visible user confirmation.


# ============================================================
# 17. CITY CELL CAPACITY RULE
# ============================================================

Recommended canonical model:

- 1 city cell = 10 placement capacity units

Facilities consume placement capacity
according to facility scale.

Implementation must show at minimum:

- selected city cell
- total capacity
- used capacity
- remaining capacity
- selected facility size or capacity cost

A city cell may contain multiple facilities.

A city cell does not imply
one-facility-only placement.


# ============================================================
# 18. FACILITY PLACEMENT BEHAVIOR
# ============================================================

Initial facility placement must support:

- facility selection
- placement into city cell
- remove placed facility
- replace placed facility where supported
- capacity validation
- blocked placement feedback
- explicit confirmation of meaningful placement changes

Placement must be spatial,
not list-only.

Local placement review should remain visible.


# ============================================================
# 19. FACILITY SIZE AND CAPACITY FEEDBACK
# ============================================================

During placement,
the UI should provide immediate feedback for:

- selected facility size
- capacity cost
- remaining capacity
- over-capacity blocking
- incompatible placement indicators where detectable

The user must be able to understand
why a placement is invalid.


# ============================================================
# 20. LOCAL PLACEMENT REVIEW RULE
# ============================================================

City builder should support
local placement review inside city cells
where supported by the rendering system.

This local review is used for:

- density confirmation
- surrounding balance review
- visual plausibility review
- placement correction before final validation


# ============================================================
# 21. VALIDATION REVIEW RULE
# ============================================================

Validation review must summarize
all major city-builder decisions.

At minimum it should include:

- selected city area
- selected cell count
- core validity
- identity completeness
- district planning readiness
- infrastructure readiness
- initial facility placement validity
- capacity violations
- blocking errors
- warnings where applicable

Validation review must distinguish:

- warning
- blocked
- error

These must not be conflated.


# ============================================================
# 22. VALIDATION FAILURE RETURN RULE
# ============================================================

When validation fails,
the user must be returned
to the appropriate editable step.

Typical return targets include:

- boundary selection
- core selection
- identity setup
- district planning
- infrastructure setup
- initial facility setup

The builder must preserve prior progress
unless the user explicitly discards it.


# ============================================================
# 23. SAVE / CANCEL / CONFIRM RULE
# ============================================================

City builder must distinguish:

- save progress where supported
- cancel builder
- confirm city creation

City creation must require explicit confirm.

High-impact creation must not occur
as a side effect of simply reaching
the validation screen.


# ============================================================
# 24. UNSAVED PROGRESS RULE
# ============================================================

If the user attempts to leave
the builder with unsaved changes,
the UI should provide:

- save and leave
- discard and leave
- stay

This applies especially after edits to:

- city boundary
- core selection
- district planning
- infrastructure setup
- initial facility placement


# ============================================================
# 25. COMPLETE SCREEN RULE
# ============================================================

After successful creation,
the complete screen must allow:

- open city information
- back to city map
- continue to later city-local route where defined later

Completion must preserve readable confirmation
that the city has been created successfully.


# ============================================================
# 26. ERROR HANDLING RULE
# ============================================================

City builder must explicitly distinguish:

- invalid selection
- blocked continuation
- over-capacity placement
- system error
- data load failure
- creation failure

Creation failure must not be shown
as generic validation failure.

System failure must remain explicit.


# ============================================================
# 27. FINAL RULE
# ============================================================

City builder implementation must remain:

- boundary-explicit
- district-planning-explicit
- infrastructure-explicit
- capacity-visible
- placement-explicit
- scale-aware
- confirmation-required
- progress-preserving
- clearly separated from state-scale manipulation truth
