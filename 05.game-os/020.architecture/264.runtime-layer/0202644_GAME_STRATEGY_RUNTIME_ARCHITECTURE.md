# ============================================================
# GAME STRATEGY RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Strategy runtime of GameOS.

This runtime family covers:

- turn-based strategy
- tactical strategy
- resource-control strategy
- base-capture strategy
- lightweight civilization strategy
- faction conflict strategy

This runtime is part of GameOS Runtime Layer.

It defines execution semantics for:
- turn lifecycle
- map state continuity
- unit action boundaries
- resource progression
- building state progression
- victory and defeat conditions
- preview-safe sandbox execution


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The Strategy Runtime is a declarative turn-and-state runtime.

Creators do not define arbitrary engine code.
Creators define:

- map package
- faction set
- unit set
- unit action rules
- turn rules
- resource rules
- building rules
- capture/control rules
- victory and defeat rules
- asset bindings

The runtime interprets those declarations.

The Strategy Runtime must support:

- beginner template strategy creation
- standard tactical scenario creation
- advanced but declarative strategy variation

without losing predictability.


# ============================================================
# 2. CORE EXECUTION OBJECTS
# ============================================================

The Strategy Runtime must operate on the following execution objects:

- map
- tile or cell state
- faction
- unit
- unit action
- resource state
- building state
- turn state
- control state
- victory state
- defeat state
- save state

Minimum runtime truth objects:

- turn progression state
- map continuity state
- unit action candidate state
- resource progression state
- building progression state


# ============================================================
# 3. MAP MODEL
# ============================================================

A map is the primary strategic continuity unit.

Each map must define:

- map_id
- map_type
- topology_profile
- starting_faction_positions
- resource_nodes
- building_nodes
- control_nodes
- turn_entry_rule
- turn_exit_rule

map_type examples:
- tactical_grid
- tactical_lane
- territory_control
- resource_field
- fortress_map
- multi_front_map

A map package must remain a referenced asset/package object.

The runtime must separate:

- map visual data
- tile/cell rule data
- traversal rule data
- control/capture rule data
- resource rule data


# ============================================================
# 4. TURN MODEL
# ============================================================

Turn lifecycle must be formal.

Each turn rule set must define:

- turn_order_rule
- faction_phase_rule
- unit_action_limit_rule
- end_turn_rule
- overflow_rule
- timeout_rule where applicable

The runtime must support:

- single-side turn
- alternating turn
- phased turn
- initiative-based turn

Turn resolution must always be explicit.

No hidden phase transition is allowed.


# ============================================================
# 5. UNIT MODEL
# ============================================================

A unit is an explicit strategic actor.

Each unit definition must define:

- unit_id
- faction_id
- class_or_role
- movement_rule
- action_rule_set
- health_or_integrity_rule
- range_rule
- occupation_rule where applicable
- persistence_rule

unit role examples:
- infantry
- ranged
- cavalry
- support
- siege
- worker
- scout
- commander
- monster_unit

Unit existence must remain bounded
to approved runtime structures.


# ============================================================
# 6. UNIT ACTION BOUNDARY
# ============================================================

Unit actions must be declarative and bounded.

Allowed action categories:

- move
- attack
- defend
- occupy
- build
- gather
- support
- wait
- special_action

Each action must define:

- action_id
- action_type
- preconditions
- target_rule
- cost_rule
- effect_rule
- post_action_rule

The runtime must not allow unrestricted action mutation.

All unit actions must remain validation-friendly
and replayable from explicit state.


# ============================================================
# 7. RESOURCE MODEL
# ============================================================

Resource progression must be explicit.

Resource categories may include:

- gold
- food
- energy
- material
- command_points
- influence
- strategic_points

Each resource rule must define:

- generation_rule
- consumption_rule
- storage_rule
- overflow_rule
- transfer_rule

The runtime must make resource mutation explicit
for validation and anti-exploit purposes.


# ============================================================
# 8. BUILDING MODEL
# ============================================================

Buildings are explicit strategy state objects.

Each building definition must define:

- building_id
- building_type
- faction_owner_rule
- level_rule
- output_rule
- capture_rule
- damage_rule
- repair_rule
- destruction_rule

building_type examples:
- base
- fortress
- tower
- farm
- factory
- generator
- command_center
- wall
- gate

Building state progression must remain explicit.


# ============================================================
# 9. CONTROL / CAPTURE MODEL
# ============================================================

Control state must be formal.

A control rule must define:

- control_node_id
- ownership_rule
- contest_rule
- capture_threshold_rule
- control_effect_rule

The runtime must support:
- uncontested control
- contested control
- delayed capture
- instant occupation
- neutral control nodes

Control mutation must not be hidden.


# ============================================================
# 10. VICTORY / DEFEAT MODEL
# ============================================================

Victory and defeat conditions must be declarative.

Allowed victory condition categories:

- eliminate_target
- capture_target
- survive_turn_count
- control_resource_threshold
- defend_target
- score_threshold
- mixed_condition

Allowed defeat condition categories:

- lose_core_unit
- lose_base
- fail_survival_rule
- lose_resource_threshold
- lose_control_threshold

Each condition must define:

- condition_id
- condition_type
- threshold_or_target
- evaluation_timing
- priority_rule

Victory resolution must remain deterministic.


# ============================================================
# 11. SAVE CONTINUITY
# ============================================================

Strategy Runtime must support formal save continuity.

A save candidate may include:

- turn state
- faction state
- unit state
- resource state
- building state
- map control state
- victory progression state

The runtime must make clear:
- what is saveable
- what is derived
- what is transient
- what must never become authoritative from client without adjudication

Save continuity must remain explicit.


# ============================================================
# 12. PREVIEW SANDBOX
# ============================================================

Preview must be sandboxed.

Preview may simulate:
- turn progression
- unit actions
- building progression
- resource changes
- victory/defeat evaluation

Preview must not perform:
- production ranking mutation
- production achievement mutation
- production commerce mutation
- production entitlement mutation

Preview state must be discardable.


# ============================================================
# 13. EXPORT MODEL
# ============================================================

Strategy export must freeze:

- runtime family
- ruleset profile
- map package bindings
- faction definitions
- unit definitions
- turn rules
- resource rules
- building rules
- control rules
- victory/defeat rules
- asset bindings

A Strategy export package must be runtime-unambiguous.

One export package may bind to only one active Strategy runtime profile.


# ============================================================
# 14. VALIDATION RULES
# ============================================================

Strategy Runtime must support three validation levels.

## Editing validation
- missing faction reference
- missing unit target rule
- missing resource node reference
- invalid building rule
- invalid victory condition reference
- invalid map transition reference

## Export validation
- broken map continuity
- unresolved unit rule
- unresolved building rule
- impossible resource progression
- conflicting victory/defeat rule
- missing required assets

## Publish validation
- unresolved runtime metadata
- disallowed monetization linkage
- unresolved age/content flags
- invalid ranking candidate configuration

Blocking errors must prevent export.


# ============================================================
# 15. SYNC INTERACTION MODEL
# ============================================================

Strategy Runtime may produce submit-worthy candidates only through approved boundaries.

Possible candidates:
- save snapshot candidate
- scenario completion candidate
- victory candidate
- defeat candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate

Client-side Strategy outcomes remain untrusted
until GameOS sync adjudication accepts them.

Strategy Runtime must not directly finalize:
- platform ranking truth
- platform achievement truth
- entitlement truth
- commerce truth


# ============================================================
# 16. TEMPLATE COMPATIBILITY
# ============================================================

Strategy Runtime must support template-driven creation.

Required supported template families:
- small tactical strategy
- base capture scenario
- resource control scenario
- defensive strategy scenario
- faction conflict scenario

Each template must declare:
- required map blocks
- required faction structures
- required unit structures
- required building structures
- required victory/defeat rules
- required asset families

Strategy Runtime must expose editable zones safely
to Builder.


# ============================================================
# 17. CUSTOMIZATION RULE
# ============================================================

Allowed customization:
- map expansion
- faction expansion
- unit rule tuning
- resource tuning
- building tuning
- victory/defeat tuning
- UI skin replacement

Prohibited customization:
- arbitrary execution code injection
- unrestricted state mutation
- hidden non-declarative turn logic
- unrestricted economy mutation
- unrestricted ranking finalization

Advanced override is allowed only
through runtime-approved override zones.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

The Strategy Runtime is an official GameOS runtime family.

It defines how strategy-like games execute safely and predictably
inside GameOS.

Core summary:

- maps are primary strategic continuity units
- turn lifecycle is formal
- unit actions are bounded
- resource and building progression are explicit
- victory and defeat conditions are declarative
- preview is sandboxed
- export is runtime-frozen
