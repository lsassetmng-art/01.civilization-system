# ============================================================
# GAME VN RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official visual novel and dating simulation runtime
of GameOS.

This runtime family covers:

- visual novel
- branching story game
- dating simulation
- affection-based narrative game
- companion narrative game

This runtime is part of GameOS Runtime Layer.

It defines execution semantics for:
- scenes
- dialogue
- choices
- branches
- affection progression
- relationship progression
- ending resolution
- preview-safe narrative execution


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The VN Runtime is a declarative narrative runtime.

Creators do not define arbitrary engine code.
Creators define:

- scene graph
- dialogue blocks
- choice blocks
- branch conditions
- affection rules
- ending rules
- asset bindings
- approved Persona-linked presentation bindings

The runtime interprets these declarations.

The runtime must support both:

- low-complexity beginner templates
- higher-flexibility advanced templates

without losing predictability.


# ============================================================
# 2. CORE EXECUTION OBJECTS
# ============================================================

The VN Runtime must operate on the following execution objects:

- scene
- dialogue block
- choice block
- branch condition
- variable state
- affection state
- relationship state
- route state
- ending state

Minimum runtime truth objects:

- scene progression state
- branch evaluation state
- affection progression state
- ending resolution state


# ============================================================
# 3. SCENE MODEL
# ============================================================

A scene is the primary execution unit.

Each scene must define:

- scene_id
- scene_type
- entry_condition
- content_blocks
- exit_condition
- next_scene_resolution_rule

scene_type examples:
- opening
- normal
- relationship
- event
- route_lock
- ending
- epilogue

A scene must not directly mutate unrelated runtime domains.

Scene execution is strictly bounded
to VN Runtime semantics.


# ============================================================
# 4. DIALOGUE EXECUTION
# ============================================================

Dialogue execution must be block-based.

Each dialogue block may contain:

- speaker reference
- text payload
- portrait reference
- expression reference
- voice reference
- effect cue
- variable mutation
- affection mutation
- relationship mutation
- next step rule

Dialogue execution must remain deterministic.

A dialogue block must never depend on hidden engine logic.

All dialogue-dependent mutation must be explicit.


# ============================================================
# 5. CHOICE EXECUTION
# ============================================================

Choice blocks define selectable narrative branches.

Each choice must define:

- choice_id
- display_text
- visibility_condition
- selection_effect
- next_scene_target or next_block_target

selection_effect may include:

- variable update
- affection update
- relationship update
- route flag update

Choice execution must support:

- visible choice
- hidden choice
- locked choice
- disabled choice

The reason for a locked or hidden choice
must be explainable through explicit conditions.


# ============================================================
# 6. BRANCH CONDITION MODEL
# ============================================================

Branch conditions must be declarative.

Allowed condition sources:

- variable state
- affection state
- relationship state
- route state
- prior scene completion state
- explicit runtime milestone state

Prohibited condition sources:

- arbitrary external hidden logic
- unrestricted remote mutation
- unrestricted Persona truth internals

Branch resolution must remain replayable
from explicit state.


# ============================================================
# 7. AFFECTION / RELATIONSHIP PROGRESSION
# ============================================================

VN Runtime must support formal affection
and relationship progression.

Affection progression is a runtime-approved variable family.

Relationship progression is a higher semantic layer
built from explicit state transitions.

Examples:
- stranger
- acquaintance
- trusted
- bonded
- romance_open
- romance_locked
- partner_route

All progression must be explicit.

No hidden affection mutation is allowed.

Relationship progression may be used for:
- route unlock
- scene unlock
- ending unlock
- event mutation
- dialogue variant selection


# ============================================================
# 8. ROUTE MODEL
# ============================================================

A route is an explicit narrative track.

A route must define:

- route_id
- route_entry_conditions
- route_lock_conditions
- route_exit_conditions
- route_affection_requirements
- route_ending_set

The runtime must support:

- no-route global flow
- single locked route
- multiple competing routes
- hidden route unlock

Route entry must always be explainable
through explicit progression state.


# ============================================================
# 9. ENDING RESOLUTION
# ============================================================

Ending resolution is a formal runtime operation.

An ending must define:

- ending_id
- ending_type
- ending_conditions
- priority_rule
- final_state_effect

ending_type examples:
- good
- normal
- bad
- true
- hidden
- companion
- romance
- failure

If multiple endings qualify,
resolution must use explicit priority rules.

Ending resolution must never be ambiguous.


# ============================================================
# 10. VARIABLE MODEL
# ============================================================

VN Runtime variables must be structured.

Variable families:

- narrative variables
- route variables
- affection variables
- relationship variables
- unlock variables
- ending variables

Variable mutation must only happen through:
- scene rule
- dialogue block
- choice selection
- explicit runtime-approved event

No unrestricted variable mutation is allowed.


# ============================================================
# 11. PERSONA INTEGRATION BOUNDARY
# ============================================================

VN Runtime may integrate with PersonaOS only through approved bindings.

Allowed Persona-facing effects:
- dialogue tone shaping
- presentation shaping
- reaction style shaping
- approved cast identity projection

Prohibited:
- direct Persona truth mutation
- unrestricted trust/state access
- unrestricted memory access
- unrestricted growth mutation

Persona truth remains external truth.

VN Runtime may consume approved projections only.


# ============================================================
# 12. PREVIEW SANDBOX
# ============================================================

Preview must be sandboxed.

Preview may simulate:
- scene progression
- branch selection
- affection change
- route lock/unlock
- ending evaluation

Preview must not perform:
- production ranking mutation
- production achievement mutation
- production commerce mutation
- production Persona growth mutation
- production entitlement mutation

Preview state must be discardable.


# ============================================================
# 13. EXPORT MODEL
# ============================================================

VN export must freeze:

- runtime family
- ruleset profile
- scene graph
- dialogue graph
- branch rules
- affection rules
- ending rules
- asset bindings
- approved Persona projection references

A VN export package must be runtime-unambiguous.

One export package may bind to only one active VN runtime profile.


# ============================================================
# 14. VALIDATION RULES
# ============================================================

VN Runtime must support three validation levels.

## Editing validation
- missing speaker reference
- missing next target
- invalid condition reference
- invalid route reference
- invalid ending reference

## Export validation
- broken scene graph
- unresolved branch target
- unresolved ending priority
- invalid affection progression structure
- missing required assets

## Publish validation
- prohibited Persona misuse
- disallowed content flags
- incomplete route metadata
- unresolved store-facing metadata dependencies

Blocking errors must prevent export.


# ============================================================
# 15. SYNC INTERACTION MODEL
# ============================================================

VN Runtime may produce submit-worthy candidates only through approved boundaries.

Possible candidates:
- save snapshot candidate
- completion milestone candidate
- ending unlock candidate
- achievement candidate
- telemetry candidate

Client-side VN outcomes remain untrusted
until GameOS sync adjudication accepts them.

VN Runtime must not directly finalize:
- achievement truth
- ranking truth
- entitlement truth
- economic truth


# ============================================================
# 16. TEMPLATE COMPATIBILITY
# ============================================================

VN Runtime must support template-driven creation.

Required supported template families:
- short branching vn
- romance vn
- companion story
- multi-ending vn
- dating sim

Each template must declare:

- required scenes
- required route blocks
- required affection variables
- required ending definitions
- required asset families

VN Runtime must expose editable zones safely
to Builder.


# ============================================================
# 17. CUSTOMIZATION RULE
# ============================================================

Allowed customization:
- scene addition
- dialogue replacement
- branch condition tuning
- affection formula tuning
- route expansion
- ending expansion
- UI skin replacement
- approved Persona projection assignment

Prohibited customization:
- arbitrary execution code injection
- unrestricted state mutation
- hidden non-declarative progression logic

Advanced override is allowed only
through runtime-approved override zones.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

The VN Runtime is an official GameOS runtime family.

It defines how narrative and dating-style games
execute safely and predictably inside GameOS.

Core summary:

- scenes are primary execution units
- dialogue and choices are block-based
- branch conditions are declarative
- affection and relationship progression are explicit
- ending resolution is deterministic
- preview is sandboxed
- export is runtime-frozen
- Persona is projection-only
