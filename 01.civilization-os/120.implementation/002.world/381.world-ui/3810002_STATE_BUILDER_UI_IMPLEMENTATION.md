# ============================================================
# STATE BUILDER UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: state-builder-ui-implementation
component: state-builder-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for the Civilization state builder UI.

This document must align with:

- WORLD_MAP_AND_BUILDER_UI_ARCHITECTURE
- WORLD_MAP_AND_BUILDER_UI_FLOW_DIAGRAM
- STATE_BUILDER_UI_INTERFACE

This document defines:

- state builder entry behavior
- territory selection behavior
- validation behavior
- zoom and placement behavior
- confirmation behavior
- completion routing behavior

This document does not redefine:

- state governance truth
- state policy truth
- geopolitical scoring formulas
- lower geography truth


# ============================================================
# 2. CANONICAL ENTRY
# ============================================================

State builder is entered from:

- continent map
- empty area tap

Empty area tap is only the trigger.

It must not finalize territory by itself.

Actual territory determination begins in:

- state_builder_start_screen
- state_territory_area_selection_screen


# ============================================================
# 3. CANONICAL SCREEN STACK
# ============================================================

State builder must implement:

- state_builder_start_screen
- state_template_selection_screen
- state_territory_area_selection_screen
- state_capital_selection_screen
- state_identity_setup_screen
- state_government_policy_setup_screen
- state_population_resource_setup_screen
- state_validation_review_screen
- state_create_complete_screen


# ============================================================
# 4. ENTRY INITIALIZATION RULE
# ============================================================

When state builder starts,
the implementation must initialize:

- source continent context
- current camera / map context where useful
- empty-area origin hint where available
- selectable state-cell dataset
- invalid-area dataset where applicable
- neighboring state boundary dataset where applicable

Builder start must not silently preselect
a final territory without explicit user confirmation.


# ============================================================
# 5. DEFAULT START BEHAVIOR
# ============================================================

On entering state builder,
the user should land on:

- state_builder_start_screen

From there,
the normal forward progression is:

- template selection
- territory selection
- capital selection
- identity setup
- government / policy setup
- population / initial resource setup
- validation review
- create complete


# ============================================================
# 6. TERRITORY SELECTION UNIT
# ============================================================

State territory selection must use:

- 10km x 10km state cells

Implementation must not use
1km city cells or facility placement units
as the direct manipulation unit
for state establishment.


# ============================================================
# 7. TERRITORY SELECTION BEHAVIOR
# ============================================================

The territory selection screen must support:

- select state cell
- deselect state cell
- additive expansion from existing selected area
- visible boundary of selected territory
- selected cell count visibility
- selected total area visibility
- invalid-area visibility where applicable
- neighbor boundary visibility where applicable

Selection must be explicit.

Territory must not expand implicitly
without visible user action.


# ============================================================
# 8. CONNECTED TERRITORY VALIDATION
# ============================================================

Implementation must support
connected territory validation.

At minimum,
the builder must validate:

- selected cells are connected
- invalid terrain is excluded where applicable
- neighbor overlap is disallowed
- restricted cells are disallowed
- minimum state size is satisfied

If disconnected territory is selected,
the UI must show explicit validation failure.

It must not silently auto-correct
the shape without user confirmation.


# ============================================================
# 9. MINIMUM STATE SIZE RULE
# ============================================================

Recommended canonical minimum:

- 10 connected state cells
- approximately 1,000 km²

Implementation must show:

- current selected cell count
- whether minimum requirement is satisfied
- whether the user can continue

If minimum size is not satisfied,
continue_to_capital_selection must be blocked
or explicitly prevented.


# ============================================================
# 10. TERRITORY SELECTION FEEDBACK RULE
# ============================================================

During territory selection,
the UI should provide immediate feedback for:

- selected cell count
- total area
- connected / disconnected posture
- blocked cells
- invalid terrain
- neighbor conflict
- minimum requirement status

Feedback should be visible
without requiring the user
to leave the territory selection screen.


# ============================================================
# 11. MAP INTERACTION RULE
# ============================================================

State builder must support:

- zoom in
- zoom out
- pan
- reset zoom
- fit selected area
- current scale indicator

These interactions are mandatory.

They are not optional enhancements.

Zoom changes must not mutate
territory truth by themselves.


# ============================================================
# 12. SCALE-AWARE REVIEW RULE
# ============================================================

State builder must support
at least these viewing modes in practice:

- continent-scale review
- selected territory review
- local boundary review

The purpose is to allow the user to check:

- macro placement logic
- final selected shape
- local border precision

The implementation may use a single map canvas
with dynamic zoom levels.


# ============================================================
# 13. TEMPLATE SELECTION RULE
# ============================================================

Template selection must be explicit.

A state template may influence:

- initial defaults
- recommended policy bundle
- suggested starting posture

A template must not bypass
territory selection,
capital selection,
or final validation.


# ============================================================
# 14. CAPITAL SELECTION RULE
# ============================================================

Capital or core-point selection
must occur only after territory selection.

Capital selection must validate
that the selected capital point is:

- inside selected territory
- not in invalid terrain
- not in blocked cell space

If the capital becomes invalid
after later territory edits,
the UI must require reselection
before final creation.


# ============================================================
# 15. IDENTITY SETUP RULE
# ============================================================

Identity setup must handle
state-facing descriptive information.

Typical state identity inputs may include:

- state name
- display naming variants where supported
- symbolic identity where supported

Identity setup must remain separate
from territory truth.


# ============================================================
# 16. GOVERNMENT / POLICY SETUP RULE
# ============================================================

Government and policy setup
must remain explicit and editable.

This step may preload template defaults,
but must still allow user confirmation.

High-impact policy choices should be reviewable
before final creation.


# ============================================================
# 17. POPULATION / RESOURCE SETUP RULE
# ============================================================

Population and initial resource setup
must remain explicit.

This step should expose:

- initial population posture
- initial resource posture
- obvious invalid or insufficient setup conditions

Invalid setup must block final creation
until corrected.


# ============================================================
# 18. VALIDATION REVIEW RULE
# ============================================================

Validation review must summarize
all major state-builder decisions.

At minimum it should include:

- selected territory area
- selected cell count
- connected territory result
- capital validity
- identity completeness
- policy completeness
- population / resource readiness
- blocking errors
- warnings where applicable

Validation review must distinguish:

- warning
- blocked
- error

These must not be conflated.


# ============================================================
# 19. VALIDATION FAILURE RETURN RULE
# ============================================================

When validation fails,
the user must be returned
to the appropriate editable step.

Typical return targets include:

- territory selection
- capital selection
- identity setup
- government / policy setup
- population / resource setup

The builder must not discard
all prior progress
unless the user explicitly cancels.


# ============================================================
# 20. SAVE / CANCEL / CONFIRM RULE
# ============================================================

State builder must distinguish:

- save progress where supported
- cancel builder
- confirm state creation

State creation must require explicit confirm.

High-impact creation must not occur
as a side effect of simply reaching
the validation screen.


# ============================================================
# 21. UNSAVED PROGRESS RULE
# ============================================================

If the user attempts to leave
the builder with unsaved changes,
the UI should provide:

- save and leave
- discard and leave
- stay

This applies especially after edits to:

- territory
- capital
- identity
- policy
- initial setup


# ============================================================
# 22. COMPLETE SCREEN RULE
# ============================================================

After successful creation,
the complete screen must allow:

- open state information
- open city map
- return to state-local route where defined later

Completion must preserve readable confirmation
that the state has been created successfully.


# ============================================================
# 23. ERROR HANDLING RULE
# ============================================================

State builder must explicitly distinguish:

- invalid selection
- blocked continuation
- system error
- data load failure
- creation failure

Creation failure must not be shown
as generic validation failure.

System failure must remain explicit.


# ============================================================
# 24. FINAL RULE
# ============================================================

State builder implementation must remain:

- territory-explicit
- validation-explicit
- scale-aware
- confirmation-required
- progress-preserving
- clearly separated from city-scale manipulation truth
