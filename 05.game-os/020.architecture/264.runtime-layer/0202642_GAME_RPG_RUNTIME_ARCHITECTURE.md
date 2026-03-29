# ============================================================
# GAME RPG RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official RPG runtime of GameOS.

This runtime family covers:

- story RPG
- quest RPG
- companion RPG
- dungeon RPG
- relationship RPG
- lightweight progression RPG

This runtime is part of GameOS Runtime Layer.

It defines execution semantics for:
- area progression
- map and event progression
- quest progression
- npc interaction
- battle resolution
- inventory and reward behavior
- progression and level behavior
- save continuity
- preview-safe sandbox execution


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The RPG Runtime is a declarative progression runtime.

Creators do not define arbitrary engine code.
Creators define:

- area graph
- map package bindings
- event blocks
- quest chains
- npc interaction blocks
- battle presets
- reward rules
- inventory rules
- level and growth rules
- approved Persona-linked cast projections

The runtime interprets those declarations.

The RPG Runtime must support both:

- template-heavy beginner RPG creation
- standard quest-driven RPG creation
- advanced but still declarative RPG variation


# ============================================================
# 2. CORE EXECUTION OBJECTS
# ============================================================

The RPG Runtime must operate on the following execution objects:

- area
- map
- event block
- npc interaction block
- quest
- objective
- battle preset
- inventory state
- reward state
- level progression state
- save state

Minimum runtime truth objects:

- area progression state
- quest progression state
- battle outcome candidate state
- inventory mutation candidate state
- save continuity state


# ============================================================
# 3. AREA AND MAP MODEL
# ============================================================

An area is the primary world progression unit.

Each area must define:

- area_id
- area_type
- entry_conditions
- map_package_ref
- event_set
- npc_set
- exit_conditions
- next_area_resolution_rule

area_type examples:
- town
- field
- dungeon
- boss_zone
- shop_zone
- rest_zone
- event_zone

A map package must remain a referenced asset/package object.

The runtime must separate:

- map visual data
- traversal rule data
- event trigger data
- progression gate data


# ============================================================
# 4. EVENT EXECUTION
# ============================================================

RPG event execution must be block-based.

Each event block may contain:

- trigger_type
- trigger_conditions
- dialogue section
- reward mutation
- quest mutation
- npc state mutation
- area state mutation
- battle trigger
- next_block_rule

trigger_type examples:
- touch
- interact
- area_enter
- battle_complete
- quest_complete
- item_check
- flag_check

All event-driven mutation must remain explicit.


# ============================================================
# 5. NPC INTERACTION MODEL
# ============================================================

NPC interaction must be declarative.

Each npc interaction may define:

- npc_id
- interaction_state
- dialogue_variant_rule
- quest_offer_rule
- shop_rule
- companion_rule
- relationship_rule
- event_trigger_rule

NPC interaction must support:
- repeated interaction
- one-time interaction
- state-dependent interaction
- quest-dependent interaction
- relationship-dependent interaction

No hidden mutation is allowed.


# ============================================================
# 6. QUEST MODEL
# ============================================================

A quest is an explicit progression track.

A quest must define:

- quest_id
- quest_type
- prerequisites
- objective_set
- completion_rule
- failure_rule
- reward_rule

quest_type examples:
- main
- side
- companion
- guild
- hunt
- delivery
- relationship

Each objective must be explicit.

Examples:
- defeat target
- talk to npc
- obtain item
- reach area
- clear battle
- relationship threshold

Quest progression must remain replayable
from explicit state.


# ============================================================
# 7. BATTLE MODEL
# ============================================================

Battle resolution must be preset-driven.

The runtime must not allow unrestricted battle code mutation.

Each battle preset must define:

- battle_preset_id
- battle_type
- participant_set
- turn_or_phase_rule
- victory_rule
- defeat_rule
- reward_link
- persistence_rule

battle_type examples:
- normal
- boss
- scripted
- encounter
- duel
- companion_event

Battle outcome must produce:
- victory candidate
- defeat candidate
- reward candidate
- objective candidate
- telemetry candidate

These remain untrusted until accepted by GameOS sync adjudication
when client-submitted.


# ============================================================
# 8. INVENTORY MODEL
# ============================================================

Inventory behavior must be explicit.

The runtime must define:

- item acquisition rule
- item consumption rule
- item stack rule
- equipment assignment rule
- key item restriction rule
- shop trade rule

Inventory mutation may occur only through:
- reward rule
- shop rule
- event rule
- battle result rule
- approved progression rule

No unrestricted inventory mutation is allowed.


# ============================================================
# 9. REWARD MODEL
# ============================================================

Rewards must be declarative.

Reward categories may include:

- item reward
- currency reward
- unlock reward
- companion reward
- progression reward
- relationship reward

Each reward rule must define:
- reward source
- reward conditions
- reward payload
- reward eligibility rule

The runtime must keep reward generation explicit
for validation and anti-exploit purposes.


# ============================================================
# 10. LEVEL / GROWTH MODEL
# ============================================================

RPG Runtime must support formal progression.

Progression may include:

- level
- skill unlock
- class unlock
- relationship milestone
- quest milestone
- route milestone

Growth rules must define:
- source action
- progression amount
- threshold rule
- unlock rule
- persistence rule

Hidden growth mutation is prohibited.


# ============================================================
# 11. SHOP MODEL
# ============================================================

Shop behavior must be declarative.

A shop rule must define:

- shop_id
- inventory_set
- purchase_conditions
- sale_conditions
- pricing_rule
- availability_rule

Shop execution must remain bounded
to approved inventory and economy semantics.

The RPG Runtime must not directly finalize
platform economy truth beyond approved GameOS boundaries.


# ============================================================
# 12. SAVE CONTINUITY
# ============================================================

RPG Runtime must support formal save continuity.

A save candidate may include:

- area state
- quest progression
- npc state
- inventory state
- level state
- route state
- relationship state
- approved map state
- approved event state

The runtime must make clear:
- what is saveable
- what is derived
- what is transient
- what must never become authoritative from client without adjudication

Save continuity must remain explicit.


# ============================================================
# 13. PERSONA INTEGRATION BOUNDARY
# ============================================================

RPG Runtime may integrate with PersonaOS only through approved bindings.

Allowed Persona-facing effects:
- companion presentation
- dialogue style shaping
- approved cast reaction style
- relationship-linked presentation shaping

Prohibited:
- direct Persona truth mutation
- unrestricted trust/state access
- unrestricted memory access
- unrestricted growth mutation

Persona truth remains external truth.

RPG Runtime may consume approved Persona projections only.


# ============================================================
# 14. PREVIEW SANDBOX
# ============================================================

Preview must be sandboxed.

Preview may simulate:
- area traversal
- event execution
- quest progression
- battle preset flow
- reward preview
- save candidate generation

Preview must not perform:
- production entitlement mutation
- production achievement mutation
- production ranking mutation
- production purchase mutation
- production Persona growth mutation

Preview state must be discardable.


# ============================================================
# 15. EXPORT MODEL
# ============================================================

RPG export must freeze:

- runtime family
- ruleset profile
- area graph
- map package bindings
- quest chains
- event graph
- battle presets
- inventory rules
- reward rules
- level/growth rules
- approved Persona projection references

An RPG export package must be runtime-unambiguous.

One export package may bind to only one active RPG runtime profile.


# ============================================================
# 16. VALIDATION RULES
# ============================================================

RPG Runtime must support three validation levels.

## Editing validation
- missing quest target
- missing event target
- missing npc reference
- missing battle preset
- invalid reward reference
- invalid area transition

## Export validation
- broken area graph
- broken quest chain
- unresolved event reference
- unresolved battle preset
- invalid inventory rule
- missing required assets
- unresolved shop definition

## Publish validation
- prohibited Persona misuse
- unresolved release/runtime metadata
- disallowed monetization linkage
- unresolved age/content flags

Blocking errors must prevent export.


# ============================================================
# 17. SYNC INTERACTION MODEL
# ============================================================

RPG Runtime may produce submit-worthy candidates only through approved boundaries.

Possible candidates:
- save snapshot candidate
- quest completion candidate
- battle completion candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate

Client-side RPG outcomes remain untrusted
until GameOS sync adjudication accepts them.

RPG Runtime must not directly finalize:
- platform achievement truth
- platform ranking truth
- entitlement truth
- commerce truth


# ============================================================
# 18. TEMPLATE COMPATIBILITY
# ============================================================

RPG Runtime must support template-driven creation.

Required supported template families:
- village to boss RPG
- quest RPG
- dungeon RPG
- companion RPG
- relationship RPG

Each template must declare:
- required area blocks
- required quest structures
- required npc structures
- required battle presets
- required reward definitions
- required asset families

RPG Runtime must expose editable zones safely
to Builder.


# ============================================================
# 19. CUSTOMIZATION RULE
# ============================================================

Allowed customization:
- area expansion
- quest expansion
- npc dialogue replacement
- battle preset tuning
- reward tuning
- progression tuning
- UI skin replacement
- approved Persona projection assignment

Prohibited customization:
- arbitrary execution code injection
- unrestricted state mutation
- hidden non-declarative progression logic
- unrestricted economy mutation

Advanced override is allowed only
through runtime-approved override zones.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

The RPG Runtime is an official GameOS runtime family.

It defines how RPG-like games execute safely and predictably
inside GameOS.

Core summary:

- areas are primary world progression units
- events and quests are declarative
- battles are preset-driven
- inventory and rewards are explicit
- level and growth rules are explicit
- preview is sandboxed
- export is runtime-frozen
- Persona is projection-only
