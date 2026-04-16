


============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/000_GAME_OS_INDEX.md
============================================================

# ============================================================
# GAME OS INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: root
document_type: index
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ROOT DOCUMENTS
# ============================================================

- 000_GAME_OS_INDEX.md
- 000_GAME_OS_OVERVIEW.md

# ============================================================
# 2. CONSTITUTION
# ============================================================

- 010.constitution/010000_GAME_OS_CONSTITUTION.md

# ============================================================
# 3. ARCHITECTURE
# ============================================================

## 020.architecture/110.persona-integration
- 0201100_GAME_OS_PERSONA_INTEGRATION_ARCHITECTURE.md

## 020.architecture/111.npc-persona
- 0201110_GAME_OS_NPC_PERSONA_ARCHITECTURE.md

## 020.architecture/112.gambling-runtime
- 0201120_GAME_OS_GAMBLING_RUNTIME_ARCHITECTURE.md

# ============================================================
# 4. MODEL
# ============================================================

## 030.model/110.player
- 0301100_GAME_OS_PLAYER_MODEL.md
- 0301101_GAME_PLAYER_PROFILE_MODEL.md

## 030.model/111.persona-linkage
- 0301110_GAME_PERSONA_CHARACTER_BINDING_MODEL.md

## 030.model/112.persona-state-and-reflection
- 0301120_GAME_PERSONA_STATE_MODEL.md
- 0301121_GAME_PERSONA_RELATION_MODEL.md
- 0301122_GAME_PERSONA_MEMORY_MARKER_MODEL.md
- 0301123_PERSONA_IMPACT_EVENT_MODEL.md
- 0301124_PERSONA_REFLECTION_CANDIDATE_MODEL.md
- 0301125_PERSONA_REFLECTION_DECISION_MODEL.md
- 0301126_PERSONA_REFLECTION_SYNC_RESULT_MODEL.md

## 030.model/113.gambling
- 0301130_GAMBLING_WAGER_MODEL.md
- 0301131_GAMBLING_ELIGIBILITY_RESULT_MODEL.md
- 0301132_GAME_OUTCOME_MODEL.md
- 0301133_GAME_SETTLEMENT_INSTRUCTION_MODEL.md
- 0301134_GAME_SETTLEMENT_RESULT_MODEL.md
- 0301135_GAME_REFUND_MODEL.md
- 0301136_GAME_REVERSAL_MODEL.md
- 0301137_GAMBLING_SAFETY_STATE_MODEL.md

# ============================================================
# 5. RUNTIME
# ============================================================

## 040.runtime/110.persona-enabled-runtime
- 0401100_GAME_OS_PERSONA_ENABLED_RUNTIME_OVERVIEW.md

## 040.runtime/111.gambling-runtime
- 0401110_GAME_OS_GAMBLING_RUNTIME_OVERVIEW.md

# ============================================================
# 6. FLOW
# ============================================================

## 050.flow/110.persona-reflection
- 0501100_GAME_TO_PERSONA_REFLECTION_FLOW.md

## 050.flow/111.gambling-settlement
- 0501110_GAMBLING_WAGER_TO_SETTLEMENT_FLOW.md

# ============================================================
# 7. POLICY
# ============================================================

## 080.policy/110.persona-reflection
- 0801100_GAME_OS_PERSONA_REFLECTION_POLICY.md

## 080.policy/111.national-currency-gambling
- 0801110_GAME_OS_NATIONAL_CURRENCY_WAGER_POLICY.md

# ============================================================
# 8. META
# ============================================================

- 900.meta/placement-plan/900000_GAME_OS_CANONICAL_PLACEMENT_PLAN.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/000_GAME_OS_OVERVIEW.md
============================================================

# ============================================================
# GAME OS OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: root
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FORMAL PURPOSE
# ============================================================

GameOS is the official game platform inside Civilization.
It supports multiple genres, multiple titles, Persona-enabled gameplay,
NPC Persona usage, game-to-Persona meaning reflection, and
high-control gambling experiences using national currency.

# ============================================================
# 2. OFFICIAL GENRE FAMILIES
# ============================================================

GameOS officially supports the following genre families:

- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

Action Game includes:
- Side-Scrolling Action
- Survival Action

Adventure Game includes:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression

2D Fighting Game is treated as a rivalry-heavy Persona-capable battle genre.

Survival Action is not limited to horror and may include broader survival-oriented gameplay.

# ============================================================
# 3. CORE PRINCIPLES
# ============================================================

- player is the participation subject
- Persona usage is optional
- NPCs may use Persona
- game truth and persona truth are separated
- local game state and canonical Persona state are separated
- gambling using national currency is a high-control domain
- auditability and safety are mandatory
- multilingual support is a formal design premise
- multi-currency support is a formal design premise
- multi-device support is a formal design premise

# ============================================================
# 4. MULTILINGUAL / MULTI-CURRENCY / MULTI-DEVICE PREMISE
# ============================================================

GameOS is formally designed with multilingual support, multi-currency support,
and multi-device support as first-class design premises.

Multilingual support applies to:
- UI text
- explanations
- notifications
- display labels
- user-facing messages
- report and document display text

Multi-currency support applies to:
- prices
- wager-related monetary display
- billing-like values if applicable
- settlement-related values
- aggregate monetary display
- converted user-facing monetary display

Multi-device support applies to:
- iPhone
- Android
- PC
- tablet devices

GameOS must avoid hard-wiring:
- a single language
- a single currency structure
- a single device form factor

# ============================================================
# 5. MAJOR DOMAINS
# ============================================================

- constitution
- persona integration architecture
- npc persona architecture
- gambling runtime architecture
- player models
- persona state / relation / reflection models
- gambling wager / eligibility / outcome / settlement models
- reflection policy
- national currency wager policy




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/010.constitution/010000_GAME_OS_CONSTITUTION.md
============================================================

# ============================================================
# GAME OS CONSTITUTION
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: constitution
document_type: constitution
owner: Boss
prepared_by: Zero

constitutional_principles:
- player is the participation subject
- Persona usage is optional
- NPCs may use Persona
- game truth, persona truth, and wallet truth must be separated
- direct overwrite from GameOS to PersonaOS is forbidden
- gambling with national currency is a high-control domain
- auditability and safety are mandatory
- multilingual support is a formal design premise
- multi-currency support is a formal design premise
- multi-device support is a formal design premise

constitutional_notes:
- user-facing text must be managed in a multilingual-capable structure
- monetary values must be handled as currency-aware structures, not bare amount only
- display conversions and source monetary truth must remain separated
- GameOS must be designed for iPhone, Android, PC, and tablet support
- interface and runtime assumptions must not be fixed to one device class only




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/000_ARCHITECTURE_INDEX.md
============================================================

# ============================================================
# GAME OS ARCHITECTURE INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
document_type: index
owner: Boss
prepared_by: Zero

subdomains:
- 110.persona-integration
- 111.npc-persona
- 112.gambling-runtime

documents:
- 110.persona-integration/0201100_GAME_OS_PERSONA_INTEGRATION_ARCHITECTURE.md
- 111.npc-persona/0201110_GAME_OS_NPC_PERSONA_ARCHITECTURE.md
- 112.gambling-runtime/0201120_GAME_OS_GAMBLING_RUNTIME_ARCHITECTURE.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/000_ARCHITECTURE_OVERVIEW.md
============================================================

# ============================================================
# GAME OS ARCHITECTURE OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
document_type: overview
owner: Boss
prepared_by: Zero

summary:
GameOS architecture is organized around three major domains:
Persona integration, NPC Persona architecture, and gambling runtime architecture.

principles:
- player and Persona are separated
- NPC Persona is supported
- game-local state and canonical truth are separated
- gambling runtime is treated as a high-control domain




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/040.persona/0200008_PERSONA_GAME_INTEGRATION_ARCHITECTURE.md
============================================================

# ============================================================
# PERSONA GAME INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical integration architecture
between GameOS and PersonaOS.

direction_a:
GameOS sends growth events or growth requests to PersonaOS.

direction_b:
PersonaOS sends usage permission, access state, release validity,
binding state, and trust-related synchronization results to GameOS.

principles:
- Persona truth belongs to PersonaOS
- Game truth belongs to GameOS
- synchronization must use explicit contracts
- no direct cross-os truth overwrite




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/040.persona/0200009_PERSONA_GAME_USAGE_BOUNDARY_ARCHITECTURE.md
============================================================

# ============================================================
# PERSONA GAME USAGE BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the boundary of Persona usage inside GameOS.

allowed:
- character presentation
- NPC personality selection
- dialogue style selection
- in-game assistant enablement
- event reaction style

not_allowed:
- direct overwrite of game primary progression truth by PersonaOS
- trust bypass by UI or operator path




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/060.integration/0200010_GAME_SYNC_CONSUMER_ARCHITECTURE.md
============================================================

# ============================================================
# GAME SYNC CONSUMER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS consumes sync events returned from PersonaOS.

consumed_contracts:
- usage permission result
- access state result
- release validity result
- usage binding result
- trust sync result




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/060.integration/0200011_GAME_EVENT_OUTBOX_ARCHITECTURE.md
============================================================

# ============================================================
# GAME EVENT OUTBOX ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical outbox architecture for GameOS outbound Persona sync events.

outbox_events:
- game_to_persona_growth_request
- game_to_persona_growth_event
- game_to_persona_context_sync_request




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/060.integration/0200012_GAME_TO_PERSONA_GROWTH_SYNC_ARCHITECTURE.md
============================================================

# ============================================================
# GAME TO PERSONA GROWTH SYNC ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS-originated growth triggers are synchronized to PersonaOS.

growth_sources:
- quest completion milestone
- relationship progression milestone
- play continuity milestone
- achievement milestone
- interaction depth milestone




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/110.persona-integration/0201100_GAME_OS_PERSONA_INTEGRATION_ARCHITECTURE.md
============================================================

# ============================================================
# GAME OS PERSONA INTEGRATION ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: persona-integration
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines how GameOS uses Persona without making Persona mandatory.
GameOS accepts normal human players, Persona-bound players, hybrid players,
and NPCs that optionally use Persona.

# ============================================================
# 2. CORE STRUCTURE
# ============================================================

GameOS Persona integration is organized into:
- player side Persona usage
- NPC side Persona usage
- game-local Persona state
- relation and memory structures
- impact extraction
- reflection boundary to PersonaOS

# ============================================================
# 3. BOUNDARY PRINCIPLES
# ============================================================

- player is the participation subject
- Persona is optional
- NPCs may use Persona
- game-local Persona state is not PersonaOS canonical state
- GameOS must never directly overwrite PersonaOS canonical truth
- reflection must be event-driven and auditable

# ============================================================
# 4. PLAYER SIDE
# ============================================================

Player-side Persona usage supports:
- visual presentation
- conversation style
- optional gameplay identity expression
- title-scoped Persona usage
- session-scoped Persona usage

However, result ownership, participation truth, ranking ownership,
and gambling ownership remain on player.

# ============================================================
# 5. NPC SIDE
# ============================================================

NPC-side Persona usage supports:
- romance targets
- battle opponents
- rivals
- companions
- navigators
- service characters

NPC Persona depth may vary from display-only to canonical-linked.

# ============================================================
# 6. LOCAL TRUTH
# ============================================================

GameOS may store:
- affection, trust, rivalry, support affinity
- local memory markers
- title-local relation summaries
- route-adjacent values
- battle tendency summaries

These are local truth and must remain separate from PersonaOS canonical truth.

# ============================================================
# 7. REFLECTION BOUNDARY
# ============================================================

The reflection path is:

- gameplay interaction
- local state update
- relation / memory marker update
- impact extraction
- reflection candidate generation
- decision and sync tracking

Only transformed, meaningful, continuous values may cross the boundary.

# ============================================================
# 8. CONCLUSION
# ============================================================

This architecture allows GameOS to offer rich Persona-enabled gameplay while
preserving strong separation between gameplay truth and Persona canonical truth.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/111.npc-persona/0201110_GAME_OS_NPC_PERSONA_ARCHITECTURE.md
============================================================

# ============================================================
# GAME OS NPC PERSONA ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: npc-persona
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines how NPCs use Persona in GameOS without collapsing
game character truth into PersonaOS canonical truth.

# ============================================================
# 2. NPC PERSONA TYPES
# ============================================================

GameOS supports:
- display NPC Persona
- interactive NPC Persona
- persistent NPC Persona
- bound canonical NPC Persona

# ============================================================
# 3. ROLE TYPES
# ============================================================

NPC Persona may appear as:
- romance target
- battle opponent
- rival
- companion
- navigator
- merchant / receptionist
- quest giver
- world resident
- gambling dealer / host

# ============================================================
# 4. LINKAGE DEPTH
# ============================================================

NPC Persona linkage depth may be:
- display-only
- interactive
- relation-capable
- persistent
- canonical-linked

The deeper the linkage, the stronger the audit and reflection requirements.

# ============================================================
# 5. TITLE-LOCAL VS CANONICAL
# ============================================================

GameOS must distinguish:
- title-local NPC usage
- cross-title continuity candidates
- template-based Persona usage
- soft canonical linkage
- hard canonical linkage

Title-local route or battle values must never directly become canonical Persona truth.

# ============================================================
# 6. RELATION AND MEMORY
# ============================================================

NPC Persona may participate in:
- romance relations
- rivalry relations
- support relations
- familiarity relations
- memory marker generation
- impact extraction

This enables NPCs to behave like meaningful ongoing characters rather than static labels.

# ============================================================
# 7. REFLECTION PRINCIPLE
# ============================================================

NPC Persona changes may become reflection candidates only after:
- state summarization
- relation interpretation
- memory significance marking
- impact extraction
- transformed proposal generation

# ============================================================
# 8. CONCLUSION
# ============================================================

NPC Persona architecture lets GameOS build deep relationship gameplay while
keeping canonical Persona protection intact.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/112.gambling-runtime/0201120_GAME_OS_GAMBLING_RUNTIME_ARCHITECTURE.md
============================================================

# ============================================================
# GAME OS GAMBLING RUNTIME ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: architecture
domain: gambling-runtime
document_type: architecture
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This architecture defines national-currency gambling as a high-control runtime family.

# ============================================================
# 2. CORE BOUNDARIES
# ============================================================

GameOS gambling runtime separates:
- eligibility truth
- wager truth
- outcome truth
- settlement instruction
- settlement result
- refund and reversal
- wallet canonical truth
- safety and dispute control

# ============================================================
# 3. GENRE POSITION
# ============================================================

Gambling runtime is a special high-control runtime family and is not the same as
ordinary Action Game, Adventure Game, 2D Fighting Game, RPG, Puzzle, Strategy,
Visual Novel, or Dating Simulation runtime.

It may coexist with those genre families as a separate controlled runtime path,
but it is governed by stronger safety, audit, settlement, and dispute rules.

# ============================================================
# 4. GAMBLING LIFECYCLE
# ============================================================

- wager intent
- eligibility evaluation
- wallet lock request
- active wager
- gameplay
- provisional outcome
- finalized outcome
- settlement instruction
- settlement result
- refund / reversal / dispute path if needed

# ============================================================
# 5. MANDATORY CONTROLS
# ============================================================

- eligibility gate
- lock confirmation before active wager
- anomaly hold support
- dispute path
- strong auditability
- self-exclusion and cooldown handling
- player protection controls
- idempotent settlement instruction

# ============================================================
# 6. PERSONA LIMITS
# ============================================================

Persona may be used for presentation, dealer roles, host roles, and guidance,
but must not replace gambling eligibility, wallet truth, or safety truth.

# ============================================================
# 7. CONCLUSION
# ============================================================

Gambling runtime is not ordinary gameplay runtime with money attached.
It is a separate high-control runtime that integrates with finance, safety,
audit, and dispute handling.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202640_GAME_RUNTIME_OVERVIEW_ARCHITECTURE.md
============================================================

# ============================================================
# GAME RUNTIME OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Runtime Layer of GameOS.

The Runtime Layer is a core subsystem of GameOS.
It is not an external tool.
It is an internal OS capability that defines
how builder-authored games behave at execution time.

The Runtime Layer exists above GameOS Core
and below Game Builder.

GameOS Core manages:
- title
- release
- package
- distribution
- entitlement
- device delivery
- sync
- ranking
- achievement
- marketplace linkage

GameOS Runtime Layer manages:
- genre runtime behavior
- ruleset execution semantics
- progression semantics
- branch semantics
- battle semantics
- score semantics
- turn semantics
- stage semantics
- map semantics
- runtime-safe export targets

Game Builder manages:
- project editing
- template selection
- asset binding
- preview
- validation
- export
- submission

Builder depends on Runtime.
Runtime does not depend on Builder.


# ============================================================
# 1. POSITION IN GAMEOS
# ============================================================

dependency_order:
GameOS Core
-> Runtime Layer
-> Builder Layer

Runtime must be treated as an internal OS layer.

Runtime is responsible for defining
what kinds of games can exist safely in GameOS.

Builder is responsible for allowing creators
to author games that conform to Runtime rules.


# ============================================================
# 2. RUNTIME LAYER GOALS
# ============================================================

The Runtime Layer must provide:

1. predictable behavior
2. reusable genre families
3. validation-friendly structure
4. template compatibility
5. export safety
6. sync-safe execution semantics
7. publish-safe behavior boundaries

The Runtime Layer must not depend on
arbitrary handwritten runtime logic from creators.

Primary design principle:

declarative runtime first  
custom override second  
unsafe freedom never


# ============================================================
# 3. OFFICIAL RUNTIME FAMILIES
# ============================================================

Initial official runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

Future runtime families may be added,
but each must be explicitly approved by GameOS.

Each runtime family must define:

- progression model
- state model
- event model
- validation model
- export model
- preview model
- sync interaction model


# ============================================================
# 4. RUNTIME FAMILY RESPONSIBILITIES
# ============================================================

## 4.1 VISUAL NOVEL / DATING RUNTIME

Must define:
- scene progression
- dialogue execution
- branch condition execution
- affection / relationship progression
- ending resolution
- sandbox-safe preview behavior

## 4.2 RPG RUNTIME

Must define:
- map and area progression
- quest execution
- npc event progression
- battle resolution model
- inventory and reward behavior
- save continuity model

## 4.3 PUZZLE RUNTIME

Must define:
- stage lifecycle
- clear/fail conditions
- score calculation
- retry behavior
- reward and ranking interaction
- deterministic validation boundaries

## 4.4 STRATEGY RUNTIME

Must define:
- turn lifecycle
- unit action boundaries
- resource progression
- building state progression
- victory / defeat conditions
- map state continuity


# ============================================================
# 5. SHARED RUNTIME COMPONENTS
# ============================================================

All runtime families must bind to shared GameOS runtime components.

Shared components include:

- ruleset profile
- runtime profile
- validation rule set
- preview safety mode
- export compatibility profile
- sync adjudication compatibility
- entitlement continuity compatibility

No runtime family may bypass these shared components.


# ============================================================
# 6. RUNTIME EXECUTION PRINCIPLE
# ============================================================

GameOS Runtime is declarative.

Creators do not directly define executable engine code
as the primary model.

Creators define:

- content
- ruleset parameters
- asset bindings
- progression structures
- allowed override values

GameOS Runtime interprets those declarations.

This guarantees:

- consistent validation
- consistent publish pipeline
- consistent sync handling
- reduced exploit surface
- reduced runtime fragmentation


# ============================================================
# 7. RUNTIME AND BUILDER RELATION
# ============================================================

Builder must consume Runtime definitions.

Builder must not invent behavior outside Runtime.

Builder responsibilities:
- expose runtime-approved edit zones
- expose template-approved edit zones
- prevent invalid structural mutation
- preview using runtime sandbox
- export runtime-compatible package

Runtime responsibilities:
- define allowed structures
- define execution semantics
- define required metadata
- define allowed overrides
- define validation boundaries

Builder is an authoring layer.
Runtime is an execution-definition layer.


# ============================================================
# 8. RUNTIME AND PERSONA RELATION
# ============================================================

Runtime may interact with PersonaOS through approved bindings only.

Allowed Persona-facing usage:
- approved character presentation
- approved dialogue style shaping
- approved reaction profile shaping
- approved identity-linked cast behavior

Prohibited:
- Persona truth overwrite
- unrestricted trust bypass
- unrestricted growth mutation
- unrestricted private memory use

Runtime must treat Persona as external truth.

Persona truth belongs to PersonaOS.
Game execution truth belongs to GameOS.


# ============================================================
# 9. RUNTIME AND SYNC RELATION
# ============================================================

Runtime must define what parts of execution
are allowed to become submit-worthy sync records.

Examples:
- save snapshot candidate
- ranking candidate
- achievement candidate
- replay candidate
- telemetry candidate

Runtime must never directly mark client-side output
as final truth.

All externally submitted runtime outcomes remain untrusted
until GameOS sync adjudication accepts them.


# ============================================================
# 10. RUNTIME AND EXPORT RELATION
# ============================================================

Runtime must define export-safe structure.

An export package must always resolve to:

- one runtime family
- one runtime profile
- one ruleset profile
- one compatibility profile
- one required asset family set

No export package may remain runtime-ambiguous.

No publishable package may bind to multiple active
runtime families at once.


# ============================================================
# 11. RUNTIME SAFETY RULE
# ============================================================

Runtime must remain safe for:

- preview
- export
- validation
- publish
- sync
- entitlement continuity
- title transfer continuity

Unsafe runtime freedom is prohibited.

Examples of prohibited runtime behavior:
- arbitrary code execution
- unrestricted filesystem behavior
- unrestricted network behavior
- unrestricted economy mutation
- unrestricted ranking mutation
- unrestricted entitlement mutation
- unrestricted Persona mutation


# ============================================================
# 12. RUNTIME CUSTOMIZATION RULE
# ============================================================

Customization is allowed only through:

- runtime-approved parameters
- runtime-approved templates
- runtime-approved ruleset overrides
- runtime-approved asset family bindings

Customization is not allowed through:
- arbitrary engine mutation
- arbitrary schema mutation
- arbitrary lifecycle mutation

This rule keeps Builder approachable
and keeps platform behavior stable.


# ============================================================
# 13. RUNTIME VALIDATION PRINCIPLE
# ============================================================

Every runtime family must support three validation levels:

1. editing validation
2. export validation
3. publish validation

Runtime must declare:
- blocking conditions
- warning conditions
- compatibility conditions

A Builder project cannot be exported
unless runtime validation passes.


# ============================================================
# 14. RUNTIME PUBLISH PRINCIPLE
# ============================================================

Publish is not a Builder-side decision.
Publish is a GameOS lifecycle decision.

Runtime contributes:
- execution compatibility
- metadata completeness
- export compatibility
- validation compatibility

GameOS publish pipeline decides:
- release acceptance
- moderation outcome
- rollout activation


# ============================================================
# 15. OFFICIAL INITIAL SCOPE
# ============================================================

Initial runtime rollout should focus on:

- VN / dating
- RPG
- Puzzle
- Strategy

Reason:
These families are template-friendly,
validation-friendly,
and strong matches for Builder-first creation.

Action-heavy unrestricted runtime families
should not be first priority.


# ============================================================
# 16. FINAL ARCHITECTURAL RULE
# ============================================================

GameOS Runtime is part of GameOS itself.

It is the official execution-definition layer
that sits between GameOS Core and Game Builder.

Core summary:

GameOS Core owns platform truth.
Runtime owns game behavior truth.
Builder owns authoring flow.
PersonaOS owns Persona truth.

This separation is mandatory.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202641_GAME_VN_RUNTIME_ARCHITECTURE.md
============================================================

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




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202642_GAME_RPG_RUNTIME_ARCHITECTURE.md
============================================================

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




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202643_GAME_PUZZLE_RUNTIME_ARCHITECTURE.md
============================================================

# ============================================================
# GAME PUZZLE RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Puzzle runtime of GameOS.

This runtime family covers:

- stage-clear puzzle
- score attack puzzle
- time-limited puzzle
- combo puzzle
- collection puzzle
- light logic puzzle

This runtime is part of GameOS Runtime Layer.

It defines execution semantics for:
- stage lifecycle
- clear conditions
- fail conditions
- score calculation
- retry behavior
- reward interaction
- ranking interaction
- preview-safe sandbox execution


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The Puzzle Runtime is a declarative stage runtime.

Creators do not define arbitrary engine code.
Creators define:

- stage sequence
- stage rule set
- clear conditions
- fail conditions
- score rules
- retry rules
- reward rules
- ranking candidate rules
- asset bindings

The runtime interprets those declarations.

The Puzzle Runtime must support:

- beginner template puzzle creation
- standard multi-stage puzzle creation
- advanced but declarative scoring variation

without losing predictability.


# ============================================================
# 2. CORE EXECUTION OBJECTS
# ============================================================

The Puzzle Runtime must operate on the following execution objects:

- stage
- stage rule
- clear condition
- fail condition
- score rule
- retry rule
- reward rule
- ranking candidate state
- save candidate state

Minimum runtime truth objects:

- stage progression state
- score candidate state
- clear/fail resolution state
- retry resolution state


# ============================================================
# 3. STAGE MODEL
# ============================================================

A stage is the primary execution unit.

Each stage must define:

- stage_id
- stage_type
- entry_conditions
- stage_rule_set
- clear_conditions
- fail_conditions
- reward_rule
- next_stage_resolution_rule

stage_type examples:
- normal
- timed
- score_attack
- collection
- boss_puzzle
- tutorial
- challenge

A stage must remain self-descriptive.

A stage may not rely on hidden runtime mutation
outside approved Puzzle Runtime semantics.


# ============================================================
# 4. CLEAR CONDITION MODEL
# ============================================================

Clear conditions must be declarative.

Allowed clear condition categories:

- reach_score_threshold
- complete_pattern
- collect_target_count
- survive_until_timer_end
- remove_target_objects
- satisfy_board_state
- solve_logic_target

Each clear condition must define:

- condition_id
- condition_type
- threshold_or_target
- evaluation_timing
- combination_rule

Clear resolution must always be explainable
through explicit state.


# ============================================================
# 5. FAIL CONDITION MODEL
# ============================================================

Fail conditions must be declarative.

Allowed fail condition categories:

- timer_expired
- move_limit_exceeded
- board_locked
- invalid_state_reached
- survival_condition_failed
- objective_unreachable

Each fail condition must define:

- condition_id
- condition_type
- threshold_or_target
- evaluation_timing
- fail_priority_rule

Fail resolution must remain deterministic.


# ============================================================
# 6. SCORE MODEL
# ============================================================

Score calculation must be explicit.

Allowed score contributors:

- base_clear_score
- combo_score
- speed_bonus
- move_bonus
- collection_bonus
- chain_bonus
- no_fail_bonus
- hidden_condition_bonus

Each score rule must define:

- score_rule_id
- contributor_set
- formula_profile
- cap_rule
- tie_rule

The runtime must not allow hidden score mutation.

All ranking-relevant score output must be reproducible
from explicit state and telemetry candidates.


# ============================================================
# 7. RETRY MODEL
# ============================================================

Retry behavior must be formal.

Retry categories may include:

- immediate_retry
- limited_retry
- checkpoint_retry
- stage_restart_only
- no_retry

Each retry rule must define:

- retry_rule_id
- retry_mode
- retry_limit
- retry_cost_rule
- restore_state_rule

The runtime must make retry impact explicit.

Retry must not silently mutate production reward truth.


# ============================================================
# 8. STAGE PROGRESSION
# ============================================================

Puzzle Runtime must support explicit stage progression.

Progression may include:

- linear stage unlock
- star-based unlock
- score-based unlock
- collection-based unlock
- challenge unlock
- branch unlock

Unlock conditions must be explicit.

No hidden progression mutation is allowed.

Progression state must remain replayable
from accepted runtime outcomes.


# ============================================================
# 9. REWARD MODEL
# ============================================================

Rewards must be declarative.

Reward categories may include:

- stage clear reward
- perfect clear reward
- score threshold reward
- collection reward
- progression unlock reward
- cosmetic unlock reward

Each reward rule must define:
- reward source
- reward conditions
- reward payload
- reward eligibility rule

The runtime must keep reward generation explicit
for validation and anti-exploit purposes.


# ============================================================
# 10. RANKING INTERACTION
# ============================================================

Puzzle Runtime may produce ranking candidates.

Ranking candidates may include:

- high_score_candidate
- fastest_clear_candidate
- least_moves_candidate
- challenge_clear_candidate

Runtime must define:
- what values are candidate values
- what tie rules exist
- what conditions invalidate candidate submission

Client-side ranking results remain untrusted
until GameOS sync adjudication accepts them.


# ============================================================
# 11. SAVE CONTINUITY
# ============================================================

Puzzle Runtime may support formal save continuity.

Saveable categories may include:

- stage unlock state
- best score state
- reward unlock state
- challenge completion state
- collection progression state

Unsuitable direct-authority categories may include:
- raw in-stage transient board state
- unverified client perfect clear outcome
- unverified ranking finality

The runtime must make clear:
- what is saveable
- what is derived
- what is transient


# ============================================================
# 12. PREVIEW SANDBOX
# ============================================================

Preview must be sandboxed.

Preview may simulate:
- stage execution
- score accumulation
- clear/fail resolution
- retry behavior
- unlock behavior
- reward preview

Preview must not perform:
- production ranking mutation
- production achievement mutation
- production commerce mutation
- production entitlement mutation

Preview state must be discardable.


# ============================================================
# 13. EXPORT MODEL
# ============================================================

Puzzle export must freeze:

- runtime family
- ruleset profile
- stage sequence
- clear conditions
- fail conditions
- score rules
- retry rules
- reward rules
- ranking candidate rules
- asset bindings

A Puzzle export package must be runtime-unambiguous.

One export package may bind to only one active Puzzle runtime profile.


# ============================================================
# 14. VALIDATION RULES
# ============================================================

Puzzle Runtime must support three validation levels.

## Editing validation
- missing clear condition
- missing fail condition
- invalid score reference
- invalid reward reference
- invalid next stage target

## Export validation
- broken stage sequence
- unresolved condition reference
- conflicting clear/fail rules
- impossible unlock structure
- missing required assets
- invalid retry configuration

## Publish validation
- unresolved runtime metadata
- disallowed monetization linkage
- unresolved age/content flags
- invalid ranking candidate configuration

Blocking errors must prevent export.


# ============================================================
# 15. SYNC INTERACTION MODEL
# ============================================================

Puzzle Runtime may produce submit-worthy candidates only through approved boundaries.

Possible candidates:
- save snapshot candidate
- stage clear candidate
- score candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate

Client-side Puzzle outcomes remain untrusted
until GameOS sync adjudication accepts them.

Puzzle Runtime must not directly finalize:
- platform ranking truth
- platform achievement truth
- entitlement truth
- commerce truth


# ============================================================
# 16. TEMPLATE COMPATIBILITY
# ============================================================

Puzzle Runtime must support template-driven creation.

Required supported template families:
- stage clear puzzle
- score attack puzzle
- timed puzzle
- combo puzzle
- collection puzzle

Each template must declare:
- required stage blocks
- required clear conditions
- required fail conditions
- required score rules
- required reward definitions
- required asset families

Puzzle Runtime must expose editable zones safely
to Builder.


# ============================================================
# 17. CUSTOMIZATION RULE
# ============================================================

Allowed customization:
- stage expansion
- clear/fail tuning
- score formula tuning
- retry tuning
- reward tuning
- UI skin replacement
- challenge structure expansion

Prohibited customization:
- arbitrary execution code injection
- unrestricted state mutation
- hidden non-declarative scoring logic
- unrestricted ranking finalization

Advanced override is allowed only
through runtime-approved override zones.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

The Puzzle Runtime is an official GameOS runtime family.

It defines how puzzle-like games execute safely and predictably
inside GameOS.

Core summary:

- stages are primary execution units
- clear/fail conditions are declarative
- score rules are explicit
- retry behavior is formal
- reward and ranking candidates are explicit
- preview is sandboxed
- export is runtime-frozen




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202644_GAME_STRATEGY_RUNTIME_ARCHITECTURE.md
============================================================

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




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/264.runtime-layer/0202645_GAME_RULESET_RUNTIME_ARCHITECTURE.md
============================================================

# ============================================================
# GAME RULESET RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the shared ruleset runtime architecture of GameOS.

This architecture defines the lower execution layer
shared by all approved runtime families.

It applies to:
- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

The ruleset runtime is responsible for:

- parameterized execution semantics
- explicit state transition semantics
- event trigger semantics
- progression rule semantics
- reward rule semantics
- saveability boundary semantics
- preview-safe deterministic interpretation

It is a mandatory internal subsystem of GameOS Runtime Layer.


# ============================================================
# 1. ROLE OF RULESET RUNTIME
# ============================================================

The ruleset runtime is the shared interpreter layer
used by all GameOS runtime families.

Runtime families define:
- family-specific structures
- family-specific allowed objects
- family-specific rule surfaces

Ruleset runtime defines:
- how declared rules are interpreted
- how rule evaluation is sequenced
- how state mutation is bounded
- how deterministic execution is preserved

Ruleset runtime must not execute arbitrary creator code.

Primary principle:

declared rule
-> interpreted by ruleset runtime
-> bounded mutation
-> explicit result


# ============================================================
# 2. CORE RESPONSIBILITIES
# ============================================================

The ruleset runtime must provide:

- rule resolution
- parameter resolution
- condition evaluation
- action resolution
- mutation resolution
- progression resolution
- reward candidate resolution
- save candidate resolution
- preview-safe dry-run resolution

These responsibilities are mandatory.


# ============================================================
# 3. RULESET PROFILE MODEL
# ============================================================

A ruleset profile is the formal declaration of
shared execution semantics for a game package.

A ruleset profile must define:

- ruleset_profile_code
- runtime_family_code
- supported_rule_categories
- supported_variable_categories
- supported_mutation_categories
- supported_reward_categories
- supported_candidate_categories
- evaluation_order
- override_allowance_summary

A Builder project must bind to exactly one
active ruleset profile at export time.


# ============================================================
# 4. RULE CATEGORIES
# ============================================================

The ruleset runtime must support explicit rule categories.

Minimum categories:

- condition rule
- progression rule
- unlock rule
- reward rule
- score rule
- retry rule
- turn rule
- route rule
- ending rule
- battle result rule
- shop rule
- saveability rule
- preview rule

A runtime family may use only categories
approved for that family.

No hidden rule category is allowed.


# ============================================================
# 5. EVALUATION ORDER
# ============================================================

Every ruleset profile must declare evaluation order.

Minimum evaluation stages:

1. input validity evaluation
2. condition evaluation
3. action eligibility evaluation
4. mutation resolution
5. progression resolution
6. reward candidate resolution
7. save candidate resolution
8. preview/export annotations

This order must remain explicit.

Family-specific variants may extend this order,
but may not bypass it.


# ============================================================
# 6. PARAMETER RESOLUTION
# ============================================================

Ruleset runtime must resolve parameters explicitly.

Parameter sources may include:

- runtime profile defaults
- template defaults
- project overrides
- advanced override zone values
- approved asset metadata
- approved Persona projection metadata

Parameter resolution priority must be explicit.

Recommended order:

1. runtime defaults
2. ruleset defaults
3. template defaults
4. project override
5. advanced override

Unresolvable parameter state must be blocking.


# ============================================================
# 7. CONDITION EVALUATION
# ============================================================

Conditions must be declarative and replayable.

Allowed condition sources:

- explicit variable state
- explicit progression state
- explicit route state
- explicit area/stage/map state
- explicit relationship or affection state
- explicit resource/building/unit state
- explicit prior completion state

Prohibited sources:

- arbitrary hidden engine state
- unrestricted remote mutable state
- unrestricted Persona truth internals
- non-declared ad hoc logic

Condition evaluation must produce:
- true
- false
- invalid
- unresolved

Unresolved condition state must be blocking
for export-ready structures.


# ============================================================
# 8. MUTATION RESOLUTION
# ============================================================

Mutation must be bounded.

Allowed mutation categories:

- variable mutation
- progression mutation
- unlock mutation
- relationship mutation
- route mutation
- inventory candidate mutation
- score candidate mutation
- resource mutation
- building state mutation
- quest state mutation
- stage/area/map continuity mutation

Each mutation must define:

- target domain
- source action
- allowed direction
- cap or threshold if relevant
- persistence rule
- sync candidate eligibility if relevant

No unrestricted mutation is allowed.


# ============================================================
# 9. PROGRESSION RESOLUTION
# ============================================================

Progression is a first-class ruleset concern.

The ruleset runtime must interpret:

- level progression
- route progression
- quest progression
- stage progression
- turn progression
- resource progression
- unlock progression
- ending progression

Progression rules must always be:

- explicit
- bounded
- validation-friendly
- replayable from accepted state


# ============================================================
# 10. REWARD RESOLUTION
# ============================================================

Rewards must be resolved as candidates first.

Reward categories may include:

- item candidate
- currency candidate
- unlock candidate
- cosmetic candidate
- route or ending unlock candidate
- progression candidate

Ruleset runtime may generate reward candidates.

Ruleset runtime must not directly finalize
platform commerce truth or entitlement truth
outside approved platform boundaries.

Reward source must always remain explicit.


# ============================================================
# 11. SAVEABILITY BOUNDARY
# ============================================================

Ruleset runtime must distinguish:

- saveable state
- derived state
- transient state
- prohibited-authority state

Saveable state examples:
- accepted progression
- accepted map/area/stage continuity
- accepted inventory continuity
- accepted route state

Transient state examples:
- in-preview temporary branch
- in-battle transient turn microstate
- unresolved client-only intermediate score state

This distinction is mandatory.


# ============================================================
# 12. PREVIEW RESOLUTION
# ============================================================

Preview uses the same ruleset runtime,
but in sandbox mode.

Sandbox mode must:

- discard production effects
- block production ranking finality
- block production commerce mutation
- block production entitlement mutation
- block production Persona mutation
- mark outputs as preview-only

Preview is a dry-run interpretation mode,
not production execution truth.


# ============================================================
# 13. EXPORT RELATION
# ============================================================

Ruleset runtime must define export-freezable semantics.

Export must freeze:

- runtime family
- ruleset profile
- evaluation order
- allowed mutation categories
- candidate generation categories
- required metadata categories

A package with unresolved ruleset semantics
must not be exportable.


# ============================================================
# 14. SYNC RELATION
# ============================================================

Ruleset runtime must define which outputs are candidate-emitting outputs.

Candidate categories may include:
- save candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- reward candidate
- progression completion candidate

Ruleset runtime must never claim final truth
for these outputs from unadjudicated client execution.

Sync adjudication remains mandatory.


# ============================================================
# 15. PERSONA BOUNDARY
# ============================================================

Ruleset runtime may consume approved Persona projection data only.

Allowed:
- presentation shaping
- dialogue shaping
- reaction shaping
- approved cast metadata

Prohibited:
- Persona truth mutation
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Persona is external truth.
Ruleset runtime is internal game execution truth.


# ============================================================
# 16. BUILDER RELATION
# ============================================================

Builder depends on ruleset runtime for:

- editable zone exposure
- override legality
- validation semantics
- preview behavior
- export metadata completeness

Builder must not invent ruleset behavior.
Builder must only expose approved rule surfaces.


# ============================================================
# 17. FINAL ARCHITECTURAL RULE
# ============================================================

The ruleset runtime is the shared interpreter layer
inside GameOS Runtime Layer.

It is mandatory for all approved runtime families.

Core summary:

- all runtime behavior is declarative
- condition evaluation is explicit
- mutation is bounded
- progression is first-class
- rewards are candidates first
- saveability is explicit
- preview is sandboxed
- sync finality is external to runtime




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202650_GAME_BUILDER_OVERVIEW_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Builder Layer of GameOS.

The Builder Layer is a core subsystem of GameOS.
It is not an external convenience tool.
It is an internal OS capability that allows creators
to author runtime-compliant games for GameOS distribution.

The Builder Layer exists above GameOS Runtime Layer
and below the publish / submission lifecycle.

GameOS Core manages:
- title
- release
- package
- distribution
- entitlement
- device delivery
- sync
- ranking
- achievement
- marketplace linkage

GameOS Runtime Layer manages:
- runtime family behavior
- ruleset semantics
- mutation boundaries
- preview safety
- export contract semantics

GameOS Builder Layer manages:
- template selection
- project authoring
- content block editing
- asset binding
- asset editing
- preview launching
- validation invocation
- export package creation
- submission creation

Builder depends on Runtime.
Runtime does not depend on Builder.


# ============================================================
# 1. POSITION IN GAMEOS
# ============================================================

dependency_order:
GameOS Core
-> Runtime Layer
-> Builder Layer
-> Submission / Publish Flow

Builder must be treated as an internal GameOS layer.

Builder is responsible for turning creator intent
into runtime-compliant project state.

Builder must not define new runtime behavior.
Builder must consume approved runtime surfaces only.


# ============================================================
# 2. BUILDER LAYER GOALS
# ============================================================

The Builder Layer must provide:

1. low-friction authoring
2. template-driven creation
3. structured editing
4. safe customization
5. runtime-compliant preview
6. export-ready project freezing
7. submission-ready handoff

The Builder Layer must prioritize:

- fast first success
- clear state visibility
- low structural error rate
- explicit save and export boundaries
- validation-friendly workflows

Primary design principle:

template first  
structure before freedom  
save is not publish


# ============================================================
# 3. OFFICIAL RESPONSIBILITY OF BUILDER
# ============================================================

Builder is responsible for:

- project creation
- template cloning into project state
- block-based content editing
- allowed-zone editing
- asset binding
- non-Persona material asset editing
- preview session launching
- validation requests
- export package requests
- publish submission requests

Builder is not responsible for:

- final publish approval
- final entitlement issuance
- final commerce truth
- final ranking truth
- final achievement truth
- Persona truth mutation
- seller mutation
- marketplace finality


# ============================================================
# 4. OFFICIAL BUILDER DOMAINS
# ============================================================

The Builder Layer must contain the following domains:

- project domain
- template domain
- editor domain
- asset studio domain
- preview domain
- validation domain
- export domain
- submission domain
- collaboration domain
- autosave / revision domain

These domains must remain explicit.


# ============================================================
# 5. PROJECT AS PRIMARY AUTHORING UNIT
# ============================================================

The Builder Layer uses project as the primary authoring unit.

A project must be the authoritative Builder-side object
for editing and export preparation.

A project must bind explicitly to:

- workspace
- seller through workspace linkage
- game title
- runtime family
- runtime profile
- ruleset profile
- template profile where applicable
- required asset family set

A project must not remain runtime-ambiguous.


# ============================================================
# 6. TEMPLATE-FIRST CREATION RULE
# ============================================================

Builder creation must begin with template selection.

No blank-engine authoring path is required
for initial official Builder capability.

Template-first creation guarantees:

- lower creator burden
- more stable runtime compliance
- lower export failure rate
- lower moderation noise
- stronger publishability

Builder must support:
- beginner templates
- standard templates
- advanced templates

Template cloning must remain explicit.


# ============================================================
# 7. BLOCK-BASED EDITING RULE
# ============================================================

Builder authoring must be block-based.

A block is the minimum structured editing unit.

Examples by runtime family:

VN:
- scene
- dialogue
- choice
- branch
- ending

RPG:
- area
- npc
- quest
- event
- battle
- reward
- shop

Puzzle:
- stage
- clear condition
- fail condition
- score rule
- reward block

Strategy:
- map
- faction
- unit set
- turn rule
- resource rule
- building rule
- victory rule

Builder must not default to arbitrary freeform data mutation.


# ============================================================
# 8. SAVE MODEL
# ============================================================

Builder must distinguish three save layers:

- working state
- autosave snapshot
- official saved revision

Working state:
temporary UI-local authoring state

Autosave snapshot:
recovery-oriented safe persistence

Official saved revision:
author-confirmed revision eligible for export path

Export must not depend only on autosave state.

Official save and autosave must remain distinct.


# ============================================================
# 9. PREVIEW MODEL
# ============================================================

Builder preview must be sandbox-based.

Preview must consume:
- resolved runtime family
- resolved ruleset profile
- project revision
- approved preview contract assumptions

Preview must not:
- finalize production truth
- mutate Persona truth
- mutate entitlement or commerce truth
- bypass sync adjudication boundaries

Builder preview is a runtime-backed simulation surface,
not a production execution surface.


# ============================================================
# 10. VALIDATION MODEL
# ============================================================

Builder must integrate with runtime validation.

Builder must support:
- editing validation
- export validation
- publish validation

Builder responsibilities:
- trigger validation
- display findings
- show blocking/warning/info grouping
- route creators to failing blocks/assets
- prevent illegal export/submit actions

Builder must not reinterpret runtime policy arbitrarily.


# ============================================================
# 11. EXPORT MODEL
# ============================================================

Builder export is an explicit action.

Export must:
- freeze a revision
- construct export package request
- construct runtime export contract request
- bind asset manifest
- bind validation handoff
- generate export lineage references

Export does not equal publish.

Export does not equal final approval.

Export is the promotion of project state
to a package candidate.


# ============================================================
# 12. SUBMISSION MODEL
# ============================================================

Builder submission is an explicit handoff action.

Submission must require:
- export-ready revision
- passed required validation
- workspace linkage
- title linkage
- release target readiness

Submission creates:
- submission request
- validation bundle handoff
- moderation-facing handoff
- publish pipeline entry point

Builder does not directly publish.


# ============================================================
# 13. ASSET STUDIO POSITION
# ============================================================

Asset Studio is part of Builder Layer.

It is responsible for editing non-Persona game material assets.

Examples:
- pixel enemy art
- unit art
- building art
- map props
- icons
- ui material assets

Asset Studio must respect:
- template asset requirements
- runtime family compatibility
- non-Persona boundary rules
- export metadata requirements


# ============================================================
# 14. COLLABORATION MODEL
# ============================================================

Builder collaboration is role-based.

Initial official roles:
- owner
- editor
- reviewer
- publisher

Builder collaboration must support:
- role-aware permissions
- explicit lock strategy
- commentable review surfaces
- publish-role separation

Real-time unrestricted simultaneous mutation
is not required for initial official scope.


# ============================================================
# 15. BUILDER UX PRINCIPLE
# ============================================================

Builder UX must emphasize:

- quick project start
- visible project status
- visible save state
- visible validation state
- visible export state
- visible submission state

Builder must always communicate:
- editing state
- unsaved change state
- autosaved state
- validation failure state
- export readiness state
- submission state


# ============================================================
# 16. PERSONA BOUNDARY
# ============================================================

Builder may consume approved Persona projections only.

Allowed:
- cast projection selection
- dialogue tone shaping options
- approved presentation shaping references

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory mutation
- unrestricted growth mutation

Builder is not a Persona editor.

Persona truth belongs to PersonaOS.


# ============================================================
# 17. FINAL ARCHITECTURAL RULE
# ============================================================

The Builder Layer is an official GameOS layer.

It is the authoring-definition layer
that sits above Runtime and below Submission / Publish Flow.

Core summary:

GameOS Core owns platform truth.
Runtime owns execution-definition truth.
Builder owns authoring truth.
PersonaOS owns Persona truth.

Builder is template-first,
block-based,
save-aware,
preview-safe,
validation-driven,
and submission-oriented.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202651_GAME_BUILDER_SCREEN_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official screen architecture of Game Builder.

This architecture defines the mandatory screen set,
screen responsibilities,
screen-to-screen transitions,
and the visible state model of the Builder Layer.

The screen architecture must support:

- template-first creation
- block-based editing
- explicit save visibility
- explicit validation visibility
- preview-safe testing
- export readiness
- submission readiness


# ============================================================
# 1. SCREEN MODEL OVERVIEW
# ============================================================

The initial official Builder screen set is:

- Builder Home
- Template Gallery
- Project Overview
- Main Editor
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center

These screens are mandatory for initial implementation.

A Builder implementation may add secondary utility screens,
but may not omit these primary screens
without replacing their responsibilities explicitly.


# ============================================================
# 2. GLOBAL SCREEN PRINCIPLES
# ============================================================

All Builder screens must show enough context for the creator to know:

- current workspace
- current project
- current runtime family
- current template
- current save state
- current validation state
- current export state
- current submission state where relevant

Global navigation must remain stable.

The user must not become confused about whether they are:

- editing draft state
- viewing preview
- looking at validation results
- preparing export
- preparing submission

These distinctions must always remain visible.


# ============================================================
# 3. BUILDER HOME
# ============================================================

purpose:
Provide the main entry point to the Builder.

Builder Home responsibilities:
- workspace selection
- project listing
- project filtering
- quick project creation entry
- recent activity visibility
- status overview visibility

Builder Home must show:
- project cards or rows
- project status
- runtime family badge
- template family badge
- last updated timestamp
- last validation state
- export/submission state where applicable

Primary actions:
- create new project
- open existing project
- archive project
- duplicate project where allowed
- filter by runtime/template/status

Builder Home must not serve as the primary detailed editor.


# ============================================================
# 4. TEMPLATE GALLERY
# ============================================================

purpose:
Provide the official template-first project creation screen.

Template Gallery responsibilities:
- template family browsing
- template tier browsing
- template preview
- required asset family visibility
- required block visibility
- quick create from template

Template Gallery must show:
- template card
- runtime family
- tier badge
- complexity level
- supported genre
- sample preview
- required asset summary
- beginner/standard/advanced indication

Primary actions:
- inspect template
- select template
- create project from template

Template Gallery must clearly distinguish:
- visual novel templates
- dating templates
- rpg templates
- puzzle templates
- strategy templates


# ============================================================
# 5. PROJECT OVERVIEW
# ============================================================

purpose:
Provide the operational summary of one project.

Project Overview responsibilities:
- project metadata visibility
- runtime/template binding visibility
- save/revision visibility
- validation state visibility
- export state visibility
- submission state visibility
- collaborator visibility where applicable

Project Overview must show:
- project title
- project code
- workspace code
- title binding
- runtime profile
- ruleset profile
- template profile
- latest official revision
- latest autosave summary
- validation result summary
- export summary
- submission summary

Primary actions:
- open editor
- open asset studio
- open preview
- run validation
- open export/publish center

Project Overview is the operational dashboard for a project.


# ============================================================
# 6. MAIN EDITOR
# ============================================================

purpose:
Provide structured block-based authoring.

Main Editor responsibilities:
- block tree navigation
- block creation
- block editing
- block ordering
- property editing
- structural editing
- save trigger
- dirty state visibility

Main Editor layout must include:

left panel:
- structure tree
- block hierarchy
- block quick add
- outline and search

center panel:
- content editor surface
- form or graph editor depending on block type
- inline validation feedback where applicable

right panel:
- property inspector
- runtime binding info where relevant
- template zone info
- block-level validation hints

top bar:
- current project name
- current block
- save state
- validate action
- preview action
- export shortcut

Main Editor must remain block-based,
not arbitrary schema editing by default.


# ============================================================
# 7. ASSET STUDIO
# ============================================================

purpose:
Provide authoring and binding for non-Persona game material assets.

Asset Studio responsibilities:
- asset library browsing
- asset upload
- asset replacement
- pixel asset editing
- unit asset editing
- building asset editing
- palette and variant handling
- project asset binding

Asset Studio must support:
- template asset defaults
- project override binding
- variant binding
- required asset family visibility

Minimum sub-modes:
- asset browser
- pixel art editor
- unit art editor
- building art editor
- asset binding inspector

Asset Studio must clearly distinguish:
- Builder-owned material assets
- approved Persona projection references
- prohibited Persona truth editing


# ============================================================
# 8. PREVIEW STUDIO
# ============================================================

purpose:
Provide runtime-backed sandbox preview.

Preview Studio responsibilities:
- launch preview session
- display preview mode
- execute preview actions
- show mock state
- show preview-only outputs
- discard preview safely

Preview Studio must support:
- scene preview
- battle preview where relevant
- stage preview where relevant
- map preview where relevant
- full-flow preview where relevant

Preview Studio must visibly indicate:
- sandbox mode
- mock mode flags
- non-authoritative outputs
- discardability of preview state

Preview Studio must never look identical
to confirmed production state screens
without sandbox labeling.


# ============================================================
# 9. VALIDATION CENTER
# ============================================================

purpose:
Provide a formal screen for validation visibility and fixing workflow.

Validation Center responsibilities:
- show validation stage results
- group findings by severity
- group findings by block/asset/scope
- provide fix navigation
- provide re-run validation action

Validation Center must support:
- editing validation results
- export validation results
- publish validation results

Validation Center must show:
- blocking count
- warning count
- info count
- last validation timestamp
- affected scope
- summary
- fix hint where possible

Primary actions:
- run validation
- jump to failing block
- jump to failing asset
- refresh result


# ============================================================
# 10. EXPORT / PUBLISH CENTER
# ============================================================

purpose:
Provide the final Builder-side handoff surface.

Export / Publish Center responsibilities:
- export readiness visibility
- export package request
- export history visibility
- submission readiness visibility
- submission request creation
- submission state visibility

Export / Publish Center must show:
- frozen revision target
- runtime export contract summary
- required asset family resolution summary
- validation summary
- export history
- submission history

Primary actions:
- create export package
- inspect export result
- create submission
- inspect submission state

This screen must clearly distinguish:
- exported
- submitted
- approved externally
- published externally

Builder must not pretend that export equals publish.


# ============================================================
# 11. GLOBAL TOP BAR / STATUS BAR
# ============================================================

All major Builder screens should expose a stable global status area.

Minimum visible states:
- workspace
- project
- runtime family
- save state
- validation state
- export state

Recommended global actions:
- save
- validate
- preview
- open validation center
- open export center

The user must always know whether the current project is:
- saved
- dirty
- autosaved only
- validation blocked
- export ready
- already exported


# ============================================================
# 12. PRIMARY SCREEN TRANSITIONS
# ============================================================

Required transitions:

Builder Home
-> Template Gallery
-> Project Overview
-> Main Editor
-> Preview Studio
-> Validation Center
-> Export / Publish Center

Project Overview must be the primary hub for one project.

Main Editor must not hide access to:
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center

Validation Center and Export / Publish Center
must be reachable without losing project context.


# ============================================================
# 13. ROLE-AWARE SCREEN ACCESS
# ============================================================

Screen access must be role-aware.

owner:
- full access

editor:
- editing access
- asset access
- preview access
- validation access
- limited export/publish access according to policy

reviewer:
- read access
- validation access
- comment-oriented visibility
- no unrestricted mutation access

publisher:
- export/publish center access
- submission-oriented access
- no unrestricted authoring requirements by default

Screen access must not imply hidden permission escalation.


# ============================================================
# 14. SCREEN STATE VISIBILITY RULE
# ============================================================

The following must always be visible somewhere relevant:

- dirty state
- autosave state
- latest official saved revision
- validation result state
- export state
- submission state

These states must not be hidden behind deep navigation only.

A creator must always understand:
- whether current changes are officially saved
- whether current project is exportable
- whether project is blocked by validation
- whether submission already exists


# ============================================================
# 15. MVP SCREEN PRIORITY
# ============================================================

The initial implementation priority is:

Priority 1:
- Builder Home
- Template Gallery
- Project Overview
- Main Editor

Priority 2:
- Asset Studio
- Preview Studio
- Validation Center

Priority 3:
- Export / Publish Center

All must exist eventually,
but this priority order is valid for staged implementation.


# ============================================================
# 16. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder screen architecture must remain explicit,
role-aware,
state-visible,
and submission-oriented.

Core summary:

- Builder Home is the entry point
- Template Gallery is the creation gate
- Project Overview is the project dashboard
- Main Editor is the structured authoring surface
- Asset Studio manages material assets
- Preview Studio is sandbox-only
- Validation Center is the safety gate
- Export / Publish Center is the handoff gate




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202652_GAME_BUILDER_STATE_AND_SAVE_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER STATE AND SAVE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official state and save architecture of Game Builder.

This architecture defines:

- working state
- autosave state
- official saved revision
- dirty state
- validation state
- exportable revision boundary
- submission readiness boundary

It is the formal basis for Builder persistence behavior.


# ============================================================
# 1. STATE MODEL OVERVIEW
# ============================================================

Game Builder must distinguish three primary persistence layers:

- working state
- autosave snapshot
- official saved revision

These layers are not interchangeable.

Core rule:

working is not autosave  
autosave is not official save  
official save is not export  
export is not publish

These distinctions are mandatory.


# ============================================================
# 2. WORKING STATE
# ============================================================

purpose:
Represent the current in-editor mutable authoring state.

Working state characteristics:
- lives in active UI/editor memory
- changes rapidly
- may be incomplete
- may be invalid
- may be discarded before save
- may temporarily differ from autosave and official save

Working state may include:
- unsaved block edits
- unsaved ordering changes
- unsaved property edits
- temporary asset binding changes
- temporary preview parameters
- temporary selection state

Working state is the most volatile Builder layer.


# ============================================================
# 3. AUTOSAVE SNAPSHOT
# ============================================================

purpose:
Provide crash recovery and continuity assistance.

Autosave snapshot characteristics:
- created automatically
- recovery-oriented
- not treated as final author confirmation
- not sufficient for export by itself
- may preserve partially invalid work
- must remain distinguishable from official save

Autosave must not silently replace
official saved revision truth.

Autosave is for recovery, not formal release preparation.


# ============================================================
# 4. OFFICIAL SAVED REVISION
# ============================================================

purpose:
Represent the author-confirmed persisted Builder state.

Official saved revision characteristics:
- created by explicit save action
- versioned
- eligible for validation handoff
- eligible for export path
- forms project history
- must be durable and referencable

Only official saved revision may become:
- export target
- validation target for export
- submission target

Official save is the formal Builder-side truth.


# ============================================================
# 5. DIRTY STATE
# ============================================================

purpose:
Represent divergence between working state
and latest official saved revision.

Dirty state must be explicit.

Minimum dirty state categories:

- clean
- unsaved_changes
- autosaved_only
- save_conflict_detected where applicable

Definitions:

clean:
working state matches latest official saved revision

unsaved_changes:
working state differs from latest official saved revision

autosaved_only:
working state has been autosaved,
but no matching official save exists

save_conflict_detected:
Builder detected incompatible restore or overwrite ambiguity

Dirty state visibility is mandatory.


# ============================================================
# 6. SAVE LIFECYCLE
# ============================================================

The official save lifecycle must be:

working state
-> explicit save requested
-> lightweight validation where required
-> official saved revision created
-> dirty state returns to clean

Autosave lifecycle must be:

working state
-> autosave trigger
-> autosave snapshot written
-> dirty state may remain autosaved_only or unsaved_changes

Autosave must not silently produce
an official saved revision.


# ============================================================
# 7. AUTOSAVE RULES
# ============================================================

Autosave must follow explicit policy.

Recommended baseline:

- autosave after short inactivity window
- autosave on meaningful structural mutation
- autosave snapshots retained in bounded history
- autosave recoverable after crash or interruption

Autosave requirements:
- autosave must record timestamp
- autosave must record project reference
- autosave must record snapshot hash or equivalent lineage marker
- autosave must remain project-scoped
- autosave must not masquerade as exportable state

A project with autosave only is not automatically export-ready.


# ============================================================
# 8. OFFICIAL SAVE RULES
# ============================================================

Official save must:

- create revision identity
- update latest saved revision pointer
- store enough metadata for restore/history
- store save timestamp
- store project scope
- store authoring lineage marker
- support later validation and export

Official save may trigger:
- editing validation
- block-level diagnostics refresh
- project summary refresh

Official save must not:
- automatically export
- automatically submit
- automatically publish


# ============================================================
# 9. REVISION MODEL
# ============================================================

A revision is the formal Builder persistence object.

Each revision should define at minimum:

- revision_ref
- project_code
- revision_number or revision_version
- created_at
- created_by
- content_hash or equivalent
- runtime_binding_summary
- template_binding_summary
- asset_binding_summary
- validation_summary where available

A revision must be immutable once created.

Subsequent save creates a new revision,
not in-place mutation of prior revision truth.


# ============================================================
# 10. RESTORE MODEL
# ============================================================

Builder must support restore behavior explicitly.

Restore sources may include:

- latest official saved revision
- earlier official saved revision
- latest autosave snapshot
- selected autosave snapshot where supported

Restore must distinguish:
- restore from official save
- recover from autosave

Recovering from autosave should not silently overwrite
latest official revision.

A recovered autosave must become:
- working state first
and only later
- official saved revision after explicit save


# ============================================================
# 11. VALIDATION STATE MODEL
# ============================================================

Validation state must be tracked separately
from save state.

A project/revision may be:
- saved but validation_failed
- saved and validation_passed
- unsaved but partially checked
- exported only from a validation-passed saved revision

Validation state categories should include:

- not_run
- running
- passed
- warning_only
- failed_blocking

Validation state must not be inferred solely from dirty state.


# ============================================================
# 12. EXPORTABLE REVISION BOUNDARY
# ============================================================

Only an official saved revision may become exportable.

A revision is exportable only if:

- it is an official saved revision
- blocking validation = 0
- required runtime binding is resolved
- required template binding is resolved where applicable
- required asset family set is resolved
- export contract prerequisites are satisfied

Autosave snapshot alone is never exportable.

Working state alone is never exportable.

This boundary is mandatory.


# ============================================================
# 13. SUBMISSION BOUNDARY
# ============================================================

Submission may only occur from an exported revision lineage.

Submission prerequisites include:

- official saved revision exists
- revision passed required validation
- export package exists from that revision lineage
- project linkage and release linkage are resolved
- submission-required metadata is resolved

Submission must not originate directly from:
- working state
- autosave snapshot
- unexported revision


# ============================================================
# 14. PREVIEW RELATION
# ============================================================

Preview may use:

- current working state in lightweight preview mode
or
- latest official saved revision in stable preview mode

Builder must make clear which preview basis is used.

Preview from working state:
- faster
- less formal
- may diverge from official saved revision

Preview from saved revision:
- more stable
- closer to export candidate
- better for validation-oriented testing

Preview basis must remain explicit.


# ============================================================
# 15. COLLABORATION RELATION
# ============================================================

In collaborative scenarios,
state ownership must remain explicit.

At minimum Builder must preserve:

- who changed working state
- who created official save
- who created autosave where relevant
- lock or edit ownership where applicable
- restore conflict visibility where applicable

Collaboration must not collapse the distinction
between autosave and official save.


# ============================================================
# 16. UI VISIBILITY RULE
# ============================================================

The UI must always make visible:

- current save state
- latest official save timestamp
- autosave availability
- dirty/clean state
- validation state
- export readiness state

Minimum visible user-facing labels should make it clear whether work is:

- saved
- unsaved
- autosaved only
- validation blocked
- ready to export

These must never be hidden entirely.


# ============================================================
# 17. FAILURE / RECOVERY RULE
# ============================================================

If Builder is interrupted,
autosave recovery must be offered explicitly.

Recovery flow should distinguish:
- latest official saved revision
- newer autosave snapshot

The user must be able to understand:
- what was formally saved
- what was only autosaved
- what will be restored into working state

Recovery must avoid accidental silent overwrite
of formal revision history.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder persistence must remain layered and explicit.

Core summary:

- working state is volatile authoring state
- autosave is recovery state
- official saved revision is formal Builder truth
- dirty state must remain visible
- validation state is separate from save state
- only official saved revisions may become exportable
- export is not publish




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202653_GAME_BUILDER_STORAGE_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER STORAGE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official storage architecture of Game Builder.

This architecture defines:

- database-stored Builder truth
- object-storage-stored Builder payloads
- revision storage boundaries
- autosave storage boundaries
- asset storage boundaries
- preview temporary storage boundaries
- export package storage boundaries
- lineage and hash responsibilities

This architecture is mandatory for Builder implementation.


# ============================================================
# 1. STORAGE ROLE OVERVIEW
# ============================================================

Game Builder storage must preserve explicit separation between:

- structured Builder truth
- heavy binary material
- temporary preview material
- export package material
- recovery-oriented autosave material

Core principle:

database stores structured truth  
object storage stores heavy payload  
temporary preview storage stores discardable material

No storage layer may collapse these concerns implicitly.


# ============================================================
# 2. PRIMARY STORAGE CLASSES
# ============================================================

The Builder storage architecture must distinguish:

- relational or structured database storage
- object storage
- temporary preview/session storage
- derived artifact storage

These are not interchangeable by default.


# ============================================================
# 3. DATABASE-STORED BUILDER TRUTH
# ============================================================

The database must store structured Builder truth.

Minimum database-stored categories:

- project metadata
- workspace linkage
- runtime binding
- template binding
- block structure
- block metadata
- asset metadata
- asset binding metadata
- official revision metadata
- autosave metadata
- validation result metadata
- export metadata
- submission metadata
- collaboration metadata
- lock metadata
- comment metadata

The database must not be the primary storage
for large raw binary asset payloads by default.


# ============================================================
# 4. OBJECT-STORAGE-STORED MATERIAL
# ============================================================

Object storage must store heavy Builder payloads.

Minimum object-stored categories:

- uploaded raw assets
- derived assets
- pixel art image payloads
- unit art image payloads
- building art image payloads
- tileset payloads
- sprite sheet payloads
- icon atlases
- preview-generated heavy artifacts
- export bundles
- export manifests when large
- replay-like preview materials where applicable

Object storage must not replace the database
for structured truth and linkage metadata.


# ============================================================
# 5. PROJECT STORAGE BOUNDARY
# ============================================================

A Builder project must be represented through a split model.

Database side:
- project identity
- project status
- runtime family binding
- runtime profile binding
- ruleset profile binding
- template profile binding
- project summary
- latest revision pointers
- latest autosave pointers

Object storage side:
- optional large derived project blobs where needed
- export-facing packaged material derived from project state

The project itself remains database-centered as authoring truth.


# ============================================================
# 6. BLOCK STORAGE BOUNDARY
# ============================================================

Blocks are structured authoring objects
and must be database-first.

Database must store:
- block identity
- block type
- parent relationship
- order index
- structural metadata
- block payload as structured data
- block validation summary

Block payloads must remain queryable enough
for validation, navigation, and fix targeting.

Blocks should not default to opaque blob storage only.


# ============================================================
# 7. REVISION STORAGE BOUNDARY
# ============================================================

Official saved revisions are formal Builder truth
and must remain durable and immutable.

Database must store:
- revision_ref
- project_code
- revision_number or version
- created_at
- created_by
- content_hash
- runtime/template/ruleset binding summary
- validation summary
- export eligibility summary where applicable

Database may also store structured revision payload references.

Object storage may store:
- large revision snapshots
- packaged revision-state blobs
- export-derived revision artifacts

Revision identity and lineage must always remain database-visible.


# ============================================================
# 8. AUTOSAVE STORAGE BOUNDARY
# ============================================================

Autosave is recovery-oriented, not formal release truth.

Database must store:
- autosave snapshot identity
- project_code
- snapshot timestamp
- snapshot hash
- origin metadata
- restore eligibility metadata

Object storage may store:
- larger autosave payload blobs
- recovery-oriented serialized working state

Autosave must remain distinguishable from official revisions
in both metadata and storage lineage.


# ============================================================
# 9. ASSET STORAGE BOUNDARY
# ============================================================

Assets require split storage.

Database must store:
- asset identity
- asset type
- asset family
- project linkage
- source type
- template origin where applicable
- variant metadata
- palette metadata
- export compatibility metadata
- usage scope
- asset hash
- active status

Object storage must store:
- raw uploaded asset payload
- edited image payload
- sprite sheet payload
- tileset payload
- atlas payload
- derived variant payload
- preview-generated visual payload when retained

Asset truth is metadata-first in database,
payload-first in object storage.


# ============================================================
# 10. PIXEL / UNIT / BUILDING ASSET STORAGE
# ============================================================

Pixel art, unit art, and building art assets
must all follow a split storage model.

Database must store:
- profile linkage
- layer summary
- variant summary
- export summary
- runtime usage scope
- project binding
- asset lineage
- current active derived payload ref

Object storage must store:
- canvas-derived raster payload
- layered export image payload
- sprite sheet payload
- building state variant image payload
- unit portrait/battle sheet payload

The database must remain able to answer:
- what this asset is
- where it is used
- whether it is export-compatible
- whether it violates Persona boundaries


# ============================================================
# 11. PREVIEW STORAGE BOUNDARY
# ============================================================

Preview storage must remain temporary and isolated.

Preview storage may use:
- in-memory session state
- temporary object payloads
- temporary database session records

Preview storage must store only what is necessary for:
- session continuity
- recoverable preview state if supported
- debug or inspection surfaces where approved

Preview storage must never become production truth storage.

Preview data must be:
- clearly marked preview-only
- discardable
- time-bounded
- non-authoritative


# ============================================================
# 12. VALIDATION STORAGE BOUNDARY
# ============================================================

Validation is metadata-rich and should be database-first.

Database must store:
- validation_result_ref
- project_code
- revision_ref where applicable
- validation_stage
- severity counts
- finding records
- affected scope references
- timestamps

Object storage may store:
- large auxiliary diagnostics
- generated analysis bundles
- heavy trace artifacts where necessary

Validation result discoverability must remain database-visible.


# ============================================================
# 13. EXPORT STORAGE BOUNDARY
# ============================================================

Export packages are derived artifacts.

Database must store:
- export_package_code
- project_code
- frozen_revision_ref
- runtime contract linkage
- export hash
- package summary
- asset manifest linkage
- export status
- timestamps

Object storage must store:
- export bundle payload
- export manifest payload where large
- runtime contract artifact payload where serialized
- packaged asset archive
- packaged runtime-ready metadata blob

The export package payload is object-stored,
but export lineage truth remains database-visible.


# ============================================================
# 14. SUBMISSION STORAGE BOUNDARY
# ============================================================

Submission is lifecycle metadata and must be database-first.

Database must store:
- submission_request_ref
- project_code
- export_package_code
- release_code
- seller linkage summary
- validation linkage
- moderation linkage
- submission status
- timestamps

Object storage may store:
- submission bundle payload
- large handoff attachments
- moderation-facing packed artifacts where required

Submission identity must remain database-visible.


# ============================================================
# 15. HASH / LINEAGE RULE
# ============================================================

All major Builder storage objects must support lineage.

Minimum lineage-tracked objects:
- official revision
- autosave snapshot
- asset
- derived asset
- export package
- asset manifest
- runtime export contract artifact
- submission bundle

Each should maintain:
- identity
- parent or source reference where applicable
- hash or equivalent integrity marker
- creation timestamp

Lineage is mandatory for export, recovery, and audit clarity.


# ============================================================
# 16. MANIFEST RULE
# ============================================================

Builder must maintain explicit manifest concepts.

Important manifest classes:
- asset manifest
- export manifest
- runtime export contract manifest or equivalent
- submission handoff manifest where applicable

Manifest metadata should be database-discoverable.

Manifest payload may be object-stored when large.

A manifest must always be traceable to:
- project
- revision
- export package where applicable


# ============================================================
# 17. RETENTION / CLEANUP RULE
# ============================================================

Retention policy must differ by storage class.

Official revisions:
- durable
- long retention

Autosave snapshots:
- bounded retention
- recoverability-oriented
- cleanup-safe after supersession/expiry

Preview temporary data:
- short retention
- aggressively discardable

Export packages:
- retained according to publish and audit needs

Derived preview artifacts:
- discard when expired unless explicitly retained for debugging policy

Retention boundaries must remain explicit.


# ============================================================
# 18. PERSONA BOUNDARY STORAGE RULE
# ============================================================

Builder storage must not treat non-Persona material assets
as Persona truth.

Database and object storage must clearly distinguish:

- Builder-owned material assets
- approved Persona projection references

Builder storage must not become a side channel
for Persona truth mutation or unauthorized Persona state capture.

This rule is mandatory.


# ============================================================
# 19. RECOVERY RULE
# ============================================================

Recovery flows must use explicit storage lineage.

Recovery must be able to answer:
- latest official revision
- latest autosave snapshot
- whether autosave is newer than official save
- what can be restored safely
- what remains preview-only or discardable

Recovery must not depend on ambiguous storage overwrites.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

Game Builder storage must remain split and explicit.

Core summary:

- database stores structured Builder truth
- object storage stores heavy payloads
- preview storage is temporary and isolated
- revision, autosave, asset, export, and submission
  each have explicit storage boundaries
- lineage and hash visibility are mandatory
- non-Persona Builder assets must remain separate
  from Persona truth




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202654_GAME_BUILDER_MAIN_EDITOR_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER MAIN EDITOR ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Main Editor architecture of Game Builder.

This architecture defines the primary structured authoring surface
used for Builder projects.

It covers:
- editor shell
- structure tree
- block editing
- property inspection
- block lifecycle operations
- zone-aware editing
- save/dirty behavior
- inline validation behavior
- collaboration-aware lock behavior


# ============================================================
# 1. ROLE OF MAIN EDITOR
# ============================================================

The Main Editor is the primary authoring surface of Builder.

Its role is to let creators modify project content
through structured block-based editing.

The Main Editor must not behave like
an unrestricted schema editor by default.

The Main Editor must always remain:

- runtime-aware
- template-aware
- block-based
- save-aware
- validation-aware
- collaboration-aware


# ============================================================
# 2. MAIN EDITOR SHELL
# ============================================================

The Main Editor must use a stable three-panel shell.

left panel:
- structure tree
- search
- block filters
- quick add actions

center panel:
- active block editor surface
- block content editing
- inline diagnostics
- context-sensitive editing widgets

right panel:
- property inspector
- runtime/template info
- zone classification
- block metadata
- validation hint summary

top bar:
- project identity
- current block identity
- save state
- validate action
- preview action
- export shortcut

bottom or inline status area:
- dirty state
- autosave state
- latest official save
- validation summary


# ============================================================
# 3. STRUCTURE TREE
# ============================================================

The structure tree is the primary navigation model.

The structure tree must show:

- block hierarchy
- block type
- block title
- block validation state
- block lock state where applicable
- visibility or enabled state where relevant

The structure tree must support:

- select block
- create child block where allowed
- reorder block where allowed
- clone block where allowed
- archive/remove block where allowed
- search/filter by block type or text

A structure tree item must never hide
whether it is invalid or locked.


# ============================================================
# 4. BLOCK AS PRIMARY EDIT UNIT
# ============================================================

The Main Editor must treat a block
as the minimum structured editing unit.

Every block must expose at least:

- block_id
- block_type
- block_title
- parent_block_id where applicable
- order_index
- zone_classification
- validation_state
- lock_state where applicable
- content_payload

A block may only be edited according to:
- runtime family rules
- template rules
- zone rules
- role permissions


# ============================================================
# 5. BLOCK TYPE FAMILIES
# ============================================================

The Main Editor must support runtime-family-specific block sets.

VN / Dating examples:
- scene
- dialogue
- choice
- branch
- route
- ending

RPG examples:
- area
- npc
- quest
- objective
- event
- battle
- reward
- shop

Puzzle examples:
- stage
- clear_condition
- fail_condition
- score_rule
- retry_rule
- stage_reward

Strategy examples:
- map
- faction
- unit_set
- turn_rule
- resource_rule
- building_rule
- victory_rule
- defeat_rule

The editor must not allow block types
that are not approved for the resolved runtime family.


# ============================================================
# 6. BLOCK CREATION RULE
# ============================================================

Block creation must be guided, not unrestricted.

When creating a block, the editor must resolve:

- current project runtime family
- current template family
- current parent block type
- allowed child block types
- required block constraints

The editor must support:

- add sibling block
- add child block
- add template-defined block preset

The editor must not offer illegal block types
for the current location.


# ============================================================
# 7. BLOCK UPDATE RULE
# ============================================================

Block update must be field-aware and zone-aware.

A block update may target:

- content fields
- metadata fields
- ordering fields where allowed
- linkage fields where allowed
- asset reference fields where allowed

Block updates must be validated against:

- required field rules
- runtime family constraints
- template constraints
- zone editing constraints

An update that violates protected zones
must be blocked in the ordinary edit path.


# ============================================================
# 8. BLOCK REORDER RULE
# ============================================================

The editor must support explicit reorder
for order-sensitive block families.

Examples:
- scene order
- dialogue order
- quest order
- stage order
- faction/unit order where allowed

Reorder must respect:
- parent-child legality
- runtime continuity rules
- template structure rules

A reorder that breaks mandatory continuity
must produce blocking validation.


# ============================================================
# 9. BLOCK CLONE RULE
# ============================================================

The editor may support block cloning
for eligible block families.

Clone is useful for:
- repeated dialogue patterns
- repeated event structures
- repeated stage skeletons
- repeated quest skeletons
- repeated unit/building templates

A cloned block must receive:
- new block identity
- refreshed lineage marker
- copied editable content
- preserved type compatibility
- invalidated unique references where required

The editor must not silently duplicate
identity-critical references incorrectly.


# ============================================================
# 10. BLOCK DELETE / ARCHIVE RULE
# ============================================================

The editor must distinguish:

- hard delete where safe
- archive/remove from active structure where safer

For initial Builder scope,
archive-style removal is preferred
when structural integrity matters.

Deletion/removal must check:
- child block dependencies
- inbound references
- required template block status
- continuity impact

The editor must warn or block
when deletion would break required structure.


# ============================================================
# 11. PROPERTY INSPECTOR
# ============================================================

The property inspector must expose
structured block metadata and bindings.

Minimum inspector categories:

- identity
- type
- runtime linkage
- template linkage
- zone classification
- asset references
- validation hints
- ordering metadata
- lock metadata where applicable

The property inspector must make it explicit whether a field is:

- editable
- inherited
- protected
- override-only
- invalid
- unresolved


# ============================================================
# 12. ZONE-AWARE EDITING RULE
# ============================================================

The Main Editor must enforce zone classifications.

Minimum zone classes:

- protected_zone
- editable_zone
- advanced_override_zone

protected_zone:
- not editable through normal editing flow

editable_zone:
- safe for normal authoring changes

advanced_override_zone:
- editable only when advanced path is enabled
- requires elevated validation awareness

The editor must visibly indicate zone class
for the active block or field.


# ============================================================
# 13. DIRTY STATE IN EDITOR
# ============================================================

The Main Editor must visibly track:

- clean
- unsaved_changes
- autosaved_only
- validation_failed
- export_ready where relevant at project level

The editor must show these without requiring navigation
to another screen.

A creator must always know whether the current block/project
has unsaved work.


# ============================================================
# 14. SAVE TRIGGER RULE
# ============================================================

The Main Editor must support:

- explicit save
- autosave trigger
- lightweight validation on save where applicable

Explicit save:
- creates official saved revision through Builder save path

Autosave:
- captures recovery snapshot only

The editor must never imply that autosave equals official save.

The save action must be available from the editor shell.


# ============================================================
# 15. INLINE VALIDATION RULE
# ============================================================

The Main Editor must surface inline validation
close to the edited structure.

Inline validation may show:

- missing required field
- invalid reference
- illegal child block
- broken target reference
- unresolved asset binding
- protected zone violation attempt

The editor should support:
- block-level severity badge
- field-level error indicator
- jump-to-related-reference action where possible

Inline validation is supportive,
but does not replace Validation Center.


# ============================================================
# 16. SEARCH / FILTER RULE
# ============================================================

The Main Editor should support project-scale navigation aids.

Minimum supported discovery actions:

- search by block title
- search by block id
- filter by block type
- filter by validation severity
- filter by locked state where applicable
- filter by unresolved asset state where applicable

Search and filter must not hide critical invalid state silently.


# ============================================================
# 17. PREVIEW / VALIDATE / EXPORT ENTRY FROM EDITOR
# ============================================================

The Main Editor must provide direct access to:

- Preview Studio
- Validation Center
- Export / Publish Center

The editor may provide quick actions for:
- validate current block scope
- validate project
- preview current structure context
- open export readiness summary

The editor must not directly publish.


# ============================================================
# 18. ROLE AND LOCK AWARENESS
# ============================================================

The Main Editor must be role-aware.

owner:
- full authoring access

editor:
- authoring access according to granted permissions

reviewer:
- read/comment oriented access
- no unrestricted mutation

publisher:
- usually not primary authoring role by default

The Main Editor must support lock awareness.

Minimum lock concepts:
- project lock where applicable
- block lock where applicable

A locked block must show:
- lock state
- lock holder where policy allows
- edit restriction status


# ============================================================
# 19. FAMILY-SPECIFIC EDITOR SPECIALIZATION
# ============================================================

The Main Editor shell is shared,
but the center editing surface may specialize by runtime family.

VN / Dating:
- dialogue composer
- branch editor
- route/ending editor

RPG:
- quest/event editor
- area progression editor
- battle preset editor

Puzzle:
- stage rule editor
- score/clear/fail editor

Strategy:
- map/faction/unit rule editor
- turn/resource/building editor

These specializations must remain inside
the common Builder state and save architecture.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

The Main Editor is the primary structured authoring surface
of Game Builder.

Core summary:

- three-panel editor shell is mandatory
- structure tree is the main navigation surface
- blocks are the primary edit unit
- zone-aware editing is mandatory
- save and autosave must remain distinct
- inline validation must be visible
- role and lock awareness must be explicit
- editor must connect naturally to preview, validation, and export




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202655_GAME_BUILDER_ASSET_STUDIO_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER ASSET STUDIO ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Asset Studio architecture of Game Builder.

This architecture defines the Builder-side authoring system
for non-Persona game material assets.

It covers:
- asset browser
- asset upload and replacement
- pixel art editing
- unit art editing
- building art editing
- palette and variant generation
- asset binding inspection
- runtime/template compatibility checks
- non-Persona material boundary enforcement


# ============================================================
# 1. ROLE OF ASSET STUDIO
# ============================================================

Asset Studio is the Builder subsystem responsible for
material game assets that do not belong to Persona truth.

Asset Studio must support creators in:
- selecting template-default assets
- replacing project assets
- composing variant assets
- editing simple material assets
- binding assets to project/runtime/template structures
- preparing asset-compatible export packages

Asset Studio is not:
- a Persona truth editor
- a raw unrestricted art program
- a bypass for runtime/template requirements


# ============================================================
# 2. ASSET STUDIO DOMAINS
# ============================================================

Asset Studio must contain the following explicit domains:

- asset browser domain
- asset import domain
- asset editor domain
- asset variant domain
- asset binding domain
- asset validation domain
- asset export metadata domain

These domains must remain distinct enough
for implementation and permission control.


# ============================================================
# 3. PRIMARY ASSET CATEGORIES
# ============================================================

Asset Studio must support, at minimum:

- pixel art assets
- unit art assets
- building art assets
- icon assets
- ui material assets
- map prop assets
- tileset assets

The initial focus should prioritize:

- pixel enemy/boss/material assets
- unit art assets
- building art assets

These are the first-class Builder-owned material assets.


# ============================================================
# 4. ASSET BROWSER
# ============================================================

The Asset Browser is the primary discovery surface.

It must support:
- asset list/grid browsing
- asset search
- asset filter by type/family/status
- asset preview
- project usage visibility
- template default visibility
- variant visibility

Each asset entry should expose:
- asset_ref
- asset_type
- asset_family
- project scope
- runtime usage scope
- template origin where applicable
- variant count where applicable
- validation status where applicable

The browser must not hide whether an asset is:
- required
- optional
- unresolved
- invalid
- derived from template
- project override


# ============================================================
# 5. ASSET IMPORT / UPLOAD
# ============================================================

Asset Studio must support explicit asset import.

Supported initial import classes:
- raster image upload
- sprite sheet upload
- tileset upload
- icon upload

Import must classify each asset as:
- raw uploaded asset
- template replacement asset
- project-owned custom asset
- derived variant asset

Import must capture metadata for:
- asset_type
- usage_scope
- runtime_family compatibility
- export format compatibility
- lineage/origin
- hash or equivalent integrity marker

Imported assets must not become active bindings
without explicit binding or approval path.


# ============================================================
# 6. ASSET REPLACE MODEL
# ============================================================

Asset replacement must be a first-class operation.

The Builder must support:
- replace template default asset
- replace currently bound project asset
- revert to template default
- switch among project variants

Replacement must preserve:
- binding visibility
- lineage visibility
- required asset family status
- export metadata integrity

Replacement must not silently break
required asset family completeness.


# ============================================================
# 7. PIXEL ART EDITOR
# ============================================================

The Pixel Art Editor is the material editor
for small raster assets such as:

- enemy sprites
- boss sprites
- item icons
- map props
- ui icons
- small tiles

The Pixel Art Editor should prioritize:

- template clone mode
- part replacement mode
- recolor mode
- limited draw mode

The initial implementation does not require
a fully unrestricted professional art suite.

Minimum pixel editor capabilities:
- pixel canvas
- palette selection
- basic draw/erase
- fill
- mirror where useful
- layer visibility
- export preview

Pixel editing must remain project-aware
and export-aware.


# ============================================================
# 8. UNIT ART EDITOR
# ============================================================

The Unit Art Editor is the material editor
for tactical / rpg unit-facing assets.

Typical targets:
- faction units
- generic soldiers
- class variants
- enemy units
- companion-like non-Persona units

The Unit Art Editor should prioritize:

- template selection
- part replacement
- recolor by faction/profile
- emblem overlay
- equipment swap
- pose/profile selection
- limited correction

Minimum unit editor concerns:
- body/base layer
- armor/clothing layer
- weapon layer
- emblem/accessory layer
- shadow layer
- export profile selection

Unit Art Editor must remain compatible with:
- strategy runtime
- rpg runtime
where applicable.


# ============================================================
# 9. BUILDING ART EDITOR
# ============================================================

The Building Art Editor is the material editor
for structure-facing assets.

Typical targets:
- houses
- shops
- castles
- towers
- farms
- walls
- gates
- military buildings
- civic buildings

The Building Art Editor should prioritize:

- building template selection
- part replacement
- ornament replacement
- recolor
- state variant generation
- limited correction

Minimum building editor concerns:
- foundation/base layer
- wall layer
- roof layer
- door/window layer
- ornament/sign layer
- shadow layer
- state variants

Building state variant support should be explicit:
- normal
- upgraded
- damaged
- destroyed
- occupied/faction-changed where supported


# ============================================================
# 10. LAYER MODEL
# ============================================================

Asset Studio must support layer-aware editing
for eligible asset classes.

Minimum layer model requirements:
- ordered layers
- visibility toggle
- active layer selection
- locked layer support where useful
- export flattening or profile-aware export

Recommended initial layer families:

Pixel:
- base
- line
- detail
- accessory
- shadow

Unit:
- body
- clothing_or_armor
- weapon
- emblem_or_accessory
- shadow

Building:
- foundation
- wall
- roof
- ornament
- shadow
- state_overlay

Layer awareness is important for variant generation.


# ============================================================
# 11. PALETTE AND VARIANT SYSTEM
# ============================================================

Asset Studio must support palette-driven variation.

Variant generation should support:
- faction color swap
- rarity color swap
- role/class color swap
- damage state variant
- upgrade state variant
- alternate emblem variant

The variant system must preserve lineage:
- source asset
- derived asset
- variant profile
- active binding state

A variant must not erase the source asset relationship.


# ============================================================
# 12. ASSET BINDING INSPECTOR
# ============================================================

Asset Studio must include an Asset Binding Inspector.

The inspector must answer:
- where the asset is used
- whether it is required
- which block/template/runtime consumes it
- whether it satisfies required asset family needs
- whether it has export-compatible metadata
- whether it violates Persona boundary rules

The inspector must support:
- bind asset
- rebind asset
- inspect dependent structures
- inspect template default source
- inspect variant lineage

Binding must remain explicit.


# ============================================================
# 13. TEMPLATE AND RUNTIME COMPATIBILITY
# ============================================================

Asset Studio must enforce compatibility with:
- runtime family
- template family
- template tier
- required asset set
- export profile

Examples:
- Strategy projects must be able to resolve unit/building/map-facing asset families
- RPG projects must resolve enemy/area/interface-facing assets
- Puzzle projects must resolve stage/icon/ui-facing assets
- VN projects must resolve presentation/ui-facing assets

Asset Studio must not allow illegal asset usage
to appear export-ready.


# ============================================================
# 14. NON-PERSONA BOUNDARY
# ============================================================

Asset Studio is for Builder-owned material assets.

Allowed:
- enemy sprites
- monster sprites
- unit art
- building art
- map props
- icons
- ui material
- tilesets

Prohibited:
- direct Persona truth editing
- treating generic material assets as Persona truth
- unrestricted Persona state capture or mutation

Persona references may appear only as:
- approved projection references
- approved cast-facing references
where explicitly allowed by GameOS runtime/builder rules

This boundary is mandatory.


# ============================================================
# 15. ASSET VALIDATION
# ============================================================

Asset Studio must surface asset-facing validation.

Validation concerns include:
- missing required asset
- invalid asset type
- invalid export metadata
- invalid dimensions/profile where relevant
- incompatible runtime usage scope
- unresolved binding
- prohibited Persona overlap
- missing variant/state set where required

Asset validation should classify:
- blocking
- warning
- info

Blocking issues must prevent export readiness
when they affect required asset families.


# ============================================================
# 16. ASSET EXPORT METADATA
# ============================================================

Every export-relevant asset must have explicit metadata.

Minimum export-relevant metadata may include:
- asset_ref
- asset_type
- asset_family
- runtime_usage_scope
- export_format
- dimensions_summary
- frame_count where applicable
- state_variant_summary where applicable
- palette_profile where applicable
- asset_hash

Asset Studio must make this metadata visible enough
for validation and export troubleshooting.


# ============================================================
# 17. SAVE / REVISION RELATION
# ============================================================

Asset Studio must participate in Builder save architecture.

Asset editing may affect:
- working state
- autosave snapshot
- official saved revision lineage

Asset Studio changes must not bypass
the distinction between:
- unsaved changes
- autosaved changes
- officially saved revision state

Asset-derived changes should be visible in dirty state.


# ============================================================
# 18. PREVIEW RELATION
# ============================================================

Asset Studio must integrate with Preview Studio.

Preview must be able to consume:
- currently bound assets
- preview-safe variants
- project overrides
- template fallback assets where appropriate

Preview may use unsaved working state
or saved revision state depending on preview basis,
but this basis must remain explicit.

Preview consumption of assets must remain sandboxed.


# ============================================================
# 19. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- asset browser
- asset upload
- asset replace/rebind
- asset binding inspector

Priority 2:
- pixel art editor
- palette/variant generation

Priority 3:
- unit art editor
- building art editor

Priority 4:
- richer state variant tooling
- more advanced layered operations

This is a valid staged implementation path.


# ============================================================
# 20. FINAL ARCHITECTURAL RULE
# ============================================================

Asset Studio is the Builder subsystem
for non-Persona material game assets.

Core summary:

- asset browser is the primary discovery surface
- upload and replacement must be explicit
- pixel, unit, and building editors are first-class material editors
- layer and palette awareness are important
- binding inspection is mandatory
- runtime/template compatibility must be enforced
- non-Persona boundary must remain explicit
- asset validity must remain visible




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202656_GAME_BUILDER_PREVIEW_STUDIO_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER PREVIEW STUDIO ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Preview Studio architecture of Game Builder.

This architecture defines the Builder-side sandbox preview system
used to simulate runtime behavior safely before export and submission.

It covers:
- preview session model
- preview basis selection
- sandbox execution
- mock mode
- preview outputs
- preview reset/discard
- family-specific preview specialization
- production boundary enforcement


# ============================================================
# 1. ROLE OF PREVIEW STUDIO
# ============================================================

Preview Studio is the Builder subsystem responsible for
runtime-backed simulation of authored game behavior.

Preview Studio must let creators:
- inspect flow behavior
- inspect asset use
- inspect runtime rule outcomes
- inspect candidate outputs
- inspect route/stage/quest/turn behavior
without touching production truth.

Preview Studio is not:
- production execution
- production sync
- production commerce
- production entitlement mutation
- Persona truth editor
- publish approval surface


# ============================================================
# 2. PREVIEW SESSION AS PRIMARY UNIT
# ============================================================

Preview Studio must use preview session
as the primary simulation unit.

Each preview session must have:

- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- created_at
- expires_at where applicable

session_status examples:
- created
- active
- closed
- failed
- expired
- discarded

A preview session must always be non-authoritative.


# ============================================================
# 3. PREVIEW BASIS MODEL
# ============================================================

Preview Studio must support explicit preview basis selection.

Supported bases:

- working_state_preview
- saved_revision_preview

working_state_preview:
- uses in-editor latest mutable state
- faster feedback
- may be structurally unstable
- useful for rapid iteration

saved_revision_preview:
- uses official saved revision
- more stable
- closer to export candidate behavior
- better for serious validation-like checking

The active preview basis must always be visible.


# ============================================================
# 4. PREVIEW MODE MODEL
# ============================================================

Preview Studio must support runtime-aware preview modes.

Minimum supported preview modes:

- block_scope_preview
- flow_scope_preview
- full_project_preview

Family-specific examples:

VN / Dating:
- scene_preview
- route_preview
- ending_preview
- full_story_preview

RPG:
- area_preview
- quest_preview
- battle_preview
- flow_preview

Puzzle:
- stage_preview
- clear_fail_preview
- score_preview

Strategy:
- map_preview
- turn_preview
- unit_action_preview
- scenario_preview

Preview mode must remain explicit and visible.


# ============================================================
# 5. SANDBOX EXECUTION RULE
# ============================================================

Preview Studio must execute only through sandbox mode.

Sandbox execution must:
- isolate preview state
- prevent production mutation
- allow mock-capable runtime simulation
- support discard/reset
- support preview-only candidate visibility

Sandbox execution must not:
- finalize ranking truth
- finalize achievement truth
- finalize commerce truth
- finalize entitlement truth
- finalize Persona truth
- finalize sync adjudication truth

Sandbox is mandatory.


# ============================================================
# 6. MOCK MODE MODEL
# ============================================================

Preview Studio must support explicit mock mode.

Mock mode may simulate:

- ranking visibility
- achievement visibility
- reward visibility
- purchase UI flow
- entitlement-dependent branch visibility
- Persona projection usage

Mock mode must always be labeled as mock.

Mock mode must not silently hit production-final paths.

Each preview session should expose:
- mock_mode_enabled
- enabled_mock_domains
- prohibited_real_domains


# ============================================================
# 7. PREVIEW OUTPUT MODEL
# ============================================================

Preview Studio may produce preview outputs.

Preview outputs may include:

- route outcome preview
- ending outcome preview
- quest completion preview
- reward candidate preview
- score candidate preview
- ranking candidate preview
- achievement candidate preview
- save candidate preview
- replay candidate preview
- telemetry candidate preview

All preview outputs must be explicitly classified as:
- preview_only
- non_authoritative
- not_submitted

A preview output must never be mistaken for final truth.


# ============================================================
# 8. RESET / DISCARD MODEL
# ============================================================

Preview Studio must support explicit reset and discard.

Minimum actions:

- reset_preview_state
- restart_preview_session
- discard_preview_session

reset_preview_state:
- resets runtime-local preview state
- preserves session identity where appropriate

restart_preview_session:
- starts fresh simulation from same basis

discard_preview_session:
- destroys preview-local state
- does not mutate production truth

Discard must be safe and cheap.


# ============================================================
# 9. STATE VISIBILITY IN PREVIEW
# ============================================================

Preview Studio must visibly expose enough state
for creators to understand what is happening.

Minimum visible state categories:

- preview basis
- preview mode
- session status
- current runtime location
- candidate outputs
- mock mode flags
- sandbox status
- discard/reset availability

The user must always know:
- what is simulated
- what is not real
- what basis is being used


# ============================================================
# 10. FAMILY-SPECIFIC SPECIALIZATION
# ============================================================

Preview Studio shell may be shared,
but center preview surface may specialize by runtime family.

VN / Dating:
- dialogue advance
- choice selection
- route state view
- affection/relationship preview view
- ending qualification view

RPG:
- area transition
- npc interaction preview
- quest progress view
- battle preset simulation
- reward candidate view

Puzzle:
- stage state view
- clear/fail state view
- score progression view
- retry behavior view

Strategy:
- map state view
- faction state view
- turn order view
- unit action view
- resource/building progression view
- victory/defeat evaluation view

Specialization must remain within shared sandbox rules.


# ============================================================
# 11. ASSET RELATION
# ============================================================

Preview Studio must consume:
- project-bound assets
- template fallback assets where applicable
- approved asset variants
- approved Persona projections where applicable

Preview must make clear when asset basis is:
- working-state asset
- saved asset
- template fallback
- mock placeholder

Preview must not silently hide unresolved required asset problems
if they materially affect simulation.


# ============================================================
# 12. VALIDATION RELATION
# ============================================================

Preview Studio does not replace Validation Center,
but it must cooperate with validation.

Preview Studio may surface:
- unresolved block warnings
- missing asset warnings
- route/stage/map continuity warnings
- mock fallback notices

Preview Studio should not pretend that
a successful preview guarantees export validity.

Validation remains separate and authoritative
for export/publish gating.


# ============================================================
# 13. SAVE / REVISION RELATION
# ============================================================

Preview Studio must respect save architecture.

Preview must clearly indicate whether it is based on:
- unsaved working state
or
- official saved revision

Preview Studio must not silently convert:
- working state into official save
- preview outputs into save continuity truth

Preview is simulation only.


# ============================================================
# 14. PERSONA BOUNDARY
# ============================================================

Preview Studio may consume approved Persona projections only.

Allowed:
- cast presentation preview
- dialogue tone preview
- reaction style preview
- approved cast reference preview

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Preview Studio is not a Persona runtime authority surface.


# ============================================================
# 15. COMMERCE / ENTITLEMENT BOUNDARY
# ============================================================

Preview Studio may simulate:
- locked/unlocked UI paths
- entitlement-dependent content visibility
- store/purchase display flow

Preview Studio may not finalize:
- purchase truth
- revenue truth
- entitlement issuance
- install/download truth

All such behaviors must remain mocked or sandboxed.


# ============================================================
# 16. COLLABORATION RELATION
# ============================================================

Preview Studio may be used by:
- owner
- editor
- reviewer
- publisher
according to policy

Preview access must remain role-aware.

A reviewer may need preview without edit rights.
A publisher may need preview without content mutation rights.

Preview Studio must not require unrestricted edit access
just to inspect preview behavior.


# ============================================================
# 17. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- preview session create/open/close
- working state preview
- saved revision preview
- basic sandbox labeling

Priority 2:
- runtime-family-specific preview surfaces
- mock mode visibility
- preview candidate visibility

Priority 3:
- reset/restart controls
- richer preview state inspection
- preview diagnostics overlays

This is a valid staged implementation path.


# ============================================================
# 18. FINAL ARCHITECTURAL RULE
# ============================================================

Preview Studio is the Builder subsystem
for runtime-backed sandbox simulation.

Core summary:

- preview session is the primary simulation unit
- preview basis must be explicit
- preview mode must be explicit
- sandbox execution is mandatory
- mock mode must be visible
- preview outputs are preview-only
- discard/reset must be safe
- production truth boundaries must remain intact




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202657_GAME_BUILDER_VALIDATION_CENTER_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER VALIDATION CENTER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Validation Center architecture of Game Builder.

This architecture defines the Builder-side validation surface
used to inspect, navigate, and act on validation results.

It covers:
- validation stage views
- severity grouping
- findings presentation
- affected scope navigation
- rerun behavior
- export / submit blocking visibility
- relation to editor, asset studio, preview, and export center


# ============================================================
# 1. ROLE OF VALIDATION CENTER
# ============================================================

Validation Center is the Builder subsystem responsible for
showing formal validation truth in a creator-usable form.

Validation Center must let creators:
- understand what is invalid
- understand why it is invalid
- understand how severe it is
- navigate to the affected scope
- rerun validation explicitly
- know whether export or submission is blocked

Validation Center is not:
- a substitute for runtime policy
- a hidden background-only diagnostics layer
- a publish approval surface

Validation Center is the visible safety gate.


# ============================================================
# 2. VALIDATION STAGE MODEL
# ============================================================

Validation Center must expose the three official validation stages:

- editing_validation
- export_validation
- publish_validation

These stages must remain distinct.

editing_validation:
- supports authoring feedback
- likely higher frequency
- focuses on local structural correctness

export_validation:
- focuses on package integrity
- export readiness
- runtime/template/asset completeness

publish_validation:
- focuses on platform readiness
- submission readiness
- linkage, moderation-facing, and publish-facing completeness

The active validation stage must always be visible.


# ============================================================
# 3. SEVERITY MODEL
# ============================================================

Validation Center must expose severity exactly as formal validation defines it.

Minimum severities:

- blocking
- warning
- info

blocking:
- prevents export and/or submit depending on stage

warning:
- does not always block but indicates likely risk or degraded quality

info:
- advisory only

The UI must never blur blocking with warning.


# ============================================================
# 4. FINDING MODEL
# ============================================================

Each validation finding displayed by Validation Center
must preserve enough formal structure for navigation and resolution.

Each finding should display at minimum:

- finding_id
- validation_stage
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint where available
- detected_at

Affected scope types may include:

- project
- block
- asset
- runtime_binding
- template_binding
- export_contract
- submission_linkage

Validation Center must remain machine-truth-driven,
not manually interpreted free text only.


# ============================================================
# 5. FINDING GROUPING
# ============================================================

Validation Center must support multiple grouping modes.

Minimum grouping modes:

- by severity
- by affected scope
- by runtime family concern
- by block type or asset family where applicable

Recommended initial default:
- group by severity first
- then by affected scope

The user must be able to quickly answer:
- what blocks export
- what blocks submit
- what can be fixed later
- what is only advisory


# ============================================================
# 6. BLOCKING VISIBILITY RULE
# ============================================================

Validation Center must visibly summarize blocking state.

At minimum it must show:

- blocking_count
- warning_count
- info_count
- last_validation_timestamp
- current_validation_stage
- export_blocked yes/no
- submit_blocked yes/no

The user must never have to infer blocking state
from raw finding rows alone.


# ============================================================
# 7. AFFECTED SCOPE NAVIGATION
# ============================================================

Validation Center must support jump-to-scope behavior.

Supported targets should include:

- jump to block in Main Editor
- jump to asset in Asset Studio
- jump to project metadata in Project Overview
- jump to export section in Export / Publish Center
- jump to template/runtime binding section where applicable

Jump navigation must preserve project context.

A creator must be able to move from finding
to editable or inspectable scope quickly.


# ============================================================
# 8. STAGE-SPECIFIC DISPLAY BEHAVIOR
# ============================================================

Validation Center should adapt display emphasis by stage.

Editing validation emphasis:
- local structure
- missing fields
- invalid references
- quick-fix style feedback

Export validation emphasis:
- runtime resolution
- template/asset completeness
- graph continuity
- export contract readiness

Publish validation emphasis:
- seller/title/release linkage
- submission readiness
- moderation-facing completeness
- boundary compliance

The stage-specific emphasis must not hide formal severity.


# ============================================================
# 9. RELATION TO MAIN EDITOR
# ============================================================

Validation Center must integrate tightly with Main Editor.

Main Editor may show inline diagnostics,
but Validation Center is the formal diagnostic hub.

Validation Center must support:
- jump to failing block
- return to last validation view
- preserve selection context where possible

Main Editor should not need to re-interpret validation truth.
It should consume Validation Center-compatible results.


# ============================================================
# 10. RELATION TO ASSET STUDIO
# ============================================================

Validation Center must integrate with Asset Studio.

Typical asset-related findings include:
- missing required asset
- invalid asset family
- incompatible runtime usage scope
- invalid export metadata
- prohibited Persona overlap
- unresolved binding

Validation Center must support direct asset inspection routing
for these findings.


# ============================================================
# 11. RELATION TO PREVIEW STUDIO
# ============================================================

Validation Center and Preview Studio are related
but not equivalent.

Validation Center may display preview-relevant findings such as:
- preview incompatibility
- illegal preview binding
- missing preview-safe asset fallback
- mock boundary issues

However:
a successful preview does not replace formal validation.

Validation Center must preserve this distinction.


# ============================================================
# 12. RELATION TO EXPORT / PUBLISH CENTER
# ============================================================

Validation Center must integrate with Export / Publish Center.

Export / Publish Center should consume validation summary,
but Validation Center remains the authoritative diagnostics surface.

Validation Center must make explicit:
- why export is blocked
- why submit is blocked
- what stage is failing
- what scope must be fixed first

Export / Publish Center must not hide blocking causes
behind generic failure messages.


# ============================================================
# 13. RERUN BEHAVIOR
# ============================================================

Validation Center must support explicit rerun actions.

Minimum rerun actions:

- rerun_editing_validation
- rerun_export_validation
- rerun_publish_validation

Rerun behavior must be explicit about basis:
- working_state basis where supported
- official saved revision basis where required

Validation Center must show when a result is:
- stale
- running
- completed
- not_run

The user must know whether they are looking
at fresh or stale diagnostics.


# ============================================================
# 14. RESULT FRESHNESS RULE
# ============================================================

Validation Center must surface result freshness.

Minimum freshness indicators:

- last_run_at
- basis_type
- basis_ref where applicable
- stale_after_structural_change yes/no

Examples:
- "editing validation run on current working state"
- "export validation run on revision R42"
- "publish validation run on export package E13"

Freshness matters because working state may diverge
from previously validated saved state.


# ============================================================
# 15. EMPTY / SUCCESS STATES
# ============================================================

Validation Center must support clear success states.

Examples:
- no blocking issues
- no warnings
- export validation passed
- publish validation passed

Success states must remain stage-specific.

"Everything is valid" must never mean
"everything is published."

Validation success and publish success are separate concepts.


# ============================================================
# 16. ROLE-AWARE ACCESS
# ============================================================

Validation Center must be role-aware.

owner:
- full validation visibility
- rerun authority

editor:
- validation visibility
- rerun authority where allowed

reviewer:
- validation visibility
- comment or observation access
- no hidden mutation authority implied

publisher:
- validation visibility
- stage relevance for export/submit decisions

Validation Center must remain accessible enough
for non-authoring roles that need release confidence.


# ============================================================
# 17. COMMENT / REVIEW RELATION
# ============================================================

Validation Center may integrate with review/comment systems.

Examples:
- attach review comment to finding
- mark finding acknowledged
- mark finding intentionally deferred where policy allows

But comments must not alter formal validation truth.

Only rerun or new validation results may change
formal finding state.


# ============================================================
# 18. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- stage tabs or equivalent
- severity counts
- findings list
- jump-to-scope
- rerun validation

Priority 2:
- grouping/filter modes
- freshness indicators
- export/submit blocked indicators

Priority 3:
- comment/review integration
- richer diagnostic trace views

This is a valid staged implementation path.


# ============================================================
# 19. FINAL ARCHITECTURAL RULE
# ============================================================

Validation Center is the Builder subsystem
for formal validation visibility and actionability.

Core summary:

- validation stages must remain distinct
- severity must remain explicit
- findings must remain structured
- export/submit blocking must be visible
- affected scope jump is mandatory
- rerun behavior must be explicit
- success state must not be confused with publish state




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202658_GAME_BUILDER_EXPORT_PUBLISH_CENTER_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER EXPORT PUBLISH CENTER ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official Export / Publish Center architecture of Game Builder.

This architecture defines the Builder-side handoff surface
used to create export package candidates and submission requests.

It covers:
- export readiness inspection
- export package creation
- runtime export contract visibility
- export history visibility
- submission readiness inspection
- submission request creation
- submission status visibility
- the formal boundary between export, submission, and publish


# ============================================================
# 1. ROLE OF EXPORT / PUBLISH CENTER
# ============================================================

Export / Publish Center is the Builder subsystem responsible for
the formal handoff from authoring state to platform lifecycle state.

It must let creators:
- understand whether a project is export-ready
- create export package candidates explicitly
- inspect export lineage
- understand whether a project is submission-ready
- create submission requests explicitly
- inspect submission lifecycle state

Export / Publish Center is not:
- the final publish approval surface
- the runtime validator itself
- the moderation decision surface
- the platform authority for commercial finality

It is the Builder-side handoff gate.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

The Export / Publish Center must preserve these distinctions:

- save is not export
- export is not submission
- submission is not approval
- approval is not publish
- publish is not Builder truth

These distinctions are mandatory.

The UI must never imply:
"exported" == "published"

The UI must never imply:
"submitted" == "approved"


# ============================================================
# 3. PRIMARY DOMAINS
# ============================================================

Export / Publish Center must contain explicit domains:

- export readiness domain
- export execution domain
- runtime contract inspection domain
- export history domain
- submission readiness domain
- submission execution domain
- submission history/status domain

These domains must remain visible enough
for creators to understand where they are in the lifecycle.


# ============================================================
# 4. EXPORT READINESS DOMAIN
# ============================================================

purpose:
Show whether the project can become an export package candidate.

Export readiness must inspect at minimum:

- latest official saved revision presence
- active runtime family resolution
- runtime profile resolution
- ruleset profile resolution
- template compatibility where applicable
- required asset family completeness
- export validation result
- blocking issue count
- export contract prerequisite completeness

The export readiness domain must show:
- ready / not ready
- reasons for blocked export
- affected scope summary
- latest validation basis
- frozen revision candidate

A creator must be able to answer:
"Can I export right now, and if not, why not?"


# ============================================================
# 5. EXPORT EXECUTION DOMAIN
# ============================================================

purpose:
Allow explicit creation of an export package candidate.

Export execution must require:
- official saved revision target
- no blocking export validation findings
- resolved runtime contract prerequisites
- resolved required asset family set

Export execution must create or request creation of:
- export_package_code
- export hash
- runtime export contract linkage
- asset manifest linkage
- frozen revision linkage
- export timestamp
- export status

Export must be explicit.
Export must not happen implicitly through save or validation alone.


# ============================================================
# 6. RUNTIME EXPORT CONTRACT INSPECTION DOMAIN
# ============================================================

purpose:
Expose the resolved runtime export contract
that will govern package behavior.

This domain must show at minimum:

- runtime family
- runtime profile
- ruleset profile
- template profile where applicable
- compatibility profile
- required asset family summary
- preview compatibility summary
- sync candidate summary
- state boundary summary
- Persona boundary summary
- commerce/entitlement boundary summary

The creator must be able to inspect
what the package will mean to GameOS,
not only that "a zip-like package exists."

This is critical for runtime-aware publishing.


# ============================================================
# 7. EXPORT HISTORY DOMAIN
# ============================================================

purpose:
Provide export lineage visibility.

Export history must show:
- export_package_code
- export timestamp
- frozen revision ref
- export status
- export hash summary
- runtime contract hash summary where applicable
- who initiated export
- whether submission exists from that export

The user must be able to inspect:
- latest export
- prior exports
- which export is relevant to current submission path

Export history must remain project-scoped.


# ============================================================
# 8. SUBMISSION READINESS DOMAIN
# ============================================================

purpose:
Show whether the project/export is ready to enter review/publish lifecycle.

Submission readiness must inspect at minimum:

- export package existence
- latest export validity
- title linkage
- release linkage
- workspace linkage
- seller linkage through workspace
- publish validation result
- moderation-facing metadata completeness
- rollout-relevant metadata completeness where applicable

The submission readiness domain must show:
- ready / not ready
- reasons for blocked submission
- affected scope summary
- latest validation basis
- selected export package candidate

A creator must be able to answer:
"Can I submit this export right now, and if not, why not?"


# ============================================================
# 9. SUBMISSION EXECUTION DOMAIN
# ============================================================

purpose:
Allow explicit creation of a submission request.

Submission execution must require:
- export package candidate
- publish validation readiness
- title/release linkage
- seller/workspace linkage
- required submission metadata completeness

Submission execution must create or request creation of:
- submission_request_ref
- linked export package ref
- linked release ref
- linked title ref
- validation bundle linkage
- moderation-facing handoff linkage
- submission timestamp
- submission status

Submission must be explicit.
Submission must not happen automatically after export.


# ============================================================
# 10. SUBMISSION STATUS DOMAIN
# ============================================================

purpose:
Show Builder-visible submission lifecycle state.

Submission status visibility should include:
- submission_request_ref
- submission status
- export package linkage
- release linkage
- created_at
- last updated at
- visible external lifecycle state where available

Possible visible states may include:
- created
- under_review
- validation_blocked
- moderation_pending
- approved_externally
- rejected_externally
- rollout_pending
- activated_externally

Builder must not fabricate platform decisions.
Builder must display externally-derived states explicitly as external.


# ============================================================
# 11. EXPORT / SUBMISSION STATUS MODEL
# ============================================================

The center must clearly distinguish these status classes.

Export-side examples:
- not_exported
- export_blocked
- export_ready
- exporting
- exported
- export_failed

Submission-side examples:
- not_submitted
- submission_blocked
- submission_ready
- submitting
- submitted
- submission_failed
- approved_externally
- rejected_externally
- activated_externally

These classes must not be merged into one ambiguous status.


# ============================================================
# 12. RELATION TO VALIDATION CENTER
# ============================================================

Export / Publish Center must consume formal validation truth
but must not replace Validation Center.

It should show:
- validation summary
- blocking counts
- direct links to failing scopes
- which stage is currently relevant

It must not hide the reason for block behind generic text.

Examples:
- "Export blocked by 3 blocking findings"
- "Submission blocked by unresolved seller linkage"
- "Submission blocked by publish validation failure"

Validation Center remains the formal diagnostics hub.


# ============================================================
# 13. RELATION TO PROJECT OVERVIEW
# ============================================================

Project Overview is the project dashboard.
Export / Publish Center is the handoff gate.

Project Overview may summarize export/submission state,
but Export / Publish Center must provide the deeper lifecycle details.

A creator should typically arrive at this screen when asking:
- can I export this?
- can I submit this?
- what happened to my export?
- what happened to my submission?


# ============================================================
# 14. RELATION TO MAIN EDITOR
# ============================================================

Main Editor may provide shortcut access,
but it must not silently perform export or submission.

The Export / Publish Center must remain the place where the creator:
- confirms frozen revision target
- sees export contract summary
- sees asset completeness summary
- explicitly chooses export
- explicitly chooses submission

This prevents accidental lifecycle escalation.


# ============================================================
# 15. RELATION TO RELEASE / TITLE / SELLER LINKAGE
# ============================================================

Export / Publish Center must surface required linkage context.

Minimum visible linkage should include:
- workspace
- seller linkage through workspace
- game title
- release target
- marketplace product linkage where relevant
- export package candidate

The user must be able to understand:
- what title this export belongs to
- what release it targets
- which selling context it will enter through

If linkage is unresolved, submission readiness must be blocked visibly.


# ============================================================
# 16. ROLE-AWARE ACCESS
# ============================================================

Export / Publish Center must be role-aware.

owner:
- full export and submission authority

editor:
- export authority where allowed by policy
- limited submission authority where allowed

reviewer:
- read visibility
- no unrestricted export/submission mutation by default

publisher:
- strong export/submission visibility
- strong submission authority according to policy
- no hidden need for full authoring rights

Role-aware behavior must remain explicit.


# ============================================================
# 17. AUDIT / LINEAGE VISIBILITY
# ============================================================

The center should expose enough lineage to answer:

- which revision was exported
- which export package was submitted
- when export happened
- when submission happened
- whether the current submission is based on the latest export
- whether a newer export exists than the submitted one

This is important for creator confidence
and later review/debug workflows.


# ============================================================
# 18. MVP PRIORITY
# ============================================================

Initial implementation priority should be:

Priority 1:
- export readiness summary
- export action
- submission readiness summary
- submission action
- basic export/submission history

Priority 2:
- runtime export contract summary
- richer lineage visibility
- deeper external status display

Priority 3:
- richer rollout/activation visibility
- advanced publish handoff diagnostics

This is a valid staged implementation path.


# ============================================================
# 19. FINAL ARCHITECTURAL RULE
# ============================================================

Export / Publish Center is the Builder subsystem
for explicit lifecycle handoff.

Core summary:

- export readiness must be visible
- export must be explicit
- runtime export contract visibility is important
- submission readiness must be visible
- submission must be explicit
- export history and submission history must remain clear
- export is not publish
- submission is not approval




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202659_GAME_BUILDER_DB_SCHEMA_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER DB SCHEMA ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official database schema architecture of Game Builder.

This architecture defines the logical database model
needed to implement Builder.

It covers:
- project tables
- block tables
- revision tables
- autosave tables
- asset metadata tables
- preview session tables
- validation tables
- export tables
- submission tables
- collaboration / lock / comment tables

This document defines logical schema families,
not vendor-specific SQL syntax.


# ============================================================
# 1. DB PRINCIPLE
# ============================================================

The database stores structured Builder truth.

It must store:
- identities
- metadata
- bindings
- statuses
- lineage references
- validation findings
- lifecycle state

It should not be the primary home
for large binary asset payloads.


# ============================================================
# 2. PROJECT SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_project
- builder_project_status
- builder_project_linkage

builder_project minimum logical columns:
- project_code
- workspace_code
- game_title_code nullable where pre-link phase exists
- project_name
- project_status
- runtime_family_code
- runtime_profile_code nullable
- ruleset_profile_code nullable
- template_profile_code nullable
- template_family_code nullable
- template_tier nullable
- created_at
- updated_at

Project is the primary Builder authoring root.


# ============================================================
# 3. BLOCK SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_block
- builder_block_payload
- builder_block_validation_state
- builder_block_lineage

builder_block minimum logical columns:
- block_id
- project_code
- block_type
- block_title
- parent_block_id nullable
- order_index
- zone_classification
- block_status
- created_at
- updated_at

builder_block_payload minimum logical columns:
- block_id
- payload_version
- content_payload_json
- created_at

Payload storage must remain queryable enough
for validation and editor navigation.


# ============================================================
# 4. REVISION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_revision
- builder_revision_snapshot_ref
- builder_revision_validation_link

builder_revision minimum logical columns:
- revision_ref
- project_code
- revision_number
- revision_status
- content_hash
- created_by
- created_at

Revision is immutable once created.


# ============================================================
# 5. AUTOSAVE SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_autosave_snapshot
- builder_autosave_payload_ref

builder_autosave_snapshot minimum logical columns:
- autosave_snapshot_ref
- project_code
- snapshot_status
- snapshot_hash
- created_at
- origin_summary

Autosave must remain distinct from revision.


# ============================================================
# 6. ASSET SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_asset
- builder_asset_variant
- builder_asset_binding
- builder_asset_usage
- builder_asset_validation_state

builder_asset minimum logical columns:
- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- usage_scope
- source_type
- asset_hash nullable
- created_at
- updated_at

builder_asset_binding minimum logical columns:
- binding_ref
- project_code
- asset_ref
- target_scope_type
- target_scope_ref
- usage_scope
- binding_status
- created_at
- updated_at


# ============================================================
# 7. PREVIEW SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_preview_session
- builder_preview_state_ref
- builder_preview_output

builder_preview_session minimum logical columns:
- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- session_status
- mock_mode_summary_json nullable
- created_at
- updated_at
- expires_at nullable

Preview data remains non-authoritative.


# ============================================================
# 8. VALIDATION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_validation_result
- builder_validation_finding

builder_validation_result minimum logical columns:
- validation_result_ref
- project_code
- validation_stage
- validation_status
- basis_type
- basis_ref nullable
- runtime_family_code
- blocking_count
- warning_count
- info_count
- detected_at

builder_validation_finding minimum logical columns:
- finding_id
- validation_result_ref
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint nullable
- detected_at


# ============================================================
# 9. EXPORT SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_export_package
- builder_runtime_export_contract_ref
- builder_export_manifest_ref

builder_export_package minimum logical columns:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- created_at
- updated_at


# ============================================================
# 10. SUBMISSION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_submission_request
- builder_submission_status_history

builder_submission_request minimum logical columns:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- created_at
- updated_at


# ============================================================
# 11. COLLABORATION SCHEMA FAMILY
# ============================================================

Minimum logical tables:

- builder_project_collaborator
- builder_project_lock
- builder_block_lock
- builder_comment

builder_project_collaborator minimum logical columns:
- project_code
- collaborator_identity
- role_code
- collaborator_status
- created_at
- updated_at

builder_block_lock minimum logical columns:
- block_id
- lock_holder_identity
- lock_status
- acquired_at
- expires_at nullable

builder_comment minimum logical columns:
- comment_ref
- project_code
- target_scope_type
- target_scope_ref
- author_identity
- comment_status
- comment_body
- created_at
- updated_at


# ============================================================
# 12. STATUS / ENUM PRINCIPLE
# ============================================================

All lifecycle-heavy tables should use explicit statuses.

Examples:
- project_status
- block_status
- revision_status
- snapshot_status
- asset_status
- session_status
- validation_status
- export_status
- submission_status
- lock_status
- comment_status

Status ambiguity is prohibited.


# ============================================================
# 13. LINEAGE PRINCIPLE
# ============================================================

The DB must support lineage across:
- project
- block
- revision
- autosave
- asset
- export
- submission

Lineage is necessary for:
- restore
- audit
- export tracing
- submission tracing
- safe duplication


# ============================================================
# 14. JSON / STRUCTURED PAYLOAD PRINCIPLE
# ============================================================

Builder may store some structured payloads as JSON-like columns,
but only where:
- validation can still inspect required structure
- editor can still navigate required structure
- critical identities remain relationally addressable

Opaque blob-only block truth is discouraged.


# ============================================================
# 15. FINAL ARCHITECTURAL RULE
# ============================================================

The Builder DB schema must remain structured,
status-explicit,
and lineage-aware.

Core summary:

- project is the root authoring object
- block is the minimum content object
- revision and autosave remain distinct
- asset metadata and bindings remain explicit
- preview remains non-authoritative
- validation findings remain structured
- export and submission remain explicit lifecycle objects
- collaboration and locks remain first-class




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202660_GAME_BUILDER_FRONTEND_STATE_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER FRONTEND STATE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official frontend state architecture of Game Builder.

This architecture defines how Builder frontend state
should be separated and managed.

It covers:
- app shell state
- project state
- editor working state
- autosave/save state
- asset studio state
- preview state
- validation state
- export/submission state
- UI-only transient state


# ============================================================
# 1. FRONTEND STATE PRINCIPLE
# ============================================================

Frontend state must preserve the same distinctions
as backend Builder truth.

It must not collapse:
- working state
- autosave state
- official save state
- preview state
- validation state
- export/submission state

Frontend state must remain predictable and debuggable.


# ============================================================
# 2. STATE DOMAINS
# ============================================================

Minimum frontend state domains:

- app_shell_state
- project_list_state
- active_project_state
- editor_working_state
- save_state
- asset_state
- preview_state
- validation_state
- export_state
- submission_state
- ui_transient_state


# ============================================================
# 3. APP SHELL STATE
# ============================================================

Contains:
- active_workspace_code
- active_project_code nullable
- current_screen
- role_context
- global_status_summary

This state is navigation-oriented.


# ============================================================
# 4. ACTIVE PROJECT STATE
# ============================================================

Contains:
- project metadata
- runtime/template bindings
- latest revision summary
- latest autosave summary
- linkage summaries
- validation/export/submission summaries

This state reflects backend Builder truth.


# ============================================================
# 5. EDITOR WORKING STATE
# ============================================================

Contains:
- block tree working copy
- active block selection
- unsaved block edits
- reorder operations
- inline diagnostics cache
- local editing context

This state is volatile and may diverge from saved revision.


# ============================================================
# 6. SAVE STATE
# ============================================================

Contains:
- dirty_state
- latest_revision_ref
- latest_autosave_snapshot_ref
- autosave_newer_than_latest_revision
- save_in_progress flag
- autosave_in_progress flag

Save state must always be visible enough for UI.


# ============================================================
# 7. ASSET STATE
# ============================================================

Contains:
- asset list
- selected asset
- asset filters
- upload progress
- asset editor working state
- variant generation state
- binding inspector state

Asset payload preview caches may be separate from metadata truth.


# ============================================================
# 8. PREVIEW STATE
# ============================================================

Contains:
- preview_session_id
- preview_basis
- preview_mode
- mock_mode_summary
- preview runtime state summary
- preview outputs
- preview loading/running/error flags

Preview state must be sandbox-labeled
and must not merge into save state.


# ============================================================
# 9. VALIDATION STATE
# ============================================================

Contains:
- latest validation result refs by stage
- active validation stage
- findings list
- grouping/filter mode
- rerun status
- freshness indicators

Validation state is not equivalent to save state.


# ============================================================
# 10. EXPORT / SUBMISSION STATE
# ============================================================

Contains:
- export readiness summary
- latest export package summary
- export history list
- runtime export contract summary
- submission readiness summary
- submission history/status

Export/submission state must not be mixed
into editor working state.


# ============================================================
# 11. UI-ONLY TRANSIENT STATE
# ============================================================

Contains:
- panel collapse/open state
- current filter text
- modal visibility
- drag-and-drop hover state
- tab choice
- local unsaved form helper state

This state must not be treated as Builder truth.


# ============================================================
# 12. DERIVATION RULE
# ============================================================

Frontend should derive display-oriented summaries from formal state,
but must not fabricate platform truths.

Examples of safe derivation:
- grouped finding counts
- display labels
- block tree folding
- asset gallery filters

Unsafe derivation examples:
- treating autosave as official save
- treating preview success as export validity
- treating exported as published


# ============================================================
# 13. FINAL ARCHITECTURAL RULE
# ============================================================

Frontend state must remain domain-separated and explicit.

Core summary:

- app shell, project, editor, asset, preview, validation,
  export, and submission state remain distinct
- working state is volatile
- save state is formal
- preview state is sandbox-only
- UI-only transient state is not Builder truth




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202661_GAME_BUILDER_TEMPLATE_EXPANSION_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER TEMPLATE EXPANSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official template expansion architecture of Game Builder.

This architecture defines how template-selected projects
expand into concrete Builder structures.

It covers:
- template clone into project
- required block expansion
- default asset set expansion
- template binding persistence
- editable/protected/override zones
- template version drift handling


# ============================================================
# 1. TEMPLATE EXPANSION ROLE
# ============================================================

Template expansion turns a template choice
into a concrete Builder project structure.

It must:
- create initial project skeleton
- create required blocks
- bind runtime/template metadata
- bind required asset family expectations
- preserve template lineage

It must not:
- create runtime ambiguity
- create hidden block structures
- silently destroy template lineage


# ============================================================
# 2. EXPANSION OUTPUTS
# ============================================================

Template expansion must produce at minimum:

- project root metadata
- runtime/template bindings
- required block skeletons
- required asset family expectations
- initial project status
- editable/protected/override zone annotations


# ============================================================
# 3. REQUIRED BLOCK EXPANSION
# ============================================================

A template must explicitly define required blocks.

Expansion must instantiate:
- required root blocks
- required child blocks
- required structural relationships
- required placeholder metadata where needed

Missing required blocks after expansion is invalid.


# ============================================================
# 4. DEFAULT ASSET EXPANSION
# ============================================================

A template may supply default assets or default bindings.

Expansion must make visible:
- template default asset source
- required asset family set
- project override capability
- unresolved asset families if template leaves them open intentionally


# ============================================================
# 5. ZONE EXPANSION
# ============================================================

Template expansion must annotate structure with zone classes:

- protected_zone
- editable_zone
- advanced_override_zone

This annotation must survive into Main Editor behavior.


# ============================================================
# 6. TEMPLATE VERSION DRIFT
# ============================================================

A project created from a template must preserve
which template version it originated from.

Template updates must not silently rewrite existing projects.

Possible future support:
- inspect newer template version availability
- offer migration or patch assistance
- preserve explicit creator choice

Silent template mutation is prohibited.


# ============================================================
# 7. FINAL ARCHITECTURAL RULE
# ============================================================

Template expansion must remain explicit,
lineage-preserving,
and runtime-safe.

Core summary:

- template choice becomes project skeleton
- required blocks are instantiated explicitly
- required asset expectations are made visible
- zone annotations are preserved
- template lineage remains explicit
- silent drift mutation is prohibited




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202662_GAME_BUILDER_COLLABORATION_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER COLLABORATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official collaboration architecture of Game Builder.

This architecture defines:
- collaborator roles
- lock strategy
- comment/review flows
- conflict visibility
- review/publisher access boundaries

It covers initial non-realtime-first collaboration.


# ============================================================
# 1. COLLABORATION PRINCIPLE
# ============================================================

Initial Builder collaboration is role-aware
and lock-aware, not unrestricted realtime by default.

The system must optimize for:
- safety
- clarity
- reviewability
- release confidence

It must not assume unrestricted simultaneous mutation.


# ============================================================
# 2. PRIMARY ROLES
# ============================================================

Minimum roles:
- owner
- editor
- reviewer
- publisher

owner:
- full project authority

editor:
- structured authoring authority according to policy

reviewer:
- read/comment/validation-oriented visibility

publisher:
- export/submission-oriented visibility and authority


# ============================================================
# 3. LOCK MODEL
# ============================================================

Initial lock concepts:
- project lock
- block lock

Block lock is preferred when feasible.

Locks must expose:
- lock holder
- lock status
- lock start
- expiry where applicable

Lock conflict must be explicit.


# ============================================================
# 4. COMMENT MODEL
# ============================================================

Comments must be attachable to:
- project
- block
- asset
- validation finding
- export/submission context where useful

Comment truth must remain separate from validation truth.

Comments do not change formal validation results.


# ============================================================
# 5. REVIEW FLOW
# ============================================================

A reviewer should be able to:
- inspect project status
- inspect validation results
- inspect preview
- leave comments
- avoid unrestricted authoring mutation

This supports release confidence without authoring escalation.


# ============================================================
# 6. CONFLICT VISIBILITY
# ============================================================

The system must make visible:
- lock conflicts
- stale edit contexts
- autosave vs revision freshness
- potential overwrite risk

Silent overwrite risk is discouraged.


# ============================================================
# 7. FINAL ARCHITECTURAL RULE
# ============================================================

Builder collaboration must remain explicit,
role-aware,
and lock-aware.

Core summary:

- owner/editor/reviewer/publisher roles remain distinct
- project and block locks remain explicit
- comments support review
- comments do not alter validation truth
- collaboration optimizes for safety over hidden concurrency




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202663_GAME_BUILDER_UI_COMPONENT_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER UI COMPONENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI component architecture of Game Builder.

This architecture defines the component-level frontend structure
needed to implement Builder screens and workflows.

It covers:
- app shell components
- project navigation components
- editor components
- asset studio components
- preview components
- validation components
- export/publish components
- shared status and action components


# ============================================================
# 1. UI COMPONENT PRINCIPLE
# ============================================================

Builder UI must be componentized by domain responsibility.

Primary component groups:
- shell components
- project components
- editor components
- asset components
- preview components
- validation components
- export/submission components
- shared utility components

The UI component system must preserve:
- state visibility
- role awareness
- runtime awareness
- save/validation/export distinction


# ============================================================
# 2. APP SHELL COMPONENTS
# ============================================================

Minimum shell components:

- BuilderAppShell
- BuilderTopBar
- BuilderSidebar
- BuilderStatusBar
- BuilderWorkspaceSwitcher
- BuilderRouteContainer

Responsibilities:
- global navigation
- workspace visibility
- current project visibility
- global save/validation/export state visibility
- screen routing


# ============================================================
# 3. PROJECT COMPONENTS
# ============================================================

Minimum project components:

- ProjectListView
- ProjectCard
- ProjectFilterBar
- TemplateGalleryView
- TemplateCard
- ProjectOverviewView
- ProjectMetadataPanel
- ProjectLifecyclePanel

Responsibilities:
- project discovery
- template-first creation
- project overview rendering
- lifecycle summary rendering


# ============================================================
# 4. MAIN EDITOR COMPONENTS
# ============================================================

Minimum editor components:

- MainEditorShell
- StructureTreePanel
- StructureTreeNode
- BlockEditorSurface
- BlockToolbar
- BlockQuickAddMenu
- PropertyInspectorPanel
- ZoneBadge
- InlineValidationBadge
- DirtyStateIndicator

Responsibilities:
- block navigation
- block CRUD interaction
- block content editing
- property editing
- zone awareness
- inline validation visibility


# ============================================================
# 5. ASSET STUDIO COMPONENTS
# ============================================================

Minimum asset components:

- AssetStudioShell
- AssetBrowserGrid
- AssetDetailPanel
- AssetUploadPanel
- AssetBindingInspector
- PixelArtEditorCanvas
- UnitArtEditorCanvas
- BuildingArtEditorCanvas
- LayerPanel
- PalettePanel
- VariantGeneratorPanel

Responsibilities:
- asset browsing
- asset upload
- asset editing
- variant creation
- asset binding inspection


# ============================================================
# 6. PREVIEW COMPONENTS
# ============================================================

Minimum preview components:

- PreviewStudioShell
- PreviewSessionHeader
- PreviewModeSelector
- PreviewBasisBadge
- MockModeBadge
- PreviewCanvasOrRuntimeView
- PreviewStatePanel
- PreviewOutputPanel
- PreviewControlBar

Responsibilities:
- preview session display
- basis/mode visibility
- mock/sandbox visibility
- preview output display
- reset/restart/discard controls


# ============================================================
# 7. VALIDATION COMPONENTS
# ============================================================

Minimum validation components:

- ValidationCenterShell
- ValidationStageTabs
- ValidationSummaryPanel
- ValidationFindingList
- ValidationFindingRow
- SeverityFilterBar
- ValidationJumpPanel
- ValidationFreshnessBadge

Responsibilities:
- stage switching
- severity grouping
- findings navigation
- freshness visibility
- rerun actions


# ============================================================
# 8. EXPORT / SUBMISSION COMPONENTS
# ============================================================

Minimum export/submission components:

- ExportPublishCenterShell
- ExportReadinessPanel
- ExportHistoryList
- RuntimeExportContractPanel
- SubmissionReadinessPanel
- SubmissionHistoryList
- LifecycleStatusBadge
- ExplicitActionConfirmPanel

Responsibilities:
- readiness inspection
- export initiation
- submission initiation
- runtime contract inspection
- lifecycle visibility


# ============================================================
# 9. SHARED COMPONENTS
# ============================================================

Minimum shared components:

- SaveStateBadge
- ValidationStateBadge
- ExportStateBadge
- SubmissionStateBadge
- RuntimeFamilyBadge
- TemplateFamilyBadge
- RoleBadge
- LockBadge
- StatusPill
- EmptyStatePanel
- ErrorStatePanel
- ConfirmDialog

Shared components must keep Builder status language consistent.


# ============================================================
# 10. FINAL ARCHITECTURAL RULE
# ============================================================

Builder UI must be domain-componentized and state-explicit.

Core summary:

- shell components own navigation
- project components own selection/overview
- editor components own structured authoring
- asset components own material editing
- preview components own sandbox visibility
- validation components own diagnostics
- export/submission components own handoff clarity
- shared badges keep status language consistent




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202664_GAME_BUILDER_SECURITY_PERMISSION_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER SECURITY PERMISSION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official security and permission architecture of Game Builder.

This architecture defines:
- role-based access
- project-level permission boundaries
- block/asset mutation boundaries
- preview permissions
- export/submission permissions
- lock-aware enforcement
- Persona boundary enforcement


# ============================================================
# 1. SECURITY PRINCIPLE
# ============================================================

Builder must be fail-closed on unauthorized mutation.

No screen visibility alone is sufficient.
Permissions must be enforced at service and API level.

Primary concerns:
- unauthorized project mutation
- unauthorized block mutation
- unauthorized asset mutation
- unauthorized export/submission
- Persona boundary violation
- hidden permission escalation


# ============================================================
# 2. ROLE MODEL
# ============================================================

Minimum roles:
- owner
- editor
- reviewer
- publisher

owner:
- full authority

editor:
- authoring authority within policy

reviewer:
- inspection/comment authority

publisher:
- export/submission authority within policy


# ============================================================
# 3. PERMISSION DOMAINS
# ============================================================

Permissions must be evaluated separately for:

- project metadata mutation
- block mutation
- asset mutation
- preview execution
- validation execution
- export creation
- submission creation
- collaborator management
- lock override where applicable

No implied cross-domain permission should exist by accident.


# ============================================================
# 4. PERSONA BOUNDARY ENFORCEMENT
# ============================================================

Builder must never become a Persona authority surface.

Allowed:
- approved Persona projection reference
- approved cast presentation reference

Prohibited:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation

Violation must be blocking.


# ============================================================
# 5. LOCK-AWARE SECURITY
# ============================================================

Where locks are enabled:
- mutation must check lock state
- override must require explicit higher authority
- stale lock handling must remain explicit
- hidden overwrite is prohibited


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Builder security must be role-aware, API-enforced, and fail-closed.

Core summary:

- permissions are domain-specific
- screen visibility is not enough
- unauthorized mutation is blocked
- lock conflicts are explicit
- Persona boundary is strictly enforced




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202665_GAME_BUILDER_IMPLEMENTATION_PHASE_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER IMPLEMENTATION PHASE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official phased implementation architecture of Game Builder.

This architecture defines a staged implementation path
that preserves Builder integrity while enabling iterative delivery.


# ============================================================
# 1. PHASE PRINCIPLE
# ============================================================

Builder should be implemented in phases
that preserve structural correctness.

Each phase must end in a coherent Builder slice,
not a random feature pile.


# ============================================================
# 2. OFFICIAL PHASES
# ============================================================

Phase B1:
- workspace + project list
- template gallery
- project creation
- project overview

Phase B2:
- main editor shell
- structure tree
- block CRUD
- save / autosave / revision basics

Phase B3:
- asset browser
- upload / replace / bind
- pixel editor MVP
- asset validation basics

Phase B4:
- preview session create/open/close
- working-state preview
- saved-revision preview
- sandbox labeling

Phase B5:
- validation center
- editing/export/publish validation surfaces
- export readiness
- export package creation

Phase B6:
- submission readiness
- submission creation
- submission history/status

Phase B7:
- collaboration roles
- comments
- lock handling
- reviewer/publisher workflows

Phase B8:
- richer unit/building editors
- richer variant tools
- richer preview state inspection
- rollout-facing polish


# ============================================================
# 3. PHASE GATE RULE
# ============================================================

A later phase must not assume stability
from an earlier phase that was never completed.

For example:
- export should not precede revision correctness
- submission should not precede export correctness
- collaboration should not precede basic mutation correctness


# ============================================================
# 4. FINAL ARCHITECTURAL RULE
# ============================================================

Builder implementation should proceed by coherent vertical slices.

Core summary:

- B1 project/template foundation
- B2 editor foundation
- B3 asset foundation
- B4 preview foundation
- B5 validation/export foundation
- B6 submission foundation
- B7 collaboration foundation
- B8 polish and advanced capability




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202666_GAME_BUILDER_COMPLETION_REVIEW_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER COMPLETION REVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official completion review architecture of Game Builder.

This architecture defines how Builder design completion
should be reviewed before implementation begins.

It covers:
- completion review scope
- completion review checkpoints
- architectural completeness criteria
- implementation-readiness criteria
- explicit remaining-detail tracking


# ============================================================
# 1. ROLE OF COMPLETION REVIEW
# ============================================================

Completion review exists to ensure that
Builder design has reached implementation-ready quality.

It must answer:
- is the Builder architecture structurally complete
- are required interfaces defined
- are save/preview/export/submission boundaries explicit
- are runtime and Persona boundaries explicit
- are remaining unknowns identified clearly

Completion review is not a cosmetic quality check only.
It is an implementation-readiness gate.


# ============================================================
# 2. COMPLETION REVIEW DOMAINS
# ============================================================

Completion review must inspect at minimum:

- Builder overview and screen architecture
- state and save architecture
- main editor architecture
- asset studio architecture
- preview studio architecture
- validation center architecture
- export/publish center architecture
- API interface detail
- DB/storage architecture
- frontend state architecture
- template expansion architecture
- collaboration architecture
- security/permission architecture
- implementation phase architecture
- development task structure


# ============================================================
# 3. COMPLETENESS CRITERIA
# ============================================================

Builder design is architecturally complete when:

- all primary screens are defined
- all primary Builder domains are defined
- all save/revision/autosave distinctions are explicit
- preview sandbox behavior is explicit
- validation/export/submission boundaries are explicit
- runtime dependency is explicit
- Persona boundary is explicit
- role/permission model is explicit
- implementation phase order is explicit

Architectural completeness does not require
final code-level decisions for every widget,
but must remove structural ambiguity.


# ============================================================
# 4. IMPLEMENTATION-READINESS CRITERIA
# ============================================================

Builder design is implementation-ready when:

- primary APIs are defined
- primary DB schema families are defined
- storage boundaries are defined
- UI component boundaries are defined
- task structure is defined
- obvious unresolved lifecycle conflicts are absent
- runtime/template/asset/export interactions are explicit

Implementation-readiness means
a team can begin task slicing without redesigning core flows.


# ============================================================
# 5. EXPLICIT REMAINING-DETAIL RULE
# ============================================================

Completion review must not hide remaining unknowns.

Any still-thin area must be listed explicitly as:
- unresolved
- intentionally deferred
- implementation-choice-level
- future enhancement

This prevents false confidence.


# ============================================================
# 6. FINAL ARCHITECTURAL RULE
# ============================================================

Builder completion review must be explicit and implementation-oriented.

Core summary:

- completion review checks architectural completeness
- implementation-readiness is a distinct test
- remaining unknowns must be listed explicitly
- no hidden ambiguity should remain in core Builder flows




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202667_GAME_BUILDER_OBJECT_STORAGE_KEY_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER OBJECT STORAGE KEY ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official object storage key architecture of Game Builder.

This architecture defines how heavy Builder payloads
should be organized in object storage.

It covers:
- raw asset payload keys
- derived asset payload keys
- autosave payload keys
- revision snapshot payload keys
- preview temporary payload keys
- export bundle keys
- manifest keys


# ============================================================
# 1. STORAGE KEY PRINCIPLE
# ============================================================

Object storage keys must be:

- deterministic enough for traceability
- partitioned enough for lifecycle cleanup
- explicit about payload class
- explicit about project or artifact scope

Keys must not depend on ambiguous mutable names only.


# ============================================================
# 2. REQUIRED TOP-LEVEL PARTITIONS
# ============================================================

Recommended top-level partitions:

- builder/raw-assets/
- builder/derived-assets/
- builder/autosaves/
- builder/revisions/
- builder/previews/
- builder/exports/
- builder/manifests/

Each partition must serve one lifecycle class only.


# ============================================================
# 3. RAW ASSET KEY SHAPE
# ============================================================

Recommended shape:

builder/raw-assets/{project_code}/{asset_ref}/{payload_hash_or_version}

This should support:
- source traceability
- easy project cleanup
- multi-version raw payload retention


# ============================================================
# 4. DERIVED ASSET KEY SHAPE
# ============================================================

Recommended shape:

builder/derived-assets/{project_code}/{source_asset_ref}/{derived_asset_ref}/{payload_hash_or_version}

This should preserve:
- parent-child lineage
- variant traceability
- export-safe payload separation


# ============================================================
# 5. AUTOSAVE KEY SHAPE
# ============================================================

Recommended shape:

builder/autosaves/{project_code}/{autosave_snapshot_ref}/{payload_hash_or_version}

Autosave payloads must remain clearly separate
from revisions and exports.


# ============================================================
# 6. REVISION SNAPSHOT KEY SHAPE
# ============================================================

Recommended shape:

builder/revisions/{project_code}/{revision_ref}/{payload_hash_or_version}

Revision payload storage should support:
- immutable restore
- export lineage
- later audit/debug where needed


# ============================================================
# 7. PREVIEW KEY SHAPE
# ============================================================

Recommended shape:

builder/previews/{project_code}/{preview_session_id}/{payload_class}/{payload_hash_or_version}

payload_class examples:
- temporary_state
- generated_visual
- replay_preview
- preview_debug_bundle

Preview keys must remain aggressively cleanup-friendly.


# ============================================================
# 8. EXPORT KEY SHAPE
# ============================================================

Recommended shape:

builder/exports/{project_code}/{export_package_code}/{artifact_class}/{payload_hash_or_version}

artifact_class examples:
- export_bundle
- runtime_contract
- asset_archive
- packaged_metadata

Exports must be lineage-traceable from project and package.


# ============================================================
# 9. MANIFEST KEY SHAPE
# ============================================================

Recommended shape:

builder/manifests/{project_code}/{manifest_class}/{manifest_ref}/{payload_hash_or_version}

manifest_class examples:
- asset_manifest
- export_manifest
- submission_manifest

Manifest keys must remain artifact-class explicit.


# ============================================================
# 10. FINAL ARCHITECTURAL RULE
# ============================================================

Builder object storage keys must remain lifecycle-explicit and lineage-friendly.

Core summary:

- each payload class gets its own partition
- project and artifact identity should appear in keys
- preview payloads must be easy to discard
- exports and manifests must remain traceable




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/265.builder-layer/0202668_GAME_BUILDER_OBSERVABILITY_LOGGING_ARCHITECTURE.md
============================================================

# ============================================================
# GAME BUILDER OBSERVABILITY LOGGING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official observability and logging architecture of Game Builder.

This architecture defines:
- what Builder events should be logged
- how domain events should be grouped
- minimum identifiers in logs
- failure analysis expectations


# ============================================================
# 1. OBSERVABILITY PRINCIPLE
# ============================================================

Builder logs must help answer:

- what the user tried to do
- on which project/block/asset/export/submission
- with which result
- why it failed if it failed

Logs must be domain-oriented, not vague.


# ============================================================
# 2. REQUIRED LOG DOMAINS
# ============================================================

Minimum domains:
- project lifecycle
- block mutation
- save/autosave
- asset import/edit/bind
- preview session lifecycle
- validation execution
- export execution
- submission execution
- lock/conflict events
- permission denial events


# ============================================================
# 3. MINIMUM LOG FIELDS
# ============================================================

Each significant log event should include at minimum:

- event_name
- project_code where applicable
- block_id or asset_ref where applicable
- revision_ref or autosave_snapshot_ref where applicable
- export_package_code or submission_request_ref where applicable
- correlation_id
- actor_identity summary
- result_status
- timestamp

Sensitive payload contents should not be dumped blindly.


# ============================================================
# 4. FAILURE ANALYSIS RULE
# ============================================================

Failures should expose:
- domain
- reason class
- affected scope
- retryability hint where applicable

Examples:
- validation_blocked
- lock_conflict
- permission_denied
- dependency_unresolved
- preview_policy_blocked
- export_creation_failed


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Builder observability must be domain-aware and debugging-friendly.

Core summary:

- log by Builder domain
- include object identity and correlation
- make failures classifiable
- avoid vague generic failure logging




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/000_MODEL_INDEX.md
============================================================

# ============================================================
# GAME OS MODEL INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
document_type: index
owner: Boss
prepared_by: Zero

subdomains:
- 110.player
- 111.persona-linkage
- 112.persona-state-and-reflection
- 113.gambling

documents:
- 110.player/0301100_GAME_OS_PLAYER_MODEL.md
- 110.player/0301101_GAME_PLAYER_PROFILE_MODEL.md
- 111.persona-linkage/0301110_GAME_PERSONA_CHARACTER_BINDING_MODEL.md
- 112.persona-state-and-reflection/0301120_GAME_PERSONA_STATE_MODEL.md
- 112.persona-state-and-reflection/0301121_GAME_PERSONA_RELATION_MODEL.md
- 112.persona-state-and-reflection/0301122_GAME_PERSONA_MEMORY_MARKER_MODEL.md
- 112.persona-state-and-reflection/0301123_PERSONA_IMPACT_EVENT_MODEL.md
- 112.persona-state-and-reflection/0301124_PERSONA_REFLECTION_CANDIDATE_MODEL.md
- 112.persona-state-and-reflection/0301125_PERSONA_REFLECTION_DECISION_MODEL.md
- 112.persona-state-and-reflection/0301126_PERSONA_REFLECTION_SYNC_RESULT_MODEL.md
- 113.gambling/0301130_GAMBLING_WAGER_MODEL.md
- 113.gambling/0301131_GAMBLING_ELIGIBILITY_RESULT_MODEL.md
- 113.gambling/0301132_GAME_OUTCOME_MODEL.md
- 113.gambling/0301133_GAME_SETTLEMENT_INSTRUCTION_MODEL.md
- 113.gambling/0301134_GAME_SETTLEMENT_RESULT_MODEL.md
- 113.gambling/0301135_GAME_REFUND_MODEL.md
- 113.gambling/0301136_GAME_REVERSAL_MODEL.md
- 113.gambling/0301137_GAMBLING_SAFETY_STATE_MODEL.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/000_MODEL_OVERVIEW.md
============================================================

# ============================================================
# GAME OS MODEL OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The GameOS model layer is split into player models, Persona linkage models,
Persona state/reflection models, and gambling economic models.

principles:
- participation subject is player
- Persona linkage is modeled separately from player core
- game-local Persona state is separated from reflection proposals
- wager, eligibility, outcome, settlement, refund, reversal, and safety are separated




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400001_GAME_PERSONA_ACCESS_REF_MODEL.md
============================================================

# ============================================================
# GAME PERSONA ACCESS REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona access state inside GameOS.

fields:
- game_user_id
- persona_id
- access_status
- access_scope
- effective_from
- effective_until
- synced_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400002_GAME_PERSONA_LICENSE_REF_MODEL.md
============================================================

# ============================================================
# GAME PERSONA LICENSE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona license or usage permission state inside GameOS.

fields:
- game_user_id
- persona_id
- usage_permission_status
- granted_scope
- revoked_reason
- synced_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400003_GAME_PERSONA_RELEASE_REF_MODEL.md
============================================================

# ============================================================
# GAME PERSONA RELEASE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona release validity state inside GameOS.

fields:
- game_user_id
- persona_id
- release_status
- release_version
- effective_from
- effective_until
- synced_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400004_GAME_PERSONA_USAGE_BINDING_MODEL.md
============================================================

# ============================================================
# GAME PERSONA USAGE BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Bind GameOS usage context to a Persona.

fields:
- binding_id
- game_user_id
- persona_id
- binding_status
- usage_context
- primary_persona_flag
- updated_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400005_GAME_PERSONA_GROWTH_REF_MODEL.md
============================================================

# ============================================================
# GAME PERSONA GROWTH REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Track Game-originated growth synchronization state.

fields:
- game_user_id
- persona_id
- last_growth_request_id
- last_growth_event_type
- last_growth_sent_at
- last_growth_result_status
- last_growth_applied_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/040.persona/0300400006_GAME_PERSONA_TRUST_REF_MODEL.md
============================================================

# ============================================================
# GAME PERSONA TRUST REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona trust-related values inside GameOS.

fields:
- game_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- last_evaluated_at

usage_rule:
Permission and trust are separate.
Trust gates exposure strength in GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/050.integration/0300500002_GAME_EVENT_OUTBOX_MODEL.md
============================================================

# ============================================================
# GAME EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound integration events emitted from GameOS.

fields:
- outbox_event_id
- event_type
- aggregate_type
- aggregate_id
- payload
- dispatch_status
- retry_count
- correlation_id
- causation_id
- created_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/050.integration/0300500003_GAME_PERSONA_GROWTH_REQUEST_MODEL.md
============================================================

# ============================================================
# GAME PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Represent a Game-originated request to Persona growth processing.

fields:
- growth_request_id
- game_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- created_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/050.integration/0300500004_GAME_SYNC_EVENT_INBOX_MODEL.md
============================================================

# ============================================================
# GAME SYNC EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound sync results received by GameOS from PersonaOS.

fields:
- inbox_event_id
- sync_event_type
- source_system
- payload
- consume_status
- correlation_id
- created_at
- consumed_at




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/110.player/0301100_GAME_OS_PLAYER_MODEL.md
============================================================

# ============================================================
# GAME OS PLAYER MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: player
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
player is the canonical participation subject of GameOS.
Persona usage is optional and never replaces player ownership.

responsibilities:
- participation anchor
- result ownership anchor
- ranking ownership anchor
- gambling wager subject
- safety control subject
- audit anchor

non_responsibilities:
- Persona canonical truth
- wallet canonical balance
- title-local romance state
- title-local battle tuning
- settlement truth

core_principles:
- player exists even without Persona binding
- Persona is optional and separate
- gambling eligibility is evaluated against player
- ranking and reward ownership remain on player




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/110.player/0301101_GAME_PLAYER_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME PLAYER PROFILE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: player-profile
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
player_profile is the presentation, preference, and visibility model
attached to player.

responsibilities:
- display name
- public visibility
- ranking visibility preference
- Persona usage preference
- locale and language preference
- avatar and presentation preference

non_responsibilities:
- player participation truth
- gambling eligibility truth
- wallet truth
- Persona binding truth
- local Persona state

core_principles:
- player core and player_profile are separate
- profile changes do not change player identity
- Persona preference is not Persona binding
- gambling safety and eligibility must not be stored in profile




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/111.persona-linkage/0301110_GAME_PERSONA_CHARACTER_BINDING_MODEL.md
============================================================

# ============================================================
# GAME PERSONA CHARACTER BINDING MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-character-binding
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona-character binding is the canonical contract linking a game character
to Persona-based appearance, interaction, relation, memory, and continuity.

responsibilities:
- character to Persona linkage
- binding depth
- binding scope
- continuity class
- canonical linkage level
- reflection eligibility

binding_depth:
- display-only
- interactive
- relation-capable
- persistent
- canonical-linked

canonical_linkage_level:
- none-bound
- template-bound
- soft-bound
- hard-bound

core_principles:
- game character and Persona are separate
- title-local character truth must not overwrite Persona canonical truth
- stronger linkage requires stronger audit and reflection control




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/000_PERSONA_STATE_AND_REFLECTION_INDEX.md
============================================================

# ============================================================
# GAME OS PERSONA STATE AND REFLECTION INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-state-and-reflection
document_type: index
owner: Boss
prepared_by: Zero

documents:
- 0301120_GAME_PERSONA_STATE_MODEL.md
- 0301121_GAME_PERSONA_RELATION_MODEL.md
- 0301122_GAME_PERSONA_MEMORY_MARKER_MODEL.md
- 0301123_PERSONA_IMPACT_EVENT_MODEL.md
- 0301124_PERSONA_REFLECTION_CANDIDATE_MODEL.md
- 0301125_PERSONA_REFLECTION_DECISION_MODEL.md
- 0301126_PERSONA_REFLECTION_SYNC_RESULT_MODEL.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/000_PERSONA_STATE_AND_REFLECTION_OVERVIEW.md
============================================================

# ============================================================
# GAME OS PERSONA STATE AND REFLECTION OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-state-and-reflection
document_type: overview
owner: Boss
prepared_by: Zero

summary:
This domain contains the full GameOS local Persona meaning chain.

chain:
- game Persona state
- game Persona relation
- game Persona memory marker
- persona impact event
- persona reflection candidate
- persona reflection decision
- persona reflection sync result

principles:
- game-local state is not PersonaOS canonical truth
- relation is separated from raw state
- memory marker is separated from raw event log
- impact event is separated from reflection candidate
- decision is separated from sync
- direct overwrite is forbidden




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301120_GAME_PERSONA_STATE_MODEL.md
============================================================

# ============================================================
# GAME PERSONA STATE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-persona-state
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_persona_state stores GameOS local truth for Persona or Persona-connected
characters within title, runtime, session, route, or save context.

categories:
- romance-state
- battle-state
- companion-state
- navigator-state
- memory-adjacent-state

scope_examples:
- interaction-scoped
- session-scoped
- save-scoped
- title-scoped

core_principles:
- this is not PersonaOS canonical state
- local values must not directly become canonical values
- state feeds relation, memory marker, and impact extraction




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301121_GAME_PERSONA_RELATION_MODEL.md
============================================================

# ============================================================
# GAME PERSONA RELATION MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-persona-relation
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_persona_relation is the local truth model for subject-target meaning
relations formed through repeated interaction and major events.

relation_types:
- trust
- closeness
- romance
- rivalry
- hostility
- support
- loyalty
- familiarity

responsibilities:
- subject-target relation anchor
- continuity anchor
- threshold anchor
- summary anchor
- reflection preparation anchor

core_principles:
- relation is not the same as state
- relation must keep subject and target explicit
- route progress and relation meaning must be separated




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301122_GAME_PERSONA_MEMORY_MARKER_MODEL.md
============================================================

# ============================================================
# GAME PERSONA MEMORY MARKER MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-persona-memory-marker
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_persona_memory_marker stores meaningful local memory traces that may later
support relation summaries or reflection candidates.

marker_types:
- promise marker
- rescue marker
- betrayal marker
- repeated encounter marker
- shared milestone marker
- emotional turning-point marker

responsibilities:
- salience anchor
- relation-support anchor
- memory-candidate anchor
- repeated-experience anchor

core_principles:
- marker is not raw event log
- marker is not canonical memory
- marker supports impact extraction, not direct canonical overwrite




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301123_PERSONA_IMPACT_EVENT_MODEL.md
============================================================

# ============================================================
# PERSONA IMPACT EVENT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-impact-event
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona_impact_event is the local extracted meaning event positioned between
state/relation/marker and reflection candidate.

impact_types:
- trust-deepening
- closeness-deepening
- romance-shift
- rivalry-crystallization
- hostility-hardening
- support-bond
- memory-significance
- growth-like-tendency

responsibilities:
- impact extraction anchor
- evidence anchor
- interpretation anchor
- candidate preparation anchor

core_principles:
- impact event is not final proposal
- evidence is mandatory
- title-local convenience values must be transformed before proposal




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301124_PERSONA_REFLECTION_CANDIDATE_MODEL.md
============================================================

# ============================================================
# PERSONA REFLECTION CANDIDATE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-reflection-candidate
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona_reflection_candidate is the formal proposal unit sent from GameOS to
PersonaOS after local impact has been summarized and transformed.

candidate_types:
- relation-deepening proposal
- rivalry-establishment proposal
- memory-candidate proposal
- trust-adjustment proposal
- persistent-reaction-change proposal
- growth-like-tendency proposal
- support-bond proposal

responsibilities:
- proposal anchor
- transformed meaning anchor
- evidence anchor
- decision preparation anchor
- sync anchor

core_principles:
- candidate is not accepted truth
- transformed meaning must be external-canonical friendly
- raw title-local flags must not be sent as canonical proposals




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301125_PERSONA_REFLECTION_DECISION_MODEL.md
============================================================

# ============================================================
# PERSONA REFLECTION DECISION MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-reflection-decision
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona_reflection_decision records how a reflection candidate was evaluated.

decision_results:
- accepted
- rejected
- deferred
- merged
- transformed
- returned-for-review

responsibilities:
- evaluation result anchor
- rationale anchor
- transformed adoption anchor
- correction anchor
- audit anchor

core_principles:
- proposal and decision are separate
- accepted does not necessarily mean canonical apply completed
- transformed adoption is a first-class path




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/112.persona-state-and-reflection/0301126_PERSONA_REFLECTION_SYNC_RESULT_MODEL.md
============================================================

# ============================================================
# PERSONA REFLECTION SYNC RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-reflection-sync-result
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona_reflection_sync_result records how a reflection candidate was dispatched,
acknowledged, deduplicated, retried, and externally linked.

responsibilities:
- dispatch result anchor
- acknowledgement anchor
- dedupe/idempotency anchor
- retry anchor
- external linkage anchor
- audit anchor

core_principles:
- sync result is not the candidate
- sync result is not the decision
- transport success and evaluation success must be separated




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/000_GAMBLING_INDEX.md
============================================================

# ============================================================
# GAME OS GAMBLING INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling
document_type: index
owner: Boss
prepared_by: Zero

documents:
- 0301130_GAMBLING_WAGER_MODEL.md
- 0301131_GAMBLING_ELIGIBILITY_RESULT_MODEL.md
- 0301132_GAME_OUTCOME_MODEL.md
- 0301133_GAME_SETTLEMENT_INSTRUCTION_MODEL.md
- 0301134_GAME_SETTLEMENT_RESULT_MODEL.md
- 0301135_GAME_REFUND_MODEL.md
- 0301136_GAME_REVERSAL_MODEL.md
- 0301137_GAMBLING_SAFETY_STATE_MODEL.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/000_GAMBLING_OVERVIEW.md
============================================================

# ============================================================
# GAME OS GAMBLING OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling
document_type: overview
owner: Boss
prepared_by: Zero

summary:
This domain contains the high-control national-currency gambling model chain.

chain:
- gambling eligibility result
- gambling wager
- game outcome
- settlement instruction
- settlement result
- refund
- reversal
- gambling safety state

principles:
- eligibility, wager, outcome, and settlement are separated
- wallet canonical truth does not live in GameOS
- refund and reversal are separate
- safety state is continuous control truth
- full auditability is mandatory




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301130_GAMBLING_WAGER_MODEL.md
============================================================

# ============================================================
# GAMBLING WAGER MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling-wager
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
gambling_wager is the GameOS-side bet contract unit covering wager intent,
eligibility linkage, lock linkage, activation, cancellation, and refund eligibility.

responsibilities:
- wager intent anchor
- activation anchor
- lock linkage anchor
- participation anchor
- cancellation and refund-eligibility anchor
- audit anchor

core_principles:
- wager intent and active wager are separate
- eligibility pass and wager activation are separate
- wallet canonical truth must not live in wager




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301131_GAMBLING_ELIGIBILITY_RESULT_MODEL.md
============================================================

# ============================================================
# GAMBLING ELIGIBILITY RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling-eligibility-result
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
gambling_eligibility_result is the formal evaluation result for whether a player
may participate in a national-currency wager under a given context.

overall_results:
- allowed
- denied
- blocked
- pending-review
- temporarily-unavailable
- system-unverifiable

check_dimensions:
- age/qualification
- region
- wallet readiness
- restriction
- self-exclusion
- cooldown
- limit
- anomaly/risk

core_principles:
- player and eligibility result are separate
- eligibility result is a snapshot, not a permanent truth
- pending-review must never be treated as allowed




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301132_GAME_OUTCOME_MODEL.md
============================================================

# ============================================================
# GAME OUTCOME MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-outcome
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_outcome is the GameOS-side formal result truth for a title, table, match,
or round.

outcome_statuses:
- pending
- provisional
- validating
- finalized
- void
- no-contest
- held
- corrected

responsibilities:
- result truth anchor
- provisional/finalized separation
- anomaly/hold anchor
- payout basis anchor
- correction anchor
- audit anchor

core_principles:
- outcome is not wager
- outcome is not settlement result
- finalized outcome and payout completion must remain separate




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301133_GAME_SETTLEMENT_INSTRUCTION_MODEL.md
============================================================

# ============================================================
# GAME SETTLEMENT INSTRUCTION MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-settlement-instruction
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_settlement_instruction is the formal request unit sent from GameOS to the
finance/settlement boundary after outcome finalization.

instruction_types:
- payout instruction
- refund instruction
- hold instruction
- reversal instruction
- manual-review instruction

core_principles:
- GameOS requests settlement but does not own wallet canonical truth
- instruction and result are separate
- idempotency and correction lineage are mandatory




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301134_GAME_SETTLEMENT_RESULT_MODEL.md
============================================================

# ============================================================
# GAME SETTLEMENT RESULT MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-settlement-result
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_settlement_result records how a settlement instruction was processed by the
finance/settlement boundary.

result_types:
- payout completed
- refund completed
- hold established
- reversal completed
- failed
- retry-needed
- manual-review-required

core_principles:
- settlement result is not outcome truth
- completed, held, failed, and retry-needed must be separated
- external reference tracking is required




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301135_GAME_REFUND_MODEL.md
============================================================

# ============================================================
# GAME REFUND MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-refund
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_refund is the formal return path for full or partial wager return.

refund_reasons:
- void result
- no contest
- cancelled before activation
- cancelled before start
- runtime failure before valid result
- eligibility invalidated before valid play
- manual corrective refund

core_principles:
- refund is not payout cancellation
- refund and reversal are separate
- refund reason is mandatory




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301136_GAME_REVERSAL_MODEL.md
============================================================

# ============================================================
# GAME REVERSAL MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: game-reversal
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
game_reversal is the formal correction path for already-processed payout, refund,
or settlement results.

reversal_reasons:
- duplicate payout correction
- erroneous payout correction
- incorrect refund correction
- anomaly repair
- operator-approved correction
- downstream finance mismatch correction

core_principles:
- reversal is not refund
- reversal is strong-audit correction
- silent correction is forbidden




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/113.gambling/0301137_GAMBLING_SAFETY_STATE_MODEL.md
============================================================

# ============================================================
# GAMBLING SAFETY STATE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling-safety-state
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
gambling_safety_state is the ongoing protection and control state for a player
participating in national-currency gambling.

major_states:
- normal
- observed
- warned
- limited
- cooldown-active
- self-excluded
- forced-paused
- operator-held

responsibilities:
- self-exclusion state
- cooldown state
- forced pause state
- operator hold state
- risk escalation markers
- intervention history

core_principles:
- safety state is not eligibility result
- safety state feeds eligibility decisions
- player protection measures must remain auditable




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302100_GAME_PLAYER_IDENTITY_MODEL.md
============================================================

# ============================================================
# GAME PLAYER IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game player identity model.

model_type:
- player identity truth model

primary_key:
- game_player_identity_id

natural_key:
- player_scope
- player_code
- identity_version

fields:
- game_player_identity_id
- player_scope
- player_code
- identity_version
- identity_status
- owner_scope
- profile_summary
- effective_from
- effective_until
- created_at
- updated_at

identity_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game player identities must expose explicit version semantics.

truth_boundary:
Game player identity truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302101_GAME_PLAYER_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME PLAYER PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game player profile model.

model_type:
- player profile truth model

primary_key:
- game_player_profile_id

natural_key:
- player_scope
- profile_code
- profile_version

fields:
- game_player_profile_id
- player_scope
- profile_code
- profile_version
- profile_status
- player_code
- preference_summary
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- revised
- archived

contract_version_rule:
Game player profiles must expose explicit version semantics.

truth_boundary:
Game player profile truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302102_GAME_WORLD_SESSION_MODEL.md
============================================================

# ============================================================
# GAME WORLD SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game world session model.

model_type:
- world session truth model

primary_key:
- game_world_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_world_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- player_code
- world_code
- session_summary
- source_state_version
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- completed
- interrupted
- archived

truth_boundary:
Game world session truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302103_GAME_CHARACTER_SLOT_MODEL.md
============================================================

# ============================================================
# GAME CHARACTER SLOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game character slot model.

model_type:
- character slot truth model

primary_key:
- game_character_slot_id

natural_key:
- slot_scope
- slot_code
- slot_version

fields:
- game_character_slot_id
- slot_scope
- slot_code
- slot_version
- slot_status
- player_code
- character_summary
- effective_from
- effective_until
- created_at
- updated_at

slot_status_enum:
- draft
- assigned
- active
- removed
- archived

contract_version_rule:
Game character slots must expose explicit version semantics.

truth_boundary:
Game character slot truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302104_GAME_PARTY_ROSTER_MODEL.md
============================================================

# ============================================================
# GAME PARTY ROSTER MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game party roster model.

model_type:
- party truth model

primary_key:
- game_party_roster_id

natural_key:
- roster_scope
- roster_code
- roster_version

fields:
- game_party_roster_id
- roster_scope
- roster_code
- roster_version
- roster_status
- player_code
- roster_summary
- effective_from
- effective_until
- created_at
- updated_at

roster_status_enum:
- draft
- approved
- active
- revised
- archived

contract_version_rule:
Game party rosters must expose explicit version semantics.

truth_boundary:
Game party roster truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/210.game-core/0302105_GAME_STATE_SNAPSHOT_MODEL.md
============================================================

# ============================================================
# GAME STATE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game state snapshot model.

model_type:
- state snapshot truth model

primary_key:
- game_state_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_state_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- player_code
- snapshot_hash
- source_lineage
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- superseded
- invalidated
- archived

truth_boundary:
Game state snapshot truth belongs to GameOS game-core domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302200_GAME_QUEST_MODEL.md
============================================================

# ============================================================
# GAME QUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game quest model.

model_type:
- quest truth model

primary_key:
- game_quest_id

natural_key:
- quest_scope
- quest_code
- quest_version

fields:
- game_quest_id
- quest_scope
- quest_code
- quest_version
- quest_status
- world_code
- quest_summary
- effective_from
- effective_until
- created_at
- updated_at

quest_status_enum:
- draft
- approved
- active
- retired
- archived

contract_version_rule:
Game quests must expose explicit version semantics.

truth_boundary:
Game quest truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302201_GAME_MISSION_PROGRESS_MODEL.md
============================================================

# ============================================================
# GAME MISSION PROGRESS MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game mission progress model.

model_type:
- mission progress truth model

primary_key:
- game_mission_progress_id

natural_key:
- progress_scope
- progress_ref
- progress_window

fields:
- game_mission_progress_id
- progress_scope
- progress_ref
- progress_window
- progress_status
- player_code
- mission_summary
- progress_value
- source_state_version
- recorded_at
- created_at
- updated_at

progress_status_enum:
- current
- revised
- completed
- failed
- archived

truth_boundary:
Game mission progress truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302202_GAME_REWARD_GRANT_MODEL.md
============================================================

# ============================================================
# GAME REWARD GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game reward grant model.

model_type:
- reward truth model

primary_key:
- game_reward_grant_id

natural_key:
- grant_scope
- grant_ref
- correlation_id

fields:
- game_reward_grant_id
- grant_scope
- grant_ref
- correlation_id
- grant_status
- player_code
- reward_summary
- source_state_version
- granted_at
- created_at
- updated_at

grant_status_enum:
- pending
- granted
- failed
- reversed
- archived

idempotency_rule:
grant_scope + grant_ref must suppress duplicate effective reward grant.

truth_boundary:
Game reward grant truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302203_GAME_INVENTORY_ITEM_MODEL.md
============================================================

# ============================================================
# GAME INVENTORY ITEM MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game inventory item model.

model_type:
- inventory truth model

primary_key:
- game_inventory_item_id

natural_key:
- inventory_scope
- item_ref
- item_version

fields:
- game_inventory_item_id
- inventory_scope
- item_ref
- item_version
- item_status
- player_code
- item_summary
- quantity_value
- effective_from
- effective_until
- created_at
- updated_at

item_status_enum:
- active
- consumed
- removed
- invalidated
- archived

truth_boundary:
Game inventory item truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302204_GAME_CRAFTING_RESULT_MODEL.md
============================================================

# ============================================================
# GAME CRAFTING RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game crafting result model.

model_type:
- crafting truth model

primary_key:
- game_crafting_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- game_crafting_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- player_code
- crafting_summary
- source_state_version
- crafted_at
- created_at
- updated_at

result_status_enum:
- pending
- crafted
- failed
- reversed
- archived

idempotency_rule:
result_scope + result_ref must suppress duplicate effective crafting result.

truth_boundary:
Game crafting result truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302205_GAME_PROGRESSION_RECORD_MODEL.md
============================================================

# ============================================================
# GAME PROGRESSION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game progression record model.

model_type:
- progression truth model

primary_key:
- game_progression_record_id

natural_key:
- progression_scope
- progression_ref
- progression_window

fields:
- game_progression_record_id
- progression_scope
- progression_ref
- progression_window
- progression_status
- player_code
- progression_summary
- progression_value
- source_state_version
- recorded_at
- created_at
- updated_at

progression_status_enum:
- current
- revised
- level_up
- invalidated
- archived

truth_boundary:
Game progression truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/220.progression-reward/0302206_GAME_RANKING_RECORD_MODEL.md
============================================================

# ============================================================
# GAME RANKING RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game ranking record model.

model_type:
- ranking truth model

primary_key:
- game_ranking_record_id

natural_key:
- ranking_scope
- ranking_ref
- ranking_window

fields:
- game_ranking_record_id
- ranking_scope
- ranking_ref
- ranking_window
- ranking_status
- player_code
- ranking_summary
- ranking_value
- source_state_version
- recorded_at
- created_at
- updated_at

ranking_status_enum:
- current
- revised
- locked
- invalidated
- archived

truth_boundary:
Game ranking truth belongs to GameOS progression-reward domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302300_GAME_BATTLE_SESSION_MODEL.md
============================================================

# ============================================================
# GAME BATTLE SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game battle session model.

model_type:
- battle session truth model

primary_key:
- game_battle_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_battle_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- player_code
- battle_summary
- source_state_version
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- completed
- interrupted
- archived

truth_boundary:
Game battle session truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302301_GAME_BATTLE_RESULT_MODEL.md
============================================================

# ============================================================
# GAME BATTLE RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game battle result model.

model_type:
- battle result truth model

primary_key:
- game_battle_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- game_battle_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- session_ref
- result_summary
- source_state_version
- recorded_at
- created_at
- updated_at

result_status_enum:
- pending
- recorded
- corrected
- invalidated
- archived

truth_boundary:
Game battle result truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302302_GAME_MATCH_RESULT_MODEL.md
============================================================

# ============================================================
# GAME MATCH RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game match result model.

model_type:
- match result truth model

primary_key:
- game_match_result_id

natural_key:
- result_scope
- result_ref
- correlation_id

fields:
- game_match_result_id
- result_scope
- result_ref
- correlation_id
- result_status
- player_code
- match_summary
- source_state_version
- recorded_at
- created_at
- updated_at

result_status_enum:
- pending
- recorded
- corrected
- invalidated
- archived

truth_boundary:
Game match result truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302303_GAME_ANTI_CHEAT_INCIDENT_MODEL.md
============================================================

# ============================================================
# GAME ANTI CHEAT INCIDENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game anti-cheat incident model.

model_type:
- anti-cheat truth model

primary_key:
- game_anti_cheat_incident_id

natural_key:
- incident_scope
- incident_ref
- correlation_id

fields:
- game_anti_cheat_incident_id
- incident_scope
- incident_ref
- correlation_id
- incident_status
- player_code
- incident_summary
- source_state_version
- occurred_at
- created_at
- updated_at

incident_status_enum:
- recorded
- under_review
- actionable
- resolved
- archived

truth_boundary:
Game anti-cheat truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302304_GAME_MODERATION_ACTION_MODEL.md
============================================================

# ============================================================
# GAME MODERATION ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game moderation action model.

model_type:
- moderation truth model

primary_key:
- game_moderation_action_id

natural_key:
- action_scope
- action_ref
- correlation_id

fields:
- game_moderation_action_id
- action_scope
- action_ref
- correlation_id
- action_status
- target_player_code
- moderation_summary
- source_state_version
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- approved
- applied
- reversed
- archived

truth_boundary:
Game moderation truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302305_GAME_REPLAY_RECORD_MODEL.md
============================================================

# ============================================================
# GAME REPLAY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game replay record model.

model_type:
- replay truth model

primary_key:
- game_replay_record_id

natural_key:
- replay_scope
- replay_ref
- correlation_id

fields:
- game_replay_record_id
- replay_scope
- replay_ref
- correlation_id
- replay_status
- source_session_ref
- replay_hash
- source_state_version
- recorded_at
- created_at
- updated_at

replay_status_enum:
- recorded
- published
- corrected
- invalidated
- archived

truth_boundary:
Game replay truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302306_GAME_PERSONA_CHARACTER_BINDING_MODEL.md
============================================================

# ============================================================
# GAME PERSONA CHARACTER BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game persona character binding model.

model_type:
- persona binding truth model

primary_key:
- game_persona_character_binding_id

natural_key:
- binding_scope
- binding_code
- binding_version

fields:
- game_persona_character_binding_id
- binding_scope
- binding_code
- binding_version
- binding_status
- player_code
- persona_id
- binding_summary
- effective_from
- effective_until
- created_at
- updated_at

binding_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

contract_version_rule:
Game persona character bindings must expose explicit version semantics.

truth_boundary:
Game persona character binding truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302307_GAME_PERSONA_PACKAGE_PROJECTION_MODEL.md
============================================================

# ============================================================
# GAME PERSONA PACKAGE PROJECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game persona package projection model.

model_type:
- projection truth model

primary_key:
- game_persona_package_projection_id

natural_key:
- projection_scope
- projection_ref
- correlation_id

fields:
- game_persona_package_projection_id
- projection_scope
- projection_ref
- correlation_id
- projection_status
- binding_code
- package_code
- projection_summary
- source_state_version
- projected_at
- created_at
- updated_at

projection_status_enum:
- pending
- projected
- failed
- reversed
- archived

idempotency_rule:
projection_scope + projection_ref must suppress duplicate effective package projection.

truth_boundary:
Game persona package projection truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302308_GAME_PURCHASE_ENTITLEMENT_MODEL.md
============================================================

# ============================================================
# GAME PURCHASE ENTITLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game purchase entitlement model.

model_type:
- entitlement truth model

primary_key:
- game_purchase_entitlement_id

natural_key:
- entitlement_scope
- entitlement_code
- entitlement_version

fields:
- game_purchase_entitlement_id
- entitlement_scope
- entitlement_code
- entitlement_version
- entitlement_status
- player_code
- entitlement_summary
- effective_from
- effective_until
- created_at
- updated_at

entitlement_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Game purchase entitlements must expose explicit version semantics.

truth_boundary:
Game purchase entitlement truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/230.battle-security-economy/0302309_GAME_ECONOMY_SETTLEMENT_MODEL.md
============================================================

# ============================================================
# GAME ECONOMY SETTLEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game economy settlement model.

model_type:
- settlement truth model

primary_key:
- game_economy_settlement_id

natural_key:
- settlement_scope
- settlement_ref
- correlation_id

fields:
- game_economy_settlement_id
- settlement_scope
- settlement_ref
- correlation_id
- settlement_status
- player_code
- settlement_summary
- source_state_version
- settled_at
- created_at
- updated_at

settlement_status_enum:
- pending
- settled
- failed
- reversed
- archived

idempotency_rule:
settlement_scope + settlement_ref must suppress duplicate effective economy settlement.

truth_boundary:
Game economy settlement truth belongs to GameOS battle-security-economy domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302400_GAME_LIFECYCLE_STATE_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for GameOS.

model_type:
- lifecycle governance truth model

primary_key:
- game_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Game lifecycle state profile truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302401_GAME_APPROVAL_TRAIL_MODEL.md
============================================================

# ============================================================
# GAME APPROVAL TRAIL MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical approval trail model for GameOS.

model_type:
- approval lineage truth model

primary_key:
- game_approval_trail_id

natural_key:
- trail_scope
- trail_ref
- correlation_id

fields:
- game_approval_trail_id
- trail_scope
- trail_ref
- correlation_id
- trail_status
- approver_scope
- approval_summary
- source_state_version
- approved_at
- created_at
- updated_at

trail_status_enum:
- recorded
- superseded
- invalidated
- archived

truth_boundary:
Game approval trail truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302402_GAME_OWNERSHIP_BOUNDARY_RECORD_MODEL.md
============================================================

# ============================================================
# GAME OWNERSHIP BOUNDARY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ownership boundary record model for GameOS.

model_type:
- truth-boundary governance model

primary_key:
- game_ownership_boundary_record_id

natural_key:
- boundary_scope
- boundary_ref
- correlation_id

fields:
- game_ownership_boundary_record_id
- boundary_scope
- boundary_ref
- correlation_id
- boundary_status
- owner_domain_code
- consumer_domain_code
- truth_boundary_summary
- source_state_version
- recorded_at
- created_at
- updated_at

boundary_status_enum:
- active
- revised
- superseded
- archived

truth_boundary:
Game ownership boundary truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302403_GAME_COMPATIBILITY_RECORD_MODEL.md
============================================================

# ============================================================
# GAME COMPATIBILITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compatibility record model for GameOS.

model_type:
- compatibility governance truth model

primary_key:
- game_compatibility_record_id

natural_key:
- compatibility_scope
- source_version_code
- target_version_code

fields:
- game_compatibility_record_id
- compatibility_scope
- source_version_code
- target_version_code
- compatibility_status
- compatibility_summary
- source_state_version
- recorded_at
- created_at
- updated_at

compatibility_status_enum:
- compatible
- limited
- incompatible
- superseded
- archived

truth_boundary:
Game compatibility truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302404_GAME_AUDIT_RECONSTRUCTION_BUNDLE_MODEL.md
============================================================

# ============================================================
# GAME AUDIT RECONSTRUCTION BUNDLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit reconstruction bundle model for GameOS.

model_type:
- audit recovery truth model

primary_key:
- game_audit_reconstruction_bundle_id

natural_key:
- bundle_scope
- bundle_ref
- correlation_id

fields:
- game_audit_reconstruction_bundle_id
- bundle_scope
- bundle_ref
- correlation_id
- bundle_status
- source_record_set_hash
- reconstruction_summary
- source_state_version
- bundled_at
- created_at
- updated_at

bundle_status_enum:
- built
- superseded
- invalidated
- archived

truth_boundary:
Game audit reconstruction truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302405_GAME_SHARED_RETRY_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME SHARED RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared retry profile model for GameOS.

model_type:
- retry governance truth model

primary_key:
- game_shared_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_shared_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game shared retry profiles must expose explicit version semantics.

truth_boundary:
Game shared retry profile truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/240.cross-cutting-completion/0302406_GAME_SHARED_DEAD_LETTER_RECORD_MODEL.md
============================================================

# ============================================================
# GAME SHARED DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared dead letter record model for GameOS.

model_type:
- terminal failure truth model

primary_key:
- game_shared_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- game_shared_dead_letter_record_id
- dead_letter_scope
- dead_letter_ref
- correlation_id
- dead_letter_status
- source_failure_ref
- dead_letter_summary
- source_state_version
- recorded_at
- created_at
- updated_at

dead_letter_status_enum:
- quarantined
- restored
- invalidated
- archived

truth_boundary:
Game shared dead letter truth belongs to GameOS cross-cutting-completion domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302500_GAME_TITLE_MODEL.md
============================================================

# ============================================================
# GAME TITLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title model for user-distributed games.

model_type:
- game title truth model

primary_key:
- game_title_id

natural_key:
- title_scope
- title_code
- title_version

fields:
- game_title_id
- title_scope
- title_code
- title_version
- title_status
- developer_scope
- genre_profile
- title_summary
- effective_from
- effective_until
- created_at
- updated_at

title_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game titles must expose explicit version semantics.

truth_boundary:
Game title truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302501_GAME_STORE_LISTING_MODEL.md
============================================================

# ============================================================
# GAME STORE LISTING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game store listing model.

model_type:
- store listing truth model

primary_key:
- game_store_listing_id

natural_key:
- listing_scope
- listing_code
- listing_version

fields:
- game_store_listing_id
- listing_scope
- listing_code
- listing_version
- listing_status
- title_code
- pricing_summary
- availability_summary
- rating_summary
- effective_from
- effective_until
- created_at
- updated_at

listing_status_enum:
- draft
- approved
- published
- suspended
- archived

contract_version_rule:
Game store listings must expose explicit version semantics.

truth_boundary:
Game store listing truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302502_GAME_RELEASE_MODEL.md
============================================================

# ============================================================
# GAME RELEASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game release model.

model_type:
- release truth model

primary_key:
- game_release_id

natural_key:
- release_scope
- release_code
- release_version

fields:
- game_release_id
- release_scope
- release_code
- release_version
- release_status
- title_code
- compatibility_profile_code
- release_summary
- release_hash
- effective_from
- effective_until
- created_at
- updated_at

release_status_enum:
- draft
- approved
- published
- revoked
- archived

contract_version_rule:
Game releases must expose explicit version semantics.

truth_boundary:
Game release truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302503_GAME_BUILD_MODEL.md
============================================================

# ============================================================
# GAME BUILD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game build model.

model_type:
- build truth model

primary_key:
- game_build_id

natural_key:
- build_scope
- build_code
- build_version

fields:
- game_build_id
- build_scope
- build_code
- build_version
- build_status
- release_code
- target_platform_code
- build_hash
- created_at
- updated_at

build_status_enum:
- draft
- validated
- published
- revoked
- archived

contract_version_rule:
Game builds must expose explicit version semantics.

truth_boundary:
Game build truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302504_GAME_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game package model for downloadable client packages.

model_type:
- package truth model

primary_key:
- game_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_package_id
- package_scope
- package_code
- package_version
- package_status
- build_code
- package_hash
- package_size_bytes
- created_at
- updated_at

package_status_enum:
- draft
- validated
- available
- revoked
- archived

contract_version_rule:
Game packages must expose explicit version semantics.

truth_boundary:
Game package truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302505_GAME_MANIFEST_MODEL.md
============================================================

# ============================================================
# GAME MANIFEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game manifest model.

model_type:
- manifest truth model

primary_key:
- game_manifest_id

natural_key:
- manifest_scope
- manifest_code
- manifest_version

fields:
- game_manifest_id
- manifest_scope
- manifest_code
- manifest_version
- manifest_status
- package_code
- required_capability_summary
- compatibility_summary
- manifest_hash
- created_at
- updated_at

manifest_status_enum:
- draft
- approved
- published
- superseded
- archived

contract_version_rule:
Game manifests must expose explicit version semantics.

truth_boundary:
Game manifest truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302506_GAME_COMPATIBILITY_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME COMPATIBILITY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game compatibility profile model.

model_type:
- compatibility truth model

primary_key:
- game_compatibility_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_compatibility_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- target_platform_summary
- os_requirement_summary
- runtime_requirement_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game compatibility profiles must expose explicit version semantics.

truth_boundary:
Game compatibility profile truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302507_GAME_DEVICE_REGISTRATION_MODEL.md
============================================================

# ============================================================
# GAME DEVICE REGISTRATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game device registration model.

model_type:
- device registration truth model

primary_key:
- game_device_registration_id

natural_key:
- device_scope
- device_code
- registration_version

fields:
- game_device_registration_id
- device_scope
- device_code
- registration_version
- registration_status
- owner_scope
- device_summary
- attestation_summary
- created_at
- updated_at

registration_status_enum:
- draft
- registered
- suspended
- revoked
- archived

contract_version_rule:
Device registrations must expose explicit version semantics.

truth_boundary:
Device registration truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302508_GAME_DOWNLOAD_GRANT_MODEL.md
============================================================

# ============================================================
# GAME DOWNLOAD GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game download grant model.

model_type:
- download authorization truth model

primary_key:
- game_download_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- game_download_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- title_code
- device_code
- entitlement_summary
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Download grants must expose explicit version semantics.

truth_boundary:
Download grant truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/250.distribution-platform/0302509_GAME_INSTALL_LICENSE_MODEL.md
============================================================

# ============================================================
# GAME INSTALL LICENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game install license model.

model_type:
- install license truth model

primary_key:
- game_install_license_id

natural_key:
- license_scope
- license_code
- license_version

fields:
- game_install_license_id
- license_scope
- license_code
- license_version
- license_status
- device_code
- package_code
- license_summary
- effective_from
- effective_until
- created_at
- updated_at

license_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Install licenses must expose explicit version semantics.

truth_boundary:
Install license truth belongs to GameOS distribution-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/260.marketplace-linkage/0302600_GAME_MARKETPLACE_PRODUCT_LINK_MODEL.md
============================================================

# ============================================================
# GAME MARKETPLACE PRODUCT LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage model between Civilization marketplace products and GameOS titles.

model_type:
- cross-os linkage truth model

primary_key:
- game_marketplace_product_link_id

natural_key:
- game_title_code
- marketplace_product_code
- link_version

fields:
- game_marketplace_product_link_id
- game_title_code
- marketplace_product_code
- link_version
- link_status
- seller_code
- release_code
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game marketplace product links must expose explicit version semantics.

truth_boundary:
Game marketplace linkage truth belongs to GameOS marketplace-linkage domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/261.title-transfer/0302610_GAME_TITLE_TRANSFER_REQUEST_MODEL.md
============================================================

# ============================================================
# GAME TITLE TRANSFER REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title transfer request model.

model_type:
- title transfer request truth model

primary_key:
- game_title_transfer_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- game_title_transfer_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- game_title_code
- source_seller_code
- target_seller_code
- transfer_summary
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- under_review
- approved
- rejected
- archived

truth_boundary:
Game title transfer request truth belongs to GameOS title-transfer domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/261.title-transfer/0302611_GAME_TITLE_TRANSFER_RECORD_MODEL.md
============================================================

# ============================================================
# GAME TITLE TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title transfer record model.

model_type:
- title transfer execution truth model

primary_key:
- game_title_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- game_title_transfer_record_id
- transfer_scope
- transfer_ref
- correlation_id
- transfer_status
- game_title_code
- source_seller_code
- target_seller_code
- transfer_effective_from
- transfer_summary
- executed_at
- created_at
- updated_at

transfer_status_enum:
- pending
- executed
- failed
- reversed
- archived

idempotency_rule:
transfer_scope + transfer_ref must suppress duplicate effective game-title transfer.

truth_boundary:
Game title transfer truth belongs to GameOS title-transfer domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/261.title-transfer/0302612_GAME_RELEASE_PUBLISHER_REASSIGNMENT_RECORD_MODEL.md
============================================================

# ============================================================
# GAME RELEASE PUBLISHER REASSIGNMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical release publisher reassignment record model.

model_type:
- release responsibility truth model

primary_key:
- game_release_publisher_reassignment_record_id

natural_key:
- reassignment_scope
- reassignment_ref
- correlation_id

fields:
- game_release_publisher_reassignment_record_id
- reassignment_scope
- reassignment_ref
- correlation_id
- reassignment_status
- release_code
- source_seller_code
- target_seller_code
- reassignment_summary
- effective_from
- created_at
- updated_at

reassignment_status_enum:
- pending
- active
- reversed
- archived

truth_boundary:
Release publisher reassignment truth belongs to GameOS title-transfer domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/261.title-transfer/0302613_GAME_ENTITLEMENT_CONTINUITY_RECORD_MODEL.md
============================================================

# ============================================================
# GAME ENTITLEMENT CONTINUITY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical entitlement continuity record model across approved title transfer.

model_type:
- continuity governance truth model

primary_key:
- game_entitlement_continuity_record_id

natural_key:
- continuity_scope
- game_title_code
- continuity_version

fields:
- game_entitlement_continuity_record_id
- continuity_scope
- game_title_code
- continuity_version
- continuity_status
- source_seller_code
- target_seller_code
- continuity_summary
- created_at
- updated_at

continuity_status_enum:
- active
- superseded
- archived

contract_version_rule:
Entitlement continuity records must expose explicit version semantics.

truth_boundary:
Entitlement continuity truth belongs to GameOS title-transfer domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302620_GAME_DEVELOPER_IDENTITY_MODEL.md
============================================================

# ============================================================
# GAME DEVELOPER IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS developer identity model.

model_type:
- developer identity truth model

primary_key:
- game_developer_identity_id

natural_key:
- developer_scope
- developer_code
- developer_version

fields:
- game_developer_identity_id
- developer_scope
- developer_code
- developer_version
- developer_status
- seller_code
- identity_summary
- created_at
- updated_at

developer_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game developer identities must expose explicit version semantics.

truth_boundary:
Game developer identity truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302621_GAME_DEVELOPER_WORKSPACE_LINK_MODEL.md
============================================================

# ============================================================
# GAME DEVELOPER WORKSPACE LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage between Civilization creator workspace and GameOS developer workspace.

model_type:
- workspace linkage truth model

primary_key:
- game_developer_workspace_link_id

natural_key:
- workspace_code
- developer_code
- link_version

fields:
- game_developer_workspace_link_id
- workspace_code
- developer_code
- link_version
- link_status
- seller_code
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Game developer workspace links must expose explicit version semantics.

truth_boundary:
Game developer workspace linkage truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302622_GAME_RUNTIME_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game runtime profile model for builder-backed games.

model_type:
- runtime governance truth model

primary_key:
- game_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_type
- capability_summary
- compatibility_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

runtime_type_enum:
- visual_novel
- rpg
- puzzle
- strategy
- card_board
- action_lite

contract_version_rule:
Game runtime profiles must expose explicit version semantics.

truth_boundary:
Game runtime profile truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302623_GAME_BUILDER_PACKAGE_LINK_MODEL.md
============================================================

# ============================================================
# GAME BUILDER PACKAGE LINK MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical linkage between builder output and distributable package.

model_type:
- builder linkage truth model

primary_key:
- game_builder_package_link_id

natural_key:
- link_scope
- package_code
- link_version

fields:
- game_builder_package_link_id
- link_scope
- package_code
- link_version
- link_status
- profile_code
- builder_summary
- created_at
- updated_at

link_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Game builder package links must expose explicit version semantics.

truth_boundary:
Game builder package linkage truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302624_GAME_RELEASE_VALIDATION_ACCEPTANCE_MODEL.md
============================================================

# ============================================================
# GAME RELEASE VALIDATION ACCEPTANCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical release validation acceptance model in GameOS.

model_type:
- validation acceptance truth model

primary_key:
- game_release_validation_acceptance_id

natural_key:
- acceptance_scope
- release_code
- acceptance_version

fields:
- game_release_validation_acceptance_id
- acceptance_scope
- release_code
- acceptance_version
- acceptance_status
- validation_ref
- moderation_ref
- acceptance_summary
- created_at
- updated_at

acceptance_status_enum:
- pending
- accepted
- rejected
- superseded
- archived

contract_version_rule:
Game release validation acceptances must expose explicit version semantics.

truth_boundary:
Game release validation acceptance truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/262.developer-platform/0302625_GAME_PUBLISH_ACTIVATION_RECORD_MODEL.md
============================================================

# ============================================================
# GAME PUBLISH ACTIVATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical publish activation record model in GameOS.

model_type:
- publish activation truth model

primary_key:
- game_publish_activation_record_id

natural_key:
- activation_scope
- activation_ref
- correlation_id

fields:
- game_publish_activation_record_id
- activation_scope
- activation_ref
- correlation_id
- activation_status
- game_title_code
- release_code
- activation_summary
- activated_at
- created_at
- updated_at

activation_status_enum:
- pending
- activated
- failed
- reversed
- archived

idempotency_rule:
activation_scope + activation_ref must suppress duplicate effective publish activation.

truth_boundary:
Game publish activation truth belongs to GameOS developer-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302630_GAME_SAVE_SYNC_ENVELOPE_MODEL.md
============================================================

# ============================================================
# GAME SAVE SYNC ENVELOPE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save sync envelope model.

model_type:
- save transport truth model

primary_key:
- game_save_sync_envelope_id

natural_key:
- envelope_scope
- envelope_ref
- correlation_id

fields:
- game_save_sync_envelope_id
- envelope_scope
- envelope_ref
- correlation_id
- envelope_status
- game_title_code
- device_code
- player_code
- save_hash
- source_state_version
- submitted_at
- created_at
- updated_at

envelope_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
envelope_scope + envelope_ref must suppress duplicate effective save sync intake.

truth_boundary:
Save sync envelope truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302631_GAME_SAVE_SNAPSHOT_MODEL.md
============================================================

# ============================================================
# GAME SAVE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save snapshot model.

model_type:
- save state truth model

primary_key:
- game_save_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_save_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- game_title_code
- player_code
- snapshot_hash
- source_envelope_ref
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- accepted
- superseded
- invalidated
- archived

truth_boundary:
Save snapshot truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302632_GAME_SAVE_CONFLICT_RESOLUTION_RECORD_MODEL.md
============================================================

# ============================================================
# GAME SAVE CONFLICT RESOLUTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical save conflict resolution record model.

model_type:
- conflict governance truth model

primary_key:
- game_save_conflict_resolution_record_id

natural_key:
- conflict_scope
- conflict_ref
- correlation_id

fields:
- game_save_conflict_resolution_record_id
- conflict_scope
- conflict_ref
- correlation_id
- conflict_status
- game_title_code
- player_code
- resolution_summary
- source_snapshot_ref
- resolved_at
- created_at
- updated_at

conflict_status_enum:
- detected
- resolved
- rejected
- archived

truth_boundary:
Save conflict resolution truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302633_GAME_ACHIEVEMENT_SUBMIT_RECORD_MODEL.md
============================================================

# ============================================================
# GAME ACHIEVEMENT SUBMIT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical achievement submit record model.

model_type:
- achievement submission truth model

primary_key:
- game_achievement_submit_record_id

natural_key:
- submit_scope
- submit_ref
- correlation_id

fields:
- game_achievement_submit_record_id
- submit_scope
- submit_ref
- correlation_id
- submit_status
- game_title_code
- player_code
- achievement_code
- submit_summary
- submitted_at
- created_at
- updated_at

submit_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
submit_scope + submit_ref must suppress duplicate effective achievement submit.

truth_boundary:
Achievement submit truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302634_GAME_RANKING_SUBMIT_RECORD_MODEL.md
============================================================

# ============================================================
# GAME RANKING SUBMIT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ranking submit record model.

model_type:
- ranking submission truth model

primary_key:
- game_ranking_submit_record_id

natural_key:
- submit_scope
- submit_ref
- correlation_id

fields:
- game_ranking_submit_record_id
- submit_scope
- submit_ref
- correlation_id
- submit_status
- game_title_code
- player_code
- ranking_scope_code
- ranking_value
- submit_summary
- submitted_at
- created_at
- updated_at

submit_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
submit_scope + submit_ref must suppress duplicate effective ranking submit.

truth_boundary:
Ranking submit truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302635_GAME_REPLAY_UPLOAD_RECORD_MODEL.md
============================================================

# ============================================================
# GAME REPLAY UPLOAD RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical replay upload record model.

model_type:
- replay upload truth model

primary_key:
- game_replay_upload_record_id

natural_key:
- upload_scope
- upload_ref
- correlation_id

fields:
- game_replay_upload_record_id
- upload_scope
- upload_ref
- correlation_id
- upload_status
- game_title_code
- player_code
- replay_hash
- upload_summary
- uploaded_at
- created_at
- updated_at

upload_status_enum:
- received
- validated
- accepted
- rejected
- archived

idempotency_rule:
upload_scope + upload_ref must suppress duplicate effective replay upload.

truth_boundary:
Replay upload truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302636_GAME_TELEMETRY_SNAPSHOT_MODEL.md
============================================================

# ============================================================
# GAME TELEMETRY SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical telemetry snapshot model.

model_type:
- telemetry truth model

primary_key:
- game_telemetry_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_window

fields:
- game_telemetry_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_window
- snapshot_status
- game_title_code
- device_code
- telemetry_summary
- source_state_version
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- validated
- invalidated
- archived

truth_boundary:
Telemetry snapshot truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/263.sync-platform/0302637_GAME_ANTI_TAMPER_ATTESTATION_RESULT_MODEL.md
============================================================

# ============================================================
# GAME ANTI TAMPER_ATTESTATION RESULT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical anti-tamper attestation result model.

model_type:
- attestation truth model

primary_key:
- game_anti_tamper_attestation_result_id

natural_key:
- attestation_scope
- attestation_ref
- correlation_id

fields:
- game_anti_tamper_attestation_result_id
- attestation_scope
- attestation_ref
- correlation_id
- attestation_status
- game_title_code
- device_code
- attestation_summary
- attested_at
- created_at
- updated_at

attestation_status_enum:
- received
- passed
- failed
- superseded
- archived

truth_boundary:
Anti-tamper attestation truth belongs to GameOS sync-platform domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302640_GAME_VN_RUNTIME_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME VN RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical visual novel and dating simulation runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_vn_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_vn_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- branch_rule_summary
- dialogue_rule_summary
- affection_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
VN runtime profiles must expose explicit version semantics.

truth_boundary:
VN runtime truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302641_GAME_RPG_RUNTIME_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME RPG RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical RPG runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_rpg_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_rpg_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- battle_rule_summary
- level_rule_summary
- inventory_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
RPG runtime profiles must expose explicit version semantics.

truth_boundary:
RPG runtime truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302642_GAME_PUZZLE_RUNTIME_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME PUZZLE RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical puzzle runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_puzzle_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_puzzle_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- stage_rule_summary
- scoring_rule_summary
- failure_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Puzzle runtime profiles must expose explicit version semantics.

truth_boundary:
Puzzle runtime truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302643_GAME_STRATEGY_RUNTIME_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME STRATEGY RUNTIME PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical strategy runtime profile model.

model_type:
- runtime governance truth model

primary_key:
- game_strategy_runtime_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_strategy_runtime_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- turn_rule_summary
- resource_rule_summary
- unit_rule_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Strategy runtime profiles must expose explicit version semantics.

truth_boundary:
Strategy runtime truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302644_GAME_RULESET_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME RULESET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ruleset profile model shared by builder-backed games.

model_type:
- ruleset governance truth model

primary_key:
- game_ruleset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_ruleset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_profile_code
- ruleset_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Ruleset profiles must expose explicit version semantics.

truth_boundary:
Ruleset profile truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302645_GAME_SCENARIO_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME SCENARIO PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical scenario package model for narrative games.

model_type:
- scenario package truth model

primary_key:
- game_scenario_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_scenario_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- scenario_summary
- package_hash
- created_at
- updated_at

package_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Scenario packages must expose explicit version semantics.

truth_boundary:
Scenario package truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302646_GAME_QUEST_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME QUEST PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical quest package model.

model_type:
- quest package truth model

primary_key:
- game_quest_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_quest_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- quest_summary
- package_hash
- created_at
- updated_at

package_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Quest packages must expose explicit version semantics.

truth_boundary:
Quest package truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302647_GAME_STAGE_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME STAGE PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical stage package model.

model_type:
- stage package truth model

primary_key:
- game_stage_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_stage_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- stage_summary
- package_hash
- created_at
- updated_at

package_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Stage packages must expose explicit version semantics.

truth_boundary:
Stage package truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302648_GAME_MAP_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME MAP PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical map package model.

model_type:
- map package truth model

primary_key:
- game_map_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_map_package_id
- package_scope
- package_code
- package_version
- package_status
- profile_code
- map_summary
- package_hash
- created_at
- updated_at

package_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Map packages must expose explicit version semantics.

truth_boundary:
Map package truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/264.genre-runtime/0302649_GAME_UI_TEMPLATE_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME UI TEMPLATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical UI template profile model.

model_type:
- ui governance truth model

primary_key:
- game_ui_template_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_ui_template_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- runtime_profile_code
- template_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
UI template profiles must expose explicit version semantics.

truth_boundary:
UI template truth belongs to GameOS genre-runtime domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302650_GAME_BUILDER_PROJECT_MODEL.md
============================================================

# ============================================================
# GAME BUILDER PROJECT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder project model for the Game Builder Web App.

model_type:
- builder project truth model

primary_key:
- game_builder_project_id

natural_key:
- project_scope
- project_code
- project_version

fields:
- game_builder_project_id
- project_scope
- project_code
- project_version
- project_status
- workspace_code
- game_title_code
- runtime_profile_code
- project_summary
- created_at
- updated_at

project_status_enum:
- draft
- active
- exported
- archived

contract_version_rule:
Builder projects must expose explicit version semantics.

truth_boundary:
Builder project truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302651_GAME_BUILDER_EDITOR_SESSION_MODEL.md
============================================================

# ============================================================
# GAME BUILDER EDITOR SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder editor session model.

model_type:
- editor session truth model

primary_key:
- game_builder_editor_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_editor_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- editor_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- interrupted
- archived

truth_boundary:
Builder editor session truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302652_GAME_BUILDER_ASSET_BINDING_MODEL.md
============================================================

# ============================================================
# GAME BUILDER ASSET BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder asset binding model.

model_type:
- asset binding truth model

primary_key:
- game_builder_asset_binding_id

natural_key:
- binding_scope
- binding_ref
- binding_version

fields:
- game_builder_asset_binding_id
- binding_scope
- binding_ref
- binding_version
- binding_status
- project_code
- asset_ref
- binding_summary
- created_at
- updated_at

binding_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Builder asset bindings must expose explicit version semantics.

truth_boundary:
Builder asset binding truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302653_GAME_BUILDER_TEMPLATE_APPLICATION_MODEL.md
============================================================

# ============================================================
# GAME BUILDER TEMPLATE APPLICATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder template application model.

model_type:
- template application truth model

primary_key:
- game_builder_template_application_id

natural_key:
- application_scope
- application_ref
- correlation_id

fields:
- game_builder_template_application_id
- application_scope
- application_ref
- correlation_id
- application_status
- project_code
- template_profile_code
- application_summary
- applied_at
- created_at
- updated_at

application_status_enum:
- pending
- applied
- failed
- reversed
- archived

idempotency_rule:
application_scope + application_ref must suppress duplicate effective template application.

truth_boundary:
Builder template application truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302654_GAME_BUILDER_PREVIEW_SESSION_MODEL.md
============================================================

# ============================================================
# GAME BUILDER PREVIEW SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder preview session model.

model_type:
- preview session truth model

primary_key:
- game_builder_preview_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_preview_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- preview_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- failed
- archived

truth_boundary:
Builder preview session truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302655_GAME_BUILDER_EXPORT_PACKAGE_MODEL.md
============================================================

# ============================================================
# GAME BUILDER EXPORT PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder export package model.

model_type:
- export package truth model

primary_key:
- game_builder_export_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- game_builder_export_package_id
- package_scope
- package_code
- package_version
- package_status
- project_code
- export_hash
- export_summary
- exported_at
- created_at
- updated_at

package_status_enum:
- draft
- exported
- accepted
- rejected
- archived

contract_version_rule:
Builder export packages must expose explicit version semantics.

truth_boundary:
Builder export package truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302656_GAME_BUILDER_PUBLISH_PIPELINE_MODEL.md
============================================================

# ============================================================
# GAME BUILDER PUBLISH PIPELINE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder publish pipeline model.

model_type:
- publish pipeline truth model

primary_key:
- game_builder_publish_pipeline_id

natural_key:
- pipeline_scope
- pipeline_code
- pipeline_version

fields:
- game_builder_publish_pipeline_id
- pipeline_scope
- pipeline_code
- pipeline_version
- pipeline_status
- project_code
- release_code
- pipeline_summary
- created_at
- updated_at

pipeline_status_enum:
- draft
- ready
- submitted
- completed
- failed
- archived

contract_version_rule:
Builder publish pipelines must expose explicit version semantics.

truth_boundary:
Builder publish pipeline truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302657_GAME_BUILDER_VALIDATION_JOB_MODEL.md
============================================================

# ============================================================
# GAME BUILDER VALIDATION JOB MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder validation job model.

model_type:
- validation job truth model

primary_key:
- game_builder_validation_job_id

natural_key:
- job_scope
- job_ref
- correlation_id

fields:
- game_builder_validation_job_id
- job_scope
- job_ref
- correlation_id
- job_status
- project_code
- job_summary
- result_hash
- started_at
- ended_at
- created_at
- updated_at

job_status_enum:
- queued
- running
- passed
- failed
- archived

truth_boundary:
Builder validation job truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302658_GAME_BUILDER_COLLABORATION_SESSION_MODEL.md
============================================================

# ============================================================
# GAME BUILDER COLLABORATION SESSION MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder collaboration session model.

model_type:
- collaboration truth model

primary_key:
- game_builder_collaboration_session_id

natural_key:
- session_scope
- session_ref
- correlation_id

fields:
- game_builder_collaboration_session_id
- session_scope
- session_ref
- correlation_id
- session_status
- project_code
- collaboration_summary
- started_at
- ended_at
- created_at
- updated_at

session_status_enum:
- created
- active
- closed
- revoked
- archived

truth_boundary:
Builder collaboration session truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/265.builder-webapp/0302659_GAME_BUILDER_AUTOSAVE_SNAPSHOT_MODEL.md
============================================================

# ============================================================
# GAME BUILDER AUTOSAVE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical builder autosave snapshot model.

model_type:
- autosave truth model

primary_key:
- game_builder_autosave_snapshot_id

natural_key:
- snapshot_scope
- snapshot_ref
- snapshot_version

fields:
- game_builder_autosave_snapshot_id
- snapshot_scope
- snapshot_ref
- snapshot_version
- snapshot_status
- project_code
- snapshot_hash
- autosave_summary
- captured_at
- created_at
- updated_at

snapshot_status_enum:
- captured
- restored
- superseded
- archived

truth_boundary:
Builder autosave truth belongs to GameOS builder-webapp domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302660_GAME_TEMPLATE_FAMILY_MODEL.md
============================================================

# ============================================================
# GAME TEMPLATE FAMILY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template family model for the Game Builder.

model_type:
- template governance truth model

primary_key:
- game_template_family_id

natural_key:
- family_scope
- family_code
- family_version

fields:
- game_template_family_id
- family_scope
- family_code
- family_version
- family_status
- runtime_profile_code
- family_summary
- created_at
- updated_at

family_status_enum:
- draft
- approved
- active
- superseded
- archived

family_code_enum:
- visual_novel
- dating_sim
- rpg
- puzzle
- strategy

contract_version_rule:
Template families must expose explicit version semantics.

truth_boundary:
Template family truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302661_GAME_TEMPLATE_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME TEMPLATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template profile model.

model_type:
- template profile truth model

primary_key:
- game_template_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_template_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- family_code
- template_tier
- ruleset_profile_code
- template_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

template_tier_enum:
- beginner
- standard
- advanced

contract_version_rule:
Template profiles must expose explicit version semantics.

truth_boundary:
Template profile truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302662_GAME_TEMPLATE_STRUCTURE_RULE_MODEL.md
============================================================

# ============================================================
# GAME TEMPLATE STRUCTURE RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical structure rule model for template zones.

model_type:
- structure governance truth model

primary_key:
- game_template_structure_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- game_template_structure_rule_id
- rule_scope
- rule_code
- rule_version
- rule_status
- profile_code
- protected_zone_summary
- editable_zone_summary
- advanced_override_zone_summary
- created_at
- updated_at

rule_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template structure rules must expose explicit version semantics.

truth_boundary:
Template structure rule truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302663_GAME_TEMPLATE_REQUIRED_ASSET_SET_MODEL.md
============================================================

# ============================================================
# GAME TEMPLATE REQUIRED ASSET SET MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical required asset set model for templates.

model_type:
- required asset truth model

primary_key:
- game_template_required_asset_set_id

natural_key:
- asset_set_scope
- asset_set_code
- asset_set_version

fields:
- game_template_required_asset_set_id
- asset_set_scope
- asset_set_code
- asset_set_version
- asset_set_status
- profile_code
- required_asset_family_summary
- optional_asset_family_summary
- created_at
- updated_at

asset_set_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template required asset sets must expose explicit version semantics.

truth_boundary:
Template required asset set truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302664_GAME_PIXEL_ART_ASSET_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME PIXEL ART ASSET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical pixel art asset profile model.

model_type:
- pixel asset truth model

primary_key:
- game_pixel_art_asset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_pixel_art_asset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- asset_family
- layer_summary
- export_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

asset_family_enum:
- enemy_sprite
- boss_sprite
- item_icon
- map_prop
- ui_icon
- tile

contract_version_rule:
Pixel art asset profiles must expose explicit version semantics.

truth_boundary:
Pixel art asset truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302665_GAME_UNIT_ART_ASSET_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME UNIT ART ASSET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical unit art asset profile model.

model_type:
- unit asset truth model

primary_key:
- game_unit_art_asset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_unit_art_asset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- unit_class_summary
- layer_summary
- variant_summary
- export_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Unit art asset profiles must expose explicit version semantics.

truth_boundary:
Unit art asset truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302666_GAME_BUILDING_ART_ASSET_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME BUILDING ART ASSET PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical building art asset profile model.

model_type:
- building asset truth model

primary_key:
- game_building_art_asset_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_building_art_asset_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- building_type_summary
- layer_summary
- state_variant_summary
- export_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Building art asset profiles must expose explicit version semantics.

truth_boundary:
Building art asset truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302667_GAME_ASSET_BINDING_RULE_MODEL.md
============================================================

# ============================================================
# GAME ASSET BINDING RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical asset binding rule model.

model_type:
- asset binding governance truth model

primary_key:
- game_asset_binding_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- game_asset_binding_rule_id
- rule_scope
- rule_code
- rule_version
- rule_status
- profile_code
- default_binding_summary
- project_override_summary
- variant_binding_summary
- created_at
- updated_at

rule_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Asset binding rules must expose explicit version semantics.

truth_boundary:
Asset binding rule truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302668_GAME_NON_PERSONA_ASSET_BOUNDARY_MODEL.md
============================================================

# ============================================================
# GAME NON PERSONA ASSET BOUNDARY MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical boundary model for non-Persona game material assets.

model_type:
- truth-boundary governance model

primary_key:
- game_non_persona_asset_boundary_id

natural_key:
- boundary_scope
- boundary_code
- boundary_version

fields:
- game_non_persona_asset_boundary_id
- boundary_scope
- boundary_code
- boundary_version
- boundary_status
- allowed_asset_summary
- prohibited_persona_overlap_summary
- created_at
- updated_at

boundary_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Non-Persona asset boundary models must expose explicit version semantics.

truth_boundary:
Non-Persona asset boundary truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/030.model/266.builder-template-asset-system/0302669_GAME_TEMPLATE_UX_PROFILE_MODEL.md
============================================================

# ============================================================
# GAME TEMPLATE UX PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical template UX profile model.

model_type:
- ux governance truth model

primary_key:
- game_template_ux_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- game_template_ux_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- first_run_summary
- low_complexity_summary
- guided_edit_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Template UX profiles must expose explicit version semantics.

truth_boundary:
Template UX truth belongs to GameOS builder-template-asset-system domain.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/000_RUNTIME_INDEX.md
============================================================

# ============================================================
# GAME OS RUNTIME INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
document_type: index
owner: Boss
prepared_by: Zero

subdomains:
- 110.persona-enabled-runtime
- 111.gambling-runtime

documents:
- 110.persona-enabled-runtime/0401100_GAME_OS_PERSONA_ENABLED_RUNTIME_OVERVIEW.md
- 111.gambling-runtime/0401110_GAME_OS_GAMBLING_RUNTIME_OVERVIEW.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/000_RUNTIME_OVERVIEW.md
============================================================

# ============================================================
# GAME OS RUNTIME OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The runtime layer covers Persona-enabled gameplay runtime and high-control gambling runtime.

official_runtime_families:
- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime
- action game runtime
- adventure game runtime
- 2d fighting runtime
- gambling runtime

notes:
- action game runtime includes side-scrolling action runtime and survival action runtime
- survival action is not limited to horror
- gambling runtime is separate from ordinary genre runtime families

multi_device_runtime_premise:
- GameOS runtime must support iPhone
- GameOS runtime must support Android
- GameOS runtime must support PC
- GameOS runtime must support tablet devices

runtime_design_implications:
- input handling must not assume one device class only
- layout assumptions must not assume phone-only screens
- runtime delivery must tolerate mobile and desktop interaction patterns

principles:
- runtime behavior must follow architecture boundaries
- gambling runtime must remain separated from ordinary runtime
- runtime must not own canonical Persona truth or wallet truth




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/060.integration/0400008_GAME_SYNC_CONSUMER_RUNTIME.md
============================================================

# ============================================================
# GAME SYNC CONSUMER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume inbound Persona sync results inside GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/060.integration/0400009_GAME_EVENT_OUTBOX_RUNTIME.md
============================================================

# ============================================================
# GAME EVENT OUTBOX RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Manage dispatch lifecycle of GameOS outbound Persona-related outbox events.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/060.integration/0400010_GAME_TO_PERSONA_GROWTH_REQUEST_RUNTIME.md
============================================================

# ============================================================
# GAME TO PERSONA GROWTH REQUEST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Transform Game growth triggers into Persona growth requests.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/060.integration/0400011_PERSONA_USAGE_PERMISSION_CONSUME_RUNTIME.md
============================================================

# ============================================================
# PERSONA USAGE PERMISSION CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona usage permission related results inside GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/060.integration/0400012_PERSONA_TRUST_SYNC_CONSUME_RUNTIME.md
============================================================

# ============================================================
# PERSONA TRUST SYNC CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona trust-related sync results inside GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/110.persona-enabled-runtime/0401100_GAME_OS_PERSONA_ENABLED_RUNTIME_OVERVIEW.md
============================================================

# ============================================================
# GAME OS PERSONA ENABLED RUNTIME OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
domain: persona-enabled-runtime
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime family covers gameplay where Persona is optionally used by players
or NPCs.

# ============================================================
# 2. SUPPORTED GENRE COVERAGE
# ============================================================

Persona-enabled runtime may operate across:

- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

Action Game includes:
- Side-Scrolling Action
- Survival Action

Survival Action is not limited to horror.

# ============================================================
# 3. SUPPORTED USES
# ============================================================

- player visual expression
- player conversation expression
- NPC romance targets
- NPC battle opponents
- NPC companions
- navigators and service characters
- survival companions
- investigation partners
- recurring rivals
- symbolic boss opponents

# ============================================================
# 4. RUNTIME PRINCIPLES
# ============================================================

- player remains the participation subject
- Persona usage is optional
- runtime uses game-local Persona state
- runtime must not treat local state as canonical Persona truth
- reflection is handled through later model/flow layers

# ============================================================
# 5. MAJOR RUNTIME INPUTS
# ============================================================

- player
- player profile
- Persona character binding
- game Persona state
- game Persona relation
- memory markers
- title-specific runtime rules

# ============================================================
# 6. MAJOR RUNTIME OUTPUTS
# ============================================================

- gameplay state transitions
- relation updates
- memory marker creation
- impact event extraction inputs
- reflection flow inputs

# ============================================================
# 7. GENRE-SPECIFIC EMPHASIS
# ============================================================

Action Game emphasizes:
- stage progression
- support under pressure
- rescue significance
- survival cooperation

Adventure Game emphasizes:
- exploration progression
- investigation progression
- clue-linked memory
- familiarity through repeated discovery

2D Fighting Game emphasizes:
- repeated duel rivalry
- respect / hostility split
- recurring opponent handling
- battle-opponent Persona usage

# ============================================================
# 8. CONCLUSION
# ============================================================

Persona-enabled runtime is the execution layer for optional Persona-based
gameplay without collapsing the separation between GameOS and PersonaOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/111.gambling-runtime/0401110_GAME_OS_GAMBLING_RUNTIME_OVERVIEW.md
============================================================

# ============================================================
# GAME OS GAMBLING RUNTIME OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: runtime
domain: gambling-runtime
document_type: overview
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime family executes high-control national-currency gambling gameplay.

# ============================================================
# 2. RUNTIME PRINCIPLES
# ============================================================

- eligibility is required before active wager
- lock confirmation is required before active wager
- provisional outcome must be validated
- finalized outcome is still not settlement completion
- dispute and anomaly hold must be supported
- safety controls remain active throughout the lifecycle

# ============================================================
# 3. MAJOR INPUTS
# ============================================================

- player
- eligibility result
- wager
- title/table/match/round context
- safety state
- runtime-specific rules

# ============================================================
# 4. MAJOR OUTPUTS
# ============================================================

- active wager participation
- provisional outcome
- finalized outcome
- settlement instruction
- hold / dispute / correction paths

# ============================================================
# 5. CONCLUSION
# ============================================================

Gambling runtime is the execution layer for controlled money-linked gameplay,
not a lightweight reward system.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/210.game-core/0402100_GAME_CORE_RUNTIME.md
============================================================

# ============================================================
# GAME CORE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for player identity, profile, world session,
character slot, party roster, and state snapshot handling.

runtime_scope:
- validate game core target
- validate player, world, and timing basis
- update game core lifecycle state
- preserve game traceability

trigger_conditions:
- player approved
- session created
- session activated
- roster revised
- snapshot captured

processing_steps:
1 resolve game-core target
2 verify player, world, timing, and source-state basis
3 apply game-core state transition
4 persist game result
5 preserve audit and game trace

state_transition:
- draft -> approved
- approved -> active
- active -> completed
- active -> interrupted
- active -> archived
- assigned -> active
- active -> removed
- captured -> superseded
- captured -> invalidated

success_condition:
- game core lifecycle updated explicitly

failure_condition:
- invalid target
- player, world, timing, or source basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/220.progression-reward/0402200_GAME_PROGRESSION_RUNTIME.md
============================================================

# ============================================================
# GAME PROGRESSION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for quest, mission progress, reward grant,
inventory item, crafting result, progression, and ranking handling.

runtime_scope:
- validate progression target
- validate player, quest, and reward basis
- enforce idempotent reward and crafting updates
- preserve progression traceability

trigger_conditions:
- quest activated
- mission progress recorded
- reward requested
- crafting requested
- ranking updated

processing_steps:
1 resolve progression target
2 verify player, quest, reward, and source-state basis
3 verify idempotency basis where applicable
4 apply progression state transition
5 persist progression result
6 preserve audit and progression trace

state_transition:
- draft -> approved
- approved -> active
- active -> retired
- current -> revised
- revised -> completed
- pending -> granted
- pending -> failed
- granted -> reversed
- pending -> crafted
- crafted -> reversed
- current -> level_up
- current -> locked

success_condition:
- game progression lifecycle handled once effectively

failure_condition:
- invalid target
- player, quest, or reward basis unresolved
- duplicate effective reward or crafting action
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/230.battle-security-economy/0402300_GAME_BATTLE_RUNTIME.md
============================================================

# ============================================================
# GAME BATTLE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for battle session, battle result, and match result handling.

runtime_scope:
- validate battle target
- validate player, session, and result basis
- update battle lifecycle state
- preserve battle traceability

trigger_conditions:
- battle session created
- battle session activated
- battle result recorded
- match result recorded
- result corrected

processing_steps:
1 resolve battle or result target
2 verify player, session, result, and source-state basis
3 apply battle state transition
4 persist battle result
5 preserve audit and battle trace

state_transition:
- created -> active
- active -> completed
- active -> interrupted
- pending -> recorded
- recorded -> corrected
- recorded -> invalidated

success_condition:
- game battle lifecycle updated explicitly

failure_condition:
- invalid target
- player, session, or result basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/230.battle-security-economy/0402301_GAME_SECURITY_MODERATION_RUNTIME.md
============================================================

# ============================================================
# GAME SECURITY MODERATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for anti-cheat incident, moderation action, and replay handling.

runtime_scope:
- validate security target
- validate authority and evidence basis
- update security or moderation lifecycle state
- preserve security traceability

trigger_conditions:
- anti-cheat incident recorded
- moderation proposed
- moderation approved
- replay recorded
- moderation reversed

processing_steps:
1 resolve anti-cheat, moderation, or replay target
2 verify authority, evidence, and source-session basis
3 apply security state transition
4 persist security result
5 preserve audit and security trace

state_transition:
- recorded -> under_review
- under_review -> actionable
- actionable -> resolved
- proposed -> approved
- approved -> applied
- applied -> reversed
- recorded -> published
- published -> corrected
- published -> invalidated

success_condition:
- game security lifecycle updated explicitly

failure_condition:
- invalid target
- authority, evidence, or source basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/230.battle-security-economy/0402302_GAME_PERSONA_ECONOMY_RUNTIME.md
============================================================

# ============================================================
# GAME PERSONA ECONOMY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for persona character binding, package projection,
purchase entitlement, and economy settlement handling.

runtime_scope:
- validate persona-economy target
- validate player, persona, contract, and purchase basis
- enforce idempotent projection and settlement
- preserve economy traceability

trigger_conditions:
- binding approved
- package projection requested
- entitlement approved
- settlement requested
- settlement reversed

processing_steps:
1 resolve binding, projection, entitlement, or settlement target
2 verify player, persona, package, and purchase basis
3 verify idempotency basis where applicable
4 apply persona-economy state transition
5 persist economy result
6 preserve audit and economy trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> revoked
- pending -> projected
- projected -> reversed
- pending -> settled
- settled -> reversed
- pending -> failed

success_condition:
- game persona-economy lifecycle handled once effectively

failure_condition:
- invalid target
- player, persona, package, or purchase basis unresolved
- duplicate effective projection or settlement
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/240.cross-cutting-completion/0402400_GAME_LIFECYCLE_RUNTIME.md
============================================================

# ============================================================
# GAME LIFECYCLE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for shared lifecycle governance in GameOS.

runtime_scope:
- validate lifecycle target
- validate transition and authority basis
- update shared lifecycle state
- preserve lifecycle traceability

trigger_conditions:
- transition requested
- approval recorded
- terminal state entered
- invalid transition detected
- restoration requested

processing_steps:
1 resolve lifecycle target and profile
2 verify transition, authority, and version basis
3 apply lifecycle state transition
4 persist lifecycle result
5 preserve audit and lifecycle trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> completed
- active -> archived
- suspended -> active
- suspended -> archived
- recorded -> revised
- revised -> invalidated

success_condition:
- game lifecycle transition enforced explicitly

failure_condition:
- invalid target
- transition or authority basis unresolved
- invalid transition requested
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/240.cross-cutting-completion/0402401_GAME_RETRY_DEAD_LETTER_RUNTIME.md
============================================================

# ============================================================
# GAME RETRY DEAD LETTER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for shared retry and dead-letter governance in GameOS.

runtime_scope:
- validate failure target
- validate retry and terminal basis
- update retry or dead-letter state
- preserve failure traceability

trigger_conditions:
- recoverable failure detected
- retry scheduled
- retry exhausted
- dead letter admitted
- restoration requested

processing_steps:
1 resolve failure or dead-letter target
2 verify retry, cutoff, and terminal basis
3 apply retry or dead-letter state transition
4 persist failure result
5 preserve audit and failure trace

retry_principles:
- retry only for explicitly recoverable failures
- backoff must be explicit and bounded
- retry exhaustion must transition deterministically
- restoration must remain explicit

dead_letter_conditions:
- exhausted retry budget
- incompatible contract version
- irrecoverable validation failure
- authority basis unresolved after retry window
- target missing beyond terminal cutoff

success_condition:
- game retry or dead-letter lifecycle updated explicitly

failure_condition:
- invalid target
- retry or dead-letter basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/240.cross-cutting-completion/0402402_GAME_GOVERNANCE_RUNTIME.md
============================================================

# ============================================================
# GAME GOVERNANCE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for approval, ownership boundary, compatibility,
and audit reconstruction governance in GameOS.

runtime_scope:
- validate governance target
- validate authority and compatibility basis
- update governance or audit state
- preserve governance traceability

trigger_conditions:
- approval recorded
- ownership boundary revised
- compatibility reviewed
- audit reconstruction requested
- governance superseded

processing_steps:
1 resolve governance or audit target
2 verify authority, ownership-boundary, and compatibility basis
3 apply governance state transition
4 persist governance result
5 preserve audit and governance trace

state_transition:
- recorded -> superseded
- recorded -> invalidated
- active -> revised
- revised -> superseded
- built -> superseded
- built -> invalidated

success_condition:
- game governance lifecycle updated explicitly

failure_condition:
- invalid target
- authority, boundary, or compatibility basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/250.distribution-platform/0402500_GAME_DISTRIBUTION_RUNTIME.md
============================================================

# ============================================================
# GAME DISTRIBUTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for title, listing, release, build, package,
manifest, and compatibility handling.

runtime_scope:
- validate distribution target
- validate developer, release, and compatibility basis
- update distribution lifecycle state
- preserve distribution traceability

trigger_conditions:
- title approved
- listing published
- release approved
- build validated
- package validated
- manifest published

processing_steps:
1 resolve distribution target
2 verify developer, release, package, and compatibility basis
3 apply distribution state transition
4 persist distribution result
5 preserve audit and distribution trace

state_transition:
- draft -> approved
- approved -> active
- approved -> published
- validated -> published
- validated -> available
- published -> superseded
- active -> suspended
- active -> revoked

success_condition:
- game distribution lifecycle updated explicitly

failure_condition:
- invalid target
- developer, release, package, or compatibility basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/250.distribution-platform/0402501_GAME_DEVICE_DELIVERY_RUNTIME.md
============================================================

# ============================================================
# GAME DEVICE DELIVERY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for device registration, download grant,
and install license handling.

runtime_scope:
- validate device-delivery target
- validate device, entitlement, and package basis
- update device-delivery lifecycle state
- preserve device-delivery traceability

trigger_conditions:
- device registered
- download requested
- grant approved
- install license approved
- license revoked

processing_steps:
1 resolve device, grant, or license target
2 verify device, entitlement, package, and attestation basis
3 apply device-delivery state transition
4 persist device-delivery result
5 preserve audit and delivery trace

state_transition:
- draft -> registered
- registered -> suspended
- registered -> revoked
- draft -> approved
- approved -> active
- active -> revoked
- active -> expired

success_condition:
- game device-delivery lifecycle updated explicitly

failure_condition:
- invalid target
- device, entitlement, package, or attestation basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/260.marketplace-linkage/0402600_GAME_MARKETPLACE_LINKAGE_RUNTIME.md
============================================================

# ============================================================
# GAME MARKETPLACE LINKAGE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for marketplace product linkage and entitlement acceptance in GameOS.

runtime_scope:
- validate marketplace linkage target
- validate title, release, seller, and purchase-link basis
- update GameOS linkage lifecycle state
- preserve linkage traceability

trigger_conditions:
- product linked
- linkage approved
- entitlement accepted
- linkage suspended
- linkage revoked

processing_steps:
1 resolve linkage target
2 verify title, release, seller, and entitlement-link basis
3 apply linkage state transition
4 persist linkage result
5 preserve audit and linkage trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- active -> archived

success_condition:
- GameOS marketplace linkage lifecycle updated explicitly

failure_condition:
- invalid target
- title, release, seller, or entitlement-link basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/261.title-transfer/0402610_GAME_TITLE_TRANSFER_RUNTIME.md
============================================================

# ============================================================
# GAME TITLE TRANSFER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for game title transfer, release reassignment, and entitlement continuity handling.

runtime_scope:
- validate title-transfer target
- validate source seller, target seller, title, release, and marketplace transfer basis
- execute approved title transfer only
- preserve entitlement continuity
- preserve transfer traceability

trigger_conditions:
- title transfer requested
- title transfer review started
- title transfer approved
- transfer executed
- reassignment reversed

processing_steps:
1 resolve request, transfer, reassignment, or continuity target
2 verify source seller, target seller, title, release, and marketplace transfer basis
3 apply title-transfer state transition
4 persist transfer result
5 preserve entitlement continuity and audit trace

state_transition:
- created -> under_review
- under_review -> approved
- under_review -> rejected
- approved -> executed
- executed -> reversed
- pending -> active
- pending -> failed

success_condition:
- game title transfer lifecycle updated explicitly with entitlement continuity preserved

failure_condition:
- invalid target
- source or target seller basis unresolved
- title, release, or marketplace transfer basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/262.developer-platform/0402620_GAME_DEVELOPER_PLATFORM_RUNTIME.md
============================================================

# ============================================================
# GAME DEVELOPER PLATFORM RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for developer identity, workspace linkage,
runtime profile, builder linkage, validation acceptance,
and publish activation handling.

runtime_scope:
- validate developer-platform target
- validate seller, workspace, runtime, release, validation, and moderation basis
- update developer-platform lifecycle state
- preserve developer-platform traceability

trigger_conditions:
- developer approved
- workspace link approved
- runtime profile approved
- builder link approved
- validation acceptance received
- publish activation requested

processing_steps:
1 resolve developer-platform target
2 verify seller, workspace, runtime, release, validation, and moderation basis
3 apply developer-platform state transition
4 persist developer-platform result
5 preserve audit and developer-platform trace

state_transition:
- draft -> approved
- approved -> active
- active -> suspended
- pending -> accepted
- pending -> rejected
- pending -> activated
- pending -> failed
- activated -> reversed

success_condition:
- developer-platform lifecycle updated explicitly

failure_condition:
- invalid target
- seller, workspace, runtime, release, validation, or moderation basis unresolved
- duplicate effective activation
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/263.sync-platform/0402630_GAME_SYNC_INTAKE_RUNTIME.md
============================================================

# ============================================================
# GAME SYNC INTAKE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for save sync, achievement submit, ranking submit,
replay upload, telemetry snapshot, and attestation intake handling.

runtime_scope:
- validate sync target
- validate title, player, device, entitlement, and attestation basis
- enforce idempotent sync intake
- preserve sync traceability

trigger_conditions:
- save submitted
- achievement submitted
- ranking submitted
- replay uploaded
- telemetry captured
- attestation received

processing_steps:
1 resolve sync intake target
2 verify title, player, device, entitlement, and source basis
3 verify idempotency basis where applicable
4 apply sync intake state transition
5 persist sync intake result
6 preserve audit and sync trace

state_transition:
- received -> validated
- validated -> accepted
- validated -> rejected
- captured -> validated
- received -> passed
- received -> failed
- passed -> superseded

success_condition:
- sync intake lifecycle handled once effectively

failure_condition:
- invalid target
- title, player, device, entitlement, or attestation basis unresolved
- duplicate effective sync intake
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/263.sync-platform/0402631_GAME_SYNC_ADJUDICATION_RUNTIME.md
============================================================

# ============================================================
# GAME SYNC ADJUDICATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for save snapshot acceptance and conflict resolution handling.

runtime_scope:
- validate adjudication target
- validate envelope, snapshot, and conflict basis
- update accepted save state
- preserve continuity and conflict traceability

trigger_conditions:
- save envelope accepted
- save snapshot captured
- save conflict detected
- conflict resolved
- save rejected

processing_steps:
1 resolve snapshot or conflict target
2 verify accepted envelope, snapshot lineage, and player/title basis
3 apply adjudication state transition
4 persist adjudication result
5 preserve audit and adjudication trace

state_transition:
- captured -> accepted
- accepted -> superseded
- accepted -> invalidated
- detected -> resolved
- detected -> rejected

success_condition:
- sync adjudication lifecycle updated explicitly

failure_condition:
- invalid target
- envelope, snapshot, conflict, or lineage basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/264.genre-runtime/0402640_GAME_GENRE_RUNTIME_RUNTIME.md
============================================================

# ============================================================
# GAME GENRE RUNTIME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for genre runtime profiles, rulesets, packages,
and UI templates used by builder-backed games.

runtime_scope:
- validate genre-runtime target
- validate runtime, ruleset, package, and template basis
- update genre-runtime lifecycle state
- preserve genre-runtime traceability

trigger_conditions:
- runtime profile approved
- ruleset approved
- package approved
- template approved
- runtime superseded

processing_steps:
1 resolve genre-runtime target
2 verify runtime profile, ruleset, package, template, and compatibility basis
3 apply genre-runtime state transition
4 persist genre-runtime result
5 preserve audit and genre-runtime trace

state_transition:
- draft -> approved
- approved -> active
- active -> superseded
- active -> archived

success_condition:
- genre-runtime lifecycle updated explicitly

failure_condition:
- invalid target
- runtime, ruleset, package, template, or compatibility basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/265.builder-webapp/0402650_GAME_BUILDER_WEBAPP_RUNTIME.md
============================================================

# ============================================================
# GAME BUILDER WEBAPP RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for builder project, editor session, asset binding,
template application, preview, export, validation, collaboration,
autosave, and publish pipeline handling.

runtime_scope:
- validate builder-webapp target
- validate workspace, project, runtime, template, and export basis
- update builder-webapp lifecycle state
- preserve builder-webapp traceability

trigger_conditions:
- project created
- editor session opened
- template applied
- preview started
- export requested
- validation queued
- publish pipeline submitted
- autosave captured

processing_steps:
1 resolve builder-webapp target
2 verify workspace, project, runtime, template, export, and release basis
3 apply builder-webapp state transition
4 persist builder-webapp result
5 preserve audit and builder-webapp trace

state_transition:
- draft -> active
- active -> exported
- active -> archived
- created -> active
- active -> closed
- active -> interrupted
- pending -> applied
- pending -> failed
- created -> active
- active -> failed
- draft -> exported
- exported -> accepted
- exported -> rejected
- draft -> ready
- ready -> submitted
- submitted -> completed
- submitted -> failed
- queued -> running
- running -> passed
- running -> failed
- captured -> restored
- captured -> superseded

success_condition:
- builder-webapp lifecycle updated explicitly

failure_condition:
- invalid target
- workspace, project, runtime, template, export, or release basis unresolved
- duplicate effective template application
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/266.builder-template-asset-system/0402660_GAME_TEMPLATE_ASSET_RUNTIME.md
============================================================

# ============================================================
# GAME TEMPLATE ASSET RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for template family, template profile,
template structure rule, required asset set, pixel art,
unit art, building art, asset binding, non-Persona boundary,
and template UX handling.

runtime_scope:
- validate template-asset target
- validate runtime family, ruleset, asset family, boundary, and ux basis
- update template-asset lifecycle state
- preserve template-asset traceability

trigger_conditions:
- template family approved
- template profile approved
- asset profile approved
- binding rule approved
- boundary approved
- template superseded

processing_steps:
1 resolve template-asset target
2 verify runtime family, ruleset, asset family, boundary, and ux basis
3 apply template-asset state transition
4 persist template-asset result
5 preserve audit and template-asset trace

state_transition:
- draft -> approved
- approved -> active
- active -> superseded
- active -> archived

success_condition:
- template-asset lifecycle updated explicitly

failure_condition:
- invalid target
- runtime family, ruleset, asset family, boundary, or ux basis unresolved
- persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/000_FLOW_INDEX.md
============================================================

# ============================================================
# GAME OS FLOW INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
document_type: index
owner: Boss
prepared_by: Zero

subdomains:
- 110.persona-reflection
- 111.gambling-settlement

documents:
- 110.persona-reflection/0501100_GAME_TO_PERSONA_REFLECTION_FLOW.md
- 111.gambling-settlement/0501110_GAMBLING_WAGER_TO_SETTLEMENT_FLOW.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/000_FLOW_OVERVIEW.md
============================================================

# ============================================================
# GAME OS FLOW OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The flow layer covers the reflection flow from gameplay to PersonaOS,
and the gambling flow from wager to settlement.

principles:
- reflection flow is event-based
- gambling flow separates eligibility, wager, outcome, and settlement
- flow documents should stay lifecycle-focused




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/040.persona/0500001_PERSONA_GAME_BINDING_FLOW.md
============================================================

# ============================================================
# PERSONA GAME BINDING FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how GameOS binds a Persona to game usage context.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/040.persona/0500002_PERSONA_GAME_ACCESS_SYNC_FLOW.md
============================================================

# ============================================================
# PERSONA GAME ACCESS SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how Persona access, license, and release state are synchronized into GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/060.integration/0500003_GAME_TO_PERSONA_GROWTH_REQUEST_FLOW.md
============================================================

# ============================================================
# GAME TO PERSONA GROWTH REQUEST FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Game-originated Persona growth requests.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/060.integration/0500004_PERSONA_TO_GAME_USAGE_RESULT_SYNC_FLOW.md
============================================================

# ============================================================
# PERSONA TO GAME USAGE RESULT SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona usage-related sync results into GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/060.integration/0500005_PERSONA_TO_GAME_TRUST_SYNC_FLOW.md
============================================================

# ============================================================
# PERSONA TO GAME TRUST SYNC FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the flow for Persona trust-related sync results into GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/110.persona-reflection/0501100_GAME_TO_PERSONA_REFLECTION_FLOW.md
============================================================

# ============================================================
# GAME TO PERSONA REFLECTION FLOW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
domain: persona-reflection
document_type: flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow describes how GameOS gameplay may eventually influence PersonaOS
through safe, auditable proposal-based reflection.

# ============================================================
# 2. FLOW STEPS
# ============================================================

1. gameplay interaction occurs
2. game Persona state updates
3. relation state updates
4. memory markers are extracted
5. persona impact events are generated
6. reflection candidates are generated
7. candidates are dispatched
8. decisions are recorded
9. sync results are recorded

# ============================================================
# 3. FLOW RULES
# ============================================================

- direct overwrite is forbidden
- only transformed, meaningful values may become candidates
- title-local raw values must not cross the boundary
- decision and sync must remain separate
- audit lineage must survive the full chain

# ============================================================
# 4. CONCLUSION
# ============================================================

This flow preserves strong separation between gameplay-local richness and
PersonaOS canonical safety.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/111.gambling-settlement/0501110_GAMBLING_WAGER_TO_SETTLEMENT_FLOW.md
============================================================

# ============================================================
# GAMBLING WAGER TO SETTLEMENT FLOW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: flow
domain: gambling-settlement
document_type: flow
owner: Boss
prepared_by: Zero

# ============================================================
# 1. FLOW PURPOSE
# ============================================================

This flow describes how national-currency gambling proceeds from wager intent
to finance-linked result handling.

# ============================================================
# 2. FLOW STEPS
# ============================================================

1. player initiates wager intent
2. eligibility result is evaluated
3. wallet lock is requested
4. lock is confirmed
5. wager becomes active
6. gameplay proceeds
7. provisional outcome is produced
8. outcome is validated and finalized or held
9. settlement instruction is issued
10. settlement result is recorded
11. refund or reversal is used when required

# ============================================================
# 3. FLOW RULES
# ============================================================

- no active wager before lock confirmation
- no settlement before finalized outcome
- outcome truth and wallet truth are separate
- refund and reversal are separate paths
- dispute and anomaly hold may interrupt settlement
- full auditability is required

# ============================================================
# 4. CONCLUSION
# ============================================================

This flow keeps gambling gameplay, finance processing, and safety control
separated but connected through auditable boundaries.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/210.game-core/0502100_GAME_CORE_FLOW.md
============================================================

# ============================================================
# GAME CORE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game core flow.

flow_steps:
1 game core action occurs
2 player, world, timing, and source basis are verified
3 game-core runtime updates state
4 session, roster, or snapshot path may follow
5 game trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/220.progression-reward/0502200_GAME_PROGRESSION_FLOW.md
============================================================

# ============================================================
# GAME PROGRESSION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game progression flow.

flow_steps:
1 progression or reward action occurs
2 player, quest, reward, and source basis are verified
3 progression runtime updates state
4 grant, crafting, level-up, or ranking path may follow
5 progression trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/230.battle-security-economy/0502300_GAME_BATTLE_FLOW.md
============================================================

# ============================================================
# GAME BATTLE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game battle flow.

flow_steps:
1 battle or result action occurs
2 player, session, and result basis are verified
3 battle runtime updates state
4 correction or completion path may follow
5 battle trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/230.battle-security-economy/0502301_GAME_SECURITY_MODERATION_FLOW.md
============================================================

# ============================================================
# GAME SECURITY MODERATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game security and moderation flow.

flow_steps:
1 security or moderation action occurs
2 authority, evidence, and source basis are verified
3 security-moderation runtime updates state
4 action, reversal, or invalidation path may follow
5 security trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/230.battle-security-economy/0502302_GAME_PERSONA_ECONOMY_FLOW.md
============================================================

# ============================================================
# GAME PERSONA ECONOMY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game persona economy flow.

flow_steps:
1 persona-economy action occurs
2 player, persona, package, and purchase basis are verified
3 persona-economy runtime updates state
4 projection, settlement, or reversal path may follow
5 economy trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/240.cross-cutting-completion/0502400_GAME_LIFECYCLE_FLOW.md
============================================================

# ============================================================
# GAME LIFECYCLE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared lifecycle flow for GameOS.

flow_steps:
1 lifecycle action occurs
2 transition and authority basis are verified
3 lifecycle runtime updates state
4 terminal or restoration path may follow
5 lifecycle trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/240.cross-cutting-completion/0502401_GAME_RETRY_DEAD_LETTER_FLOW.md
============================================================

# ============================================================
# GAME RETRY DEAD LETTER FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry and dead-letter flow for GameOS.

flow_steps:
1 recoverable or terminal failure occurs
2 retry and cutoff basis are verified
3 retry-dead-letter runtime updates state
4 restoration or quarantine path may follow
5 failure trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/240.cross-cutting-completion/0502402_GAME_GOVERNANCE_FLOW.md
============================================================

# ============================================================
# GAME GOVERNANCE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical governance flow for GameOS.

flow_steps:
1 governance or audit action occurs
2 authority, boundary, and compatibility basis are verified
3 governance runtime updates state
4 supersession or invalidation path may follow
5 governance trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/250.distribution-platform/0502500_GAME_DISTRIBUTION_FLOW.md
============================================================

# ============================================================
# GAME DISTRIBUTION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game distribution flow.

flow_steps:
1 title or release action occurs
2 developer, package, and compatibility basis are verified
3 distribution runtime updates state
4 publish or revoke path may follow
5 distribution trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/250.distribution-platform/0502501_GAME_DEVICE_DELIVERY_FLOW.md
============================================================

# ============================================================
# GAME DEVICE DELIVERY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game device delivery flow.

flow_steps:
1 device or delivery action occurs
2 device, entitlement, package, and attestation basis are verified
3 device-delivery runtime updates state
4 activation, revoke, or expiry path may follow
5 delivery trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/260.marketplace-linkage/0502600_GAME_MARKETPLACE_LINKAGE_FLOW.md
============================================================

# ============================================================
# GAME MARKETPLACE LINKAGE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS marketplace linkage flow.

flow_steps:
1 marketplace linkage action occurs
2 title, release, seller, and entitlement-link basis are verified
3 linkage runtime updates state
4 activation, suspension, or archive path may follow
5 linkage trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/261.title-transfer/0502610_GAME_TITLE_TRANSFER_FLOW.md
============================================================

# ============================================================
# GAME TITLE TRANSFER FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title transfer flow.

flow_steps:
1 title transfer action occurs
2 source seller, target seller, title, release, and marketplace transfer basis are verified
3 title-transfer runtime updates state
4 reassignment, continuity, or reversal path may follow
5 transfer trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/262.developer-platform/0502620_GAME_DEVELOPER_PLATFORM_FLOW.md
============================================================

# ============================================================
# GAME DEVELOPER PLATFORM FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS developer platform flow.

flow_steps:
1 developer-platform action occurs
2 seller, workspace, runtime, release, validation, and moderation basis are verified
3 developer-platform runtime updates state
4 acceptance, activation, suspension, or reversal path may follow
5 developer-platform trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/263.sync-platform/0502630_GAME_SYNC_INTAKE_FLOW.md
============================================================

# ============================================================
# GAME SYNC INTAKE FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS sync intake flow.

flow_steps:
1 sync intake action occurs
2 title, player, device, entitlement, and attestation basis are verified
3 sync intake runtime updates state
4 acceptance, rejection, or supersession path may follow
5 sync trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/263.sync-platform/0502631_GAME_SYNC_ADJUDICATION_FLOW.md
============================================================

# ============================================================
# GAME SYNC ADJUDICATION FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS sync adjudication flow.

flow_steps:
1 snapshot or conflict action occurs
2 accepted envelope, lineage, and player/title basis are verified
3 sync adjudication runtime updates state
4 resolution, supersession, or invalidation path may follow
5 adjudication trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/264.genre-runtime/0502640_GAME_GENRE_RUNTIME_FLOW.md
============================================================

# ============================================================
# GAME GENRE RUNTIME FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical GameOS genre-runtime flow.

flow_steps:
1 genre-runtime action occurs
2 runtime, ruleset, package, template, and compatibility basis are verified
3 genre-runtime runtime updates state
4 activation, supersession, or archive path may follow
5 genre-runtime trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/265.builder-webapp/0502650_GAME_BUILDER_WEBAPP_FLOW.md
============================================================

# ============================================================
# GAME BUILDER WEBAPP FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical Game Builder Web App flow.

flow_steps:
1 builder-webapp action occurs
2 workspace, project, runtime, template, export, and release basis are verified
3 builder-webapp runtime updates state
4 preview, export, validation, submit, or restore path may follow
5 builder-webapp trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/050.flow/266.builder-template-asset-system/0502660_GAME_TEMPLATE_ASSET_FLOW.md
============================================================

# ============================================================
# GAME TEMPLATE ASSET FLOW
# ============================================================

status: canonical
layer: 050.flow
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical Game Builder template-asset flow.

flow_steps:
1 template-asset action occurs
2 runtime family, ruleset, asset family, boundary, and ux basis are verified
3 template-asset runtime updates state
4 activation, supersession, or archive path may follow
5 template-asset trace remains preserved




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/060.integration/0700008_GAME_SYNC_CONSUME_OPERATION.md
============================================================

# ============================================================
# GAME SYNC CONSUME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for consuming Persona sync results inside GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/060.integration/0700009_GAME_OUTBOX_DISPATCH_OPERATION.md
============================================================

# ============================================================
# GAME OUTBOX DISPATCH OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational procedure for dispatching GameOS outbound Persona sync events.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/060.integration/0700010_GAME_GROWTH_SYNC_RETRY_OPERATION.md
============================================================

# ============================================================
# GAME GROWTH SYNC RETRY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define retry-safe handling for failed Game-to-Persona growth synchronization.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/210.game-core/0702100_GAME_CORE_OPERATION.md
============================================================

# ============================================================
# GAME CORE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for game core lifecycle.

operation_steps:
1 inspect game-core target and player basis
2 invoke game-core runtime
3 persist game outcome
4 preserve game and audit trace

success_condition:
- game core lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/220.progression-reward/0702200_GAME_PROGRESSION_OPERATION.md
============================================================

# ============================================================
# GAME PROGRESSION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for progression and reward lifecycle.

operation_steps:
1 inspect progression target and reward basis
2 invoke progression runtime
3 persist progression outcome
4 preserve progression and audit trace

success_condition:
- game progression lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/230.battle-security-economy/0702300_GAME_BATTLE_OPERATION.md
============================================================

# ============================================================
# GAME BATTLE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for battle and result lifecycle.

operation_steps:
1 inspect battle target and session basis
2 invoke battle runtime
3 persist battle outcome
4 preserve battle and audit trace

success_condition:
- game battle lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/230.battle-security-economy/0702301_GAME_SECURITY_MODERATION_OPERATION.md
============================================================

# ============================================================
# GAME SECURITY MODERATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for anti-cheat, moderation, and replay lifecycle.

operation_steps:
1 inspect security target and authority basis
2 invoke security-moderation runtime
3 persist security outcome
4 preserve security and audit trace

success_condition:
- game security lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/230.battle-security-economy/0702302_GAME_PERSONA_ECONOMY_OPERATION.md
============================================================

# ============================================================
# GAME PERSONA ECONOMY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for persona binding, projection, entitlement, and economy lifecycle.

operation_steps:
1 inspect persona-economy target and contract basis
2 invoke persona-economy runtime
3 persist economy outcome
4 preserve economy and audit trace

success_condition:
- game persona-economy lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/240.cross-cutting-completion/0702400_GAME_LIFECYCLE_OPERATION.md
============================================================

# ============================================================
# GAME LIFECYCLE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for shared lifecycle governance in GameOS.

operation_steps:
1 inspect lifecycle target and transition basis
2 invoke lifecycle runtime
3 persist lifecycle outcome
4 preserve lifecycle and audit trace

success_condition:
- game lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/240.cross-cutting-completion/0702401_GAME_RETRY_DEAD_LETTER_OPERATION.md
============================================================

# ============================================================
# GAME RETRY DEAD LETTER OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for shared retry and dead-letter governance in GameOS.

operation_steps:
1 inspect failure target and retry basis
2 invoke retry-dead-letter runtime
3 persist failure outcome
4 preserve failure and audit trace

success_condition:
- game retry or dead-letter lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/240.cross-cutting-completion/0702402_GAME_GOVERNANCE_OPERATION.md
============================================================

# ============================================================
# GAME GOVERNANCE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for approval, boundary,
compatibility, and audit governance in GameOS.

operation_steps:
1 inspect governance target and authority basis
2 invoke governance runtime
3 persist governance outcome
4 preserve governance and audit trace

success_condition:
- game governance lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/250.distribution-platform/0702500_GAME_DISTRIBUTION_OPERATION.md
============================================================

# ============================================================
# GAME DISTRIBUTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for game distribution lifecycle.

operation_steps:
1 inspect distribution target and developer basis
2 invoke distribution runtime
3 persist distribution outcome
4 preserve distribution and audit trace

success_condition:
- game distribution lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/250.distribution-platform/0702501_GAME_DEVICE_DELIVERY_OPERATION.md
============================================================

# ============================================================
# GAME DEVICE DELIVERY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for device registration and delivery lifecycle.

operation_steps:
1 inspect delivery target and device basis
2 invoke device-delivery runtime
3 persist delivery outcome
4 preserve delivery and audit trace

success_condition:
- game device-delivery lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/260.marketplace-linkage/0702600_GAME_MARKETPLACE_LINKAGE_OPERATION.md
============================================================

# ============================================================
# GAME MARKETPLACE LINKAGE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS marketplace linkage lifecycle.

operation_steps:
1 inspect linkage target and title basis
2 invoke linkage runtime
3 persist linkage outcome
4 preserve linkage and audit trace

success_condition:
- GameOS marketplace linkage lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/261.title-transfer/0702610_GAME_TITLE_TRANSFER_OPERATION.md
============================================================

# ============================================================
# GAME TITLE TRANSFER OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for game title transfer lifecycle.

operation_steps:
1 inspect transfer target and title basis
2 invoke title-transfer runtime
3 persist transfer outcome
4 preserve transfer and audit trace

success_condition:
- game title transfer lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/262.developer-platform/0702620_GAME_DEVELOPER_PLATFORM_OPERATION.md
============================================================

# ============================================================
# GAME DEVELOPER PLATFORM OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS developer-platform lifecycle.

operation_steps:
1 inspect developer-platform target and workspace basis
2 invoke developer-platform runtime
3 persist developer-platform outcome
4 preserve developer-platform and audit trace

success_condition:
- developer-platform lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/263.sync-platform/0702630_GAME_SYNC_INTAKE_OPERATION.md
============================================================

# ============================================================
# GAME SYNC INTAKE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS sync intake lifecycle.

operation_steps:
1 inspect sync intake target and device basis
2 invoke sync intake runtime
3 persist sync intake outcome
4 preserve sync intake and audit trace

success_condition:
- sync intake lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/263.sync-platform/0702631_GAME_SYNC_ADJUDICATION_OPERATION.md
============================================================

# ============================================================
# GAME SYNC ADJUDICATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS sync adjudication lifecycle.

operation_steps:
1 inspect adjudication target and snapshot basis
2 invoke sync adjudication runtime
3 persist adjudication outcome
4 preserve adjudication and audit trace

success_condition:
- sync adjudication lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/264.genre-runtime/0702640_GAME_GENRE_RUNTIME_OPERATION.md
============================================================

# ============================================================
# GAME GENRE RUNTIME OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for GameOS genre-runtime lifecycle.

operation_steps:
1 inspect genre-runtime target and runtime basis
2 invoke genre-runtime runtime
3 persist genre-runtime outcome
4 preserve genre-runtime and audit trace

success_condition:
- genre-runtime lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/265.builder-webapp/0702650_GAME_BUILDER_WEBAPP_OPERATION.md
============================================================

# ============================================================
# GAME BUILDER WEBAPP OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for Game Builder Web App lifecycle.

operation_steps:
1 inspect builder-webapp target and workspace basis
2 invoke builder-webapp runtime
3 persist builder-webapp outcome
4 preserve builder-webapp and audit trace

success_condition:
- builder-webapp lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/070.operations/266.builder-template-asset-system/0702660_GAME_TEMPLATE_ASSET_OPERATION.md
============================================================

# ============================================================
# GAME TEMPLATE ASSET OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for Game Builder template-asset lifecycle.

operation_steps:
1 inspect template-asset target and runtime family basis
2 invoke template-asset runtime
3 persist template-asset outcome
4 preserve template-asset and audit trace

success_condition:
- template-asset lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/000_POLICY_INDEX.md
============================================================

# ============================================================
# GAME OS POLICY INDEX
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: policy
document_type: index
owner: Boss
prepared_by: Zero

subdomains:
- 110.persona-reflection
- 111.national-currency-gambling

documents:
- 110.persona-reflection/0801100_GAME_OS_PERSONA_REFLECTION_POLICY.md
- 111.national-currency-gambling/0801110_GAME_OS_NATIONAL_CURRENCY_WAGER_POLICY.md




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/000_POLICY_OVERVIEW.md
============================================================

# ============================================================
# GAME OS POLICY OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: policy
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The policy layer defines what may be reflected into PersonaOS, how
national-currency gambling must be controlled, and how multilingual,
multi-currency, and multi-device readiness must be preserved.

principles:
- only meaningful continuous changes may become reflection proposals
- title-local convenience values must not leak into canonical truth
- national-currency gambling requires safety, audit, and dispute control
- multilingual support must be preserved as a formal design premise
- multi-currency support must be preserved as a formal design premise
- multi-device support must be preserved as a formal design premise

multilingual_policy_note:
- user-facing text must not be treated as single-language fixed truth
- language-aware delivery and fallback are expected

multi_currency_policy_note:
- monetary values must remain currency-aware
- source truth and converted display values must not be mixed

multi_device_policy_note:
- design must not assume phone-only operation
- iPhone, Android, PC, and tablet support must remain in scope
- interface policy must preserve cross-device operability




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/040.integration/0800007_GAME_SYNC_CONSUMER_POLICY.md
============================================================

# ============================================================
# GAME SYNC CONSUMER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for consuming Persona sync results inside GameOS.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/040.integration/0800008_GAME_PERSONA_USAGE_POLICY.md
============================================================

# ============================================================
# GAME PERSONA USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Persona usage inside GameOS.

rule:
Permission is required but not sufficient.
Trust gating must also be respected.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/040.integration/0800009_GAME_OUTBOX_POLICY.md
============================================================

# ============================================================
# GAME OUTBOX POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS outbound Persona-related event dispatch.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/040.integration/0800010_GAME_TO_PERSONA_GROWTH_POLICY.md
============================================================

# ============================================================
# GAME TO PERSONA GROWTH POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game-originated Persona growth synchronization.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/040.integration/0800011_GAME_PERSONA_TRUST_USAGE_POLICY.md
============================================================

# ============================================================
# GAME PERSONA TRUST USAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define how trust-related Persona values gate Persona exposure inside GameOS.

examples:
- low trust may allow limited NPC presentation
- medium trust may allow side-role interaction
- high trust may allow broader assistant or companion presentation




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/110.persona-reflection/0801100_GAME_OS_PERSONA_REFLECTION_POLICY.md
============================================================

# ============================================================
# GAME OS PERSONA REFLECTION POLICY
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: policy
domain: persona-reflection
document_type: policy
owner: Boss
prepared_by: Zero

policy_principles:
- GameOS never directly overwrites PersonaOS canonical truth
- only meaningful continuous changes may become candidates
- temporary values and title-local convenience flags must not be reflected
- transformed adoption is allowed
- auditability is mandatory

genre_specific_guidance:

  action_game:
    candidate_friendly:
      - repeated rescue significance
      - repeated survival cooperation
      - stable support under danger
      - trust reinforced through survival pressure
    candidate_hostile:
      - temporary damage state
      - temporary fear spike
      - stage-only resource count
      - one-scene panic reaction

  adventure_game:
    candidate_friendly:
      - repeated discovery-linked trust
      - meaningful shared investigation memory
      - long-term guide familiarity
      - clue-linked turning-point memory
    candidate_hostile:
      - branch-only clue flags
      - scene-only completion flags
      - implementation-only discovery counters

  two_d_fighting_game:
    candidate_friendly:
      - repeated duel rivalry
      - stable respect-in-rivalry
      - persistent hostility pattern
      - symbolic defeat or victory memory significance
      - opponent-specific reaction tendency
    candidate_hostile:
      - combo counters
      - frame or tuning values
      - one-round aggression spikes
      - bracket implementation flags

notes:
- survival action is not limited to horror
- route progress is never canonical relation truth
- local battle metrics are never canonical rivalry truth




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/111.national-currency-gambling/0801110_GAME_OS_NATIONAL_CURRENCY_WAGER_POLICY.md
============================================================

# ============================================================
# GAME OS NATIONAL CURRENCY WAGER POLICY
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: policy
domain: national-currency-gambling
document_type: policy
owner: Boss
prepared_by: Zero

policy_principles:
- national-currency wager is not ordinary game reward handling
- eligibility, safety, audit, and dispute handling are mandatory
- wallet canonical truth must not live in GameOS
- wager lock, outcome, payout, refund, and reversal must be separated
- Persona must not be used as the basis of gambling eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/210.game-core/0802100_GAME_CORE_POLICY.md
============================================================

# ============================================================
# GAME CORE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game core lifecycle.

policy_rules:
- player, profile, session, roster, slot, and snapshot basis must remain explicit
- interrupted, removed, superseded, or archived states must remain explicit
- game traceability must remain preserved
- game core truth must remain canonical




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/220.progression-reward/0802200_GAME_PROGRESSION_POLICY.md
============================================================

# ============================================================
# GAME PROGRESSION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for progression and reward lifecycle.

policy_rules:
- player, quest, reward, crafting, and ranking basis must remain explicit
- duplicate effective reward or crafting actions must be prevented
- failed, reversed, retired, locked, or invalidated states must remain explicit
- game progression truth must remain canonical

evaluation_order:
1 target validity
2 player validity
3 quest validity
4 reward validity
5 idempotency basis validity
6 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/230.battle-security-economy/0802300_GAME_BATTLE_POLICY.md
============================================================

# ============================================================
# GAME BATTLE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for battle and result lifecycle.

policy_rules:
- player, session, result, and source basis must remain explicit
- interrupted, corrected, invalidated, or archived states must remain explicit
- battle traceability must remain preserved
- game battle truth must remain canonical




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/230.battle-security-economy/0802301_GAME_SECURITY_MODERATION_POLICY.md
============================================================

# ============================================================
# GAME SECURITY MODERATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for anti-cheat, moderation, and replay lifecycle.

policy_rules:
- authority, evidence, player, and source-session basis must remain explicit
- actionable, resolved, applied, reversed, corrected, or invalidated states must remain explicit
- security traceability must remain preserved
- game security truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 evidence validity
4 player validity
5 source-session validity
6 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/230.battle-security-economy/0802302_GAME_PERSONA_ECONOMY_POLICY.md
============================================================

# ============================================================
# GAME PERSONA ECONOMY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for persona binding, package projection, purchase entitlement, and economy settlement lifecycle.

policy_rules:
- player, persona, package, purchase, and contract basis must remain explicit
- duplicate effective projection or settlement must be prevented
- suspended, revoked, expired, failed, or reversed states must remain explicit
- game persona-economy truth must remain canonical

evaluation_order:
1 target validity
2 player validity
3 persona validity
4 package validity
5 purchase validity
6 idempotency basis validity
7 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/240.cross-cutting-completion/0802400_GAME_LIFECYCLE_POLICY.md
============================================================

# ============================================================
# GAME LIFECYCLE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for shared lifecycle governance in GameOS.

policy_rules:
- transition basis, terminal basis, and authority basis must remain explicit
- invalid, suspended, superseded, or archived states must remain explicit
- lifecycle traceability must remain preserved
- lifecycle truth must remain canonical




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/240.cross-cutting-completion/0802401_GAME_RETRY_DEAD_LETTER_POLICY.md
============================================================

# ============================================================
# GAME RETRY DEAD LETTER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for shared retry and dead-letter governance in GameOS.

policy_rules:
- retry basis, cutoff basis, and quarantine basis must remain explicit
- exhausted, quarantined, or restored failure states must remain explicit
- failure traceability must remain preserved
- retry and dead-letter truth must remain canonical

retry_principles:
- retries must be bounded
- retries must not mask terminal failures
- retry identity must remain deterministic
- restoration must remain explicit

dead_letter_conditions:
- irrecoverable semantic failure
- terminal authority-basis failure
- exhausted retry budget
- incompatible contract profile
- missing target beyond cutoff




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/240.cross-cutting-completion/0802402_GAME_GOVERNANCE_POLICY.md
============================================================

# ============================================================
# GAME GOVERNANCE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for approval, ownership boundary,
compatibility, and audit governance in GameOS.

policy_rules:
- authority basis, ownership boundary, and compatibility basis must remain explicit
- superseded, invalidated, revised, or archived states must remain explicit
- governance traceability must remain preserved
- governance truth must remain canonical

evaluation_order:
1 target validity
2 authority validity
3 ownership-boundary validity
4 compatibility validity
5 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/250.distribution-platform/0802500_GAME_DISTRIBUTION_POLICY.md
============================================================

# ============================================================
# GAME DISTRIBUTION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game distribution lifecycle.

policy_rules:
- developer, release, build, package, manifest, and compatibility basis must remain explicit
- published, superseded, suspended, revoked, or archived states must remain explicit
- distribution traceability must remain preserved
- game distribution truth must remain canonical




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/250.distribution-platform/0802501_GAME_DEVICE_DELIVERY_POLICY.md
============================================================

# ============================================================
# GAME DEVICE DELIVERY POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for device registration and delivery lifecycle.

policy_rules:
- device, entitlement, package, attestation, and license basis must remain explicit
- suspended, revoked, expired, or archived states must remain explicit
- delivery traceability must remain preserved
- game device-delivery truth must remain canonical

evaluation_order:
1 target validity
2 device validity
3 entitlement validity
4 package validity
5 attestation validity
6 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/260.marketplace-linkage/0802600_GAME_MARKETPLACE_LINKAGE_POLICY.md
============================================================

# ============================================================
# GAME MARKETPLACE LINKAGE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS marketplace linkage lifecycle.

policy_rules:
- marketplace seller, product, title, release, and entitlement-link basis must remain explicit
- GameOS may accept marketplace commerce from individual sellers or company sellers
- commercial purchase records and execution entitlements must remain separated
- suspended or archived linkage states must remain explicit
- marketplace linkage truth must remain canonical




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/261.title-transfer/0802610_GAME_TITLE_TRANSFER_POLICY.md
============================================================

# ============================================================
# GAME TITLE TRANSFER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for game title transfer lifecycle.

policy_rules:
- seller owner-class change is prohibited and out of scope for GameOS transfer
- transfer unit must be game title and linked marketplace product, not seller identity
- approved title transfer may reassign future publishing responsibility only
- past commerce and ledger history remain with source seller
- entitlement continuity for already entitled users must be preserved
- duplicate effective title transfer must be prevented
- game title transfer truth must remain canonical

evaluation_order:
1 source seller validity
2 target seller validity
3 title validity
4 linked marketplace transfer validity
5 release reassignment validity
6 entitlement continuity validity
7 idempotency basis validity
8 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/262.developer-platform/0802620_GAME_DEVELOPER_PLATFORM_POLICY.md
============================================================

# ============================================================
# GAME DEVELOPER PLATFORM POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS developer-platform lifecycle.

policy_rules:
- seller, workspace, runtime profile, builder linkage, validation acceptance, and publish activation basis must remain explicit
- publish activation without accepted validation is prohibited
- builder-backed package linkage must remain explicit for platform-managed games
- rejected, failed, suspended, or archived states must remain explicit
- developer-platform truth must remain canonical

evaluation_order:
1 seller validity
2 workspace validity
3 runtime profile validity
4 builder linkage validity
5 release validity
6 validation acceptance validity
7 activation validity
8 idempotency basis validity
9 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/263.sync-platform/0802630_GAME_SYNC_INTAKE_POLICY.md
============================================================

# ============================================================
# GAME SYNC INTAKE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS sync intake lifecycle.

policy_rules:
- title, player, device, entitlement, and attestation basis must remain explicit
- save, achievement, ranking, replay, telemetry, and attestation submissions are untrusted until validated
- duplicate effective sync intake must be prevented
- accepted and rejected sync states must remain explicit
- sync intake truth must remain canonical

evaluation_order:
1 title validity
2 player validity
3 device validity
4 entitlement validity
5 attestation validity
6 idempotency basis validity
7 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/263.sync-platform/0802631_GAME_SYNC_ADJUDICATION_POLICY.md
============================================================

# ============================================================
# GAME SYNC ADJUDICATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS sync adjudication lifecycle.

policy_rules:
- accepted save state must be derived only from validated sync envelopes
- conflict detection and conflict resolution basis must remain explicit
- superseded or invalidated save states must remain explicit
- entitlement continuity and save lineage must remain preserved
- sync adjudication truth must remain canonical

evaluation_order:
1 envelope validity
2 snapshot lineage validity
3 player-title continuity validity
4 conflict validity
5 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/264.genre-runtime/0802640_GAME_GENRE_RUNTIME_POLICY.md
============================================================

# ============================================================
# GAME GENRE RUNTIME POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for GameOS genre-runtime lifecycle.

policy_rules:
- runtime profile, ruleset, package, and ui template basis must remain explicit
- builder-backed games must resolve to an approved runtime family
- superseded or archived runtime assets must remain explicit
- genre-runtime truth must remain canonical

evaluation_order:
1 runtime profile validity
2 ruleset validity
3 package validity
4 template validity
5 compatibility validity
6 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/264.runtime-layer/0802640_GAME_RUNTIME_VALIDATION_POLICY.md
============================================================

# ============================================================
# GAME RUNTIME VALIDATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official validation policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- validation stages
- severity model
- blocking rules
- compatibility rules
- export safety rules
- publish safety rules
- Persona boundary validation
- sync-facing validation principles


# ============================================================
# 1. VALIDATION ROLE
# ============================================================

Runtime validation exists to guarantee:

- execution predictability
- template compatibility
- export safety
- publish readiness
- sync-safe boundaries
- non-Persona asset boundary safety
- declarative runtime integrity

Validation is mandatory.

No Builder project may become a publishable package
without passing required runtime validation stages.


# ============================================================
# 2. VALIDATION STAGES
# ============================================================

All runtime families must support three validation stages.

## 2.1 EDITING VALIDATION

Purpose:
Provide immediate feedback during authoring.

Typical scope:
- required field presence
- unresolved references
- invalid block relations
- missing asset assignments
- invalid condition declarations
- invalid rule parameters

Editing validation is fast and iterative.

Editing validation may run:
- on manual save
- on explicit validate action
- on selected structural changes


## 2.2 EXPORT VALIDATION

Purpose:
Guarantee export package integrity.

Typical scope:
- runtime family resolution
- ruleset resolution
- template compatibility
- asset family completeness
- graph continuity
- lifecycle integrity
- structure completeness
- required metadata completeness

Export validation is stronger than editing validation.

Export must be blocked if export validation fails.


## 2.3 PUBLISH VALIDATION

Purpose:
Guarantee publish-safe submission quality.

Typical scope:
- seller/title/release linkage
- runtime metadata completeness
- moderation-sensitive configuration
- Persona boundary compliance
- marketplace/export consistency
- compatibility profile completeness
- store/publish facing readiness

Publish validation is the strongest stage.

Submission and publish activation must be blocked
if publish validation fails.


# ============================================================
# 3. VALIDATION SEVERITY MODEL
# ============================================================

All validation findings must be classified as:

- blocking
- warning
- info

## 3.1 BLOCKING

A blocking issue prevents:
- export
- submission
- publish
depending on stage

Examples:
- unresolved runtime family
- broken quest chain
- missing required stage rule
- invalid ending resolution
- missing required asset family
- prohibited Persona usage
- runtime ambiguity

## 3.2 WARNING

A warning does not always block,
but indicates degraded quality or likely failure risk.

Examples:
- optional asset missing
- weak branch coverage
- poor route balance
- unused block
- suspicious score formula
- oversized package component

## 3.3 INFO

Informational diagnostics only.

Examples:
- unused optional template zone
- recommended metadata missing
- non-optimal asset format
- possible optimization suggestions


# ============================================================
# 4. UNIVERSAL BLOCKING RULES
# ============================================================

The following issues must always be blocking.

- runtime family unresolved
- multiple active runtime families bound to one export
- ruleset profile unresolved
- required template family unresolved
- required asset family unresolved
- invalid export metadata
- invalid compatibility profile
- broken scene/area/stage/map continuity
- impossible victory/ending/clear resolution
- prohibited Persona truth mutation attempt
- prohibited entitlement mutation attempt
- prohibited ranking finalization attempt
- prohibited economy mutation attempt
- invalid sync boundary declaration

These are non-negotiable.


# ============================================================
# 5. RUNTIME FAMILY COMPATIBILITY RULE
# ============================================================

A Builder project must resolve to exactly one
approved runtime family.

Allowed:
- one project -> one runtime family

Prohibited:
- one project -> multiple active runtime families
- runtime family inferred only implicitly
- runtime family omitted at export

A template family must bind to exactly one approved runtime family.

A project must not be exportable when:
- template family and runtime family disagree
- runtime family and ruleset profile disagree
- export profile and runtime family disagree


# ============================================================
# 6. TEMPLATE VALIDATION RULE
# ============================================================

Validation must confirm:

- template family exists
- template tier exists
- required blocks exist
- protected zone integrity remains intact
- editable zone mutations are allowed
- advanced override changes occur only in allowed zones

The following must be blocking:
- mutation of protected zone in non-advanced path
- missing required template block
- missing required template asset family
- incompatible template family / runtime family pair


# ============================================================
# 7. ASSET FAMILY VALIDATION RULE
# ============================================================

Validation must confirm:

- required asset families are resolved
- asset type is allowed for runtime family
- asset metadata is complete
- asset export format is runtime-compatible
- asset ownership/boundary is valid
- asset binding references are resolvable

Examples:
- RPG requires required enemy/quest/map-facing assets
- Strategy requires unit/building/map-facing assets
- Puzzle requires stage/icon/ui-facing assets
- VN requires scene/presentation/ui-facing assets

The following must be blocking:
- required asset family missing
- invalid asset format for runtime family
- unresolved asset binding
- prohibited Persona overlap
- missing export-critical asset metadata


# ============================================================
# 8. PERSONA BOUNDARY VALIDATION RULE
# ============================================================

Persona truth belongs to PersonaOS.

Runtime validation must ensure that GameOS Builder
and runtime families do not misuse Persona truth.

Allowed:
- approved projection references
- approved dialogue style shaping
- approved presentation shaping
- approved cast bindings

Prohibited:
- direct Persona truth mutation
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation
- treating generic game assets as Persona truth

The following must be blocking:
- Builder asset layer attempting to register
  generic enemy/unit/building material as Persona truth
- runtime logic depending on prohibited Persona internals
- export package containing prohibited Persona authority assumptions


# ============================================================
# 9. PREVIEW VALIDATION RULE
# ============================================================

Preview must remain sandboxed.

Validation must confirm that preview mode cannot:

- mutate production ranking truth
- mutate production achievement truth
- mutate production entitlement truth
- mutate production commerce truth
- mutate production Persona growth truth

The following must be blocking:
- preview path bound to production commerce endpoints
- preview path bound to production entitlement mutation
- preview path bound to production ranking finalization
- preview path bound to production Persona mutation


# ============================================================
# 10. EXPORT VALIDATION RULE
# ============================================================

Export validation must guarantee that the export package is:

- runtime-unambiguous
- ruleset-resolved
- template-compatible
- asset-complete
- metadata-complete
- preview-safe
- sync-compatible

An export package must freeze:
- runtime family
- ruleset profile
- required asset family set
- compatibility profile
- export hash basis

Export must be blocked when:
- export is based only on autosave state
- official saved revision is missing
- blocking issues remain
- runtime metadata is incomplete
- export package lineage is invalid


# ============================================================
# 11. SYNC-FACING VALIDATION RULE
# ============================================================

Runtime validation must declare what outputs are allowed
to become sync candidates.

Possible candidate categories:
- save snapshot candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- scenario completion candidate
- quest completion candidate
- stage completion candidate
- victory/defeat candidate

Validation must ensure:
- candidates are explicitly declared
- candidates are not treated as final truth
- client-side submissions remain untrusted
- sync adjudication remains required

The following must be blocking:
- runtime declaring client-side finality for ranking
- runtime declaring client-side finality for achievement
- runtime declaring client-side finality for entitlement
- runtime declaring client-side finality for commerce


# ============================================================
# 12. PUBLISH VALIDATION RULE
# ============================================================

Publish validation must guarantee platform safety.

Validation must confirm:
- seller linkage exists
- title linkage exists
- release linkage exists
- runtime metadata is complete
- moderation-facing metadata is complete
- compatibility metadata is complete
- store-facing metadata is sufficiently resolved

Submission or publish must be blocked when:
- release is unresolved
- moderation-critical metadata is missing
- runtime family is unresolved
- publish activation depends on failed validation
- required rollout approval assumptions are missing


# ============================================================
# 13. FAMILY-SPECIFIC VALIDATION GUIDANCE
# ============================================================

## 13.1 VN / DATING

Must validate:
- scene graph continuity
- branch target validity
- affection and relationship state validity
- ending resolution determinism
- route structure integrity

## 13.2 RPG

Must validate:
- area graph continuity
- quest chain integrity
- battle preset validity
- inventory/reward rule consistency
- shop and progression rule integrity

## 13.3 PUZZLE

Must validate:
- stage sequence continuity
- clear/fail rule integrity
- score formula determinism
- retry configuration integrity
- ranking candidate validity

## 13.4 STRATEGY

Must validate:
- map continuity
- turn lifecycle integrity
- unit action boundary validity
- resource/building rule integrity
- victory/defeat determinism


# ============================================================
# 14. VALIDATION OUTPUT RULE
# ============================================================

Validation output must always include:

- validation_stage
- runtime_family
- ruleset_profile_code
- finding_id
- severity
- affected_scope
- affected_ref
- summary
- fix_hint where possible

Validation output must remain machine-readable
and human-readable.

Builder UI must be able to:
- show severity grouping
- jump to offending block/asset
- show blocking count
- show warning count
- show last validation timestamp


# ============================================================
# 15. FINAL POLICY RULE
# ============================================================

Runtime validation is a mandatory GameOS safety layer.

It is the formal gate between:
- authoring
- export
- submission
- publish

Core summary:

- editing validation improves authoring safety
- export validation guarantees package integrity
- publish validation guarantees platform safety
- runtime ambiguity is prohibited
- Persona misuse is prohibited
- unresolved required assets are prohibited
- client-side final truth claims are prohibited




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/264.runtime-layer/0802641_GAME_RUNTIME_STATE_MUTATION_POLICY.md
============================================================

# ============================================================
# GAME RUNTIME STATE MUTATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official state mutation policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- allowed mutation domains
- bounded mutation rules
- candidate-only mutation rules
- saveable/transient/prohibited-authority boundaries
- platform safety boundaries
- Persona boundary restrictions


# ============================================================
# 1. ROLE OF MUTATION POLICY
# ============================================================

Runtime mutation policy exists to guarantee that
GameOS runtime behavior remains:

- explicit
- bounded
- replayable
- validation-friendly
- sync-safe
- platform-safe

No runtime family may mutate state outside
approved mutation domains.

No Builder-authored project may introduce
hidden mutation categories.

State mutation is allowed only when:
- the target domain is approved
- the source action is explicit
- the direction is explicit
- the persistence rule is explicit
- the sync implications are explicit where relevant


# ============================================================
# 2. MUTATION DOMAIN CLASSES
# ============================================================

All runtime mutations must belong to one of these classes:

## 2.1 LOCAL EXECUTION MUTATION

Temporary runtime-local mutation used during execution.

Examples:
- preview branch selection state
- temporary battle turn state
- temporary move selection state
- temporary puzzle board state

Local execution mutation is not authoritative by itself.

## 2.2 SAVEABLE CONTINUITY MUTATION

Mutation that may contribute to accepted save continuity.

Examples:
- accepted route progression
- accepted quest progression
- accepted area/stage progression
- accepted inventory continuity
- accepted building/control continuity

Saveable continuity mutation is candidate-based
until accepted through approved GameOS flow.

## 2.3 CANDIDATE MUTATION

Mutation that produces a candidate output,
not final platform truth.

Examples:
- reward candidate
- achievement candidate
- ranking candidate
- replay candidate
- telemetry candidate
- completion candidate

Candidate mutation is never final truth by itself.

## 2.4 PROHIBITED AUTHORITY MUTATION

Mutation that runtime is not allowed to finalize directly.

Examples:
- final entitlement mutation
- final platform ranking truth
- final achievement truth
- final commerce truth
- final Persona truth mutation
- final seller or marketplace truth mutation


# ============================================================
# 3. ALLOWED MUTATION DOMAINS
# ============================================================

The following mutation domains are allowed
when explicitly declared by runtime family and ruleset.

- narrative variable state
- affection state
- relationship state
- route state
- quest state
- objective state
- area progression state
- stage progression state
- map continuity state
- turn progression state
- unit state
- resource state
- building state
- inventory candidate state
- reward candidate state
- score candidate state
- unlock candidate state
- save candidate state
- replay candidate state
- telemetry candidate state

Allowed does not mean unrestricted.
Each must remain bounded by explicit rules.


# ============================================================
# 4. PROHIBITED MUTATION DOMAINS
# ============================================================

The following mutation domains are prohibited
for direct runtime finalization.

- platform entitlement truth
- platform commerce truth
- platform purchase truth
- platform seller truth
- platform marketplace listing truth
- final platform achievement truth
- final platform ranking truth
- Persona truth
- Persona trust internals
- Persona private memory truth
- Persona unrestricted growth truth
- account identity truth outside approved boundaries

Any runtime attempt to finalize these directly
must be blocking.


# ============================================================
# 5. MUTATION SHAPE RULE
# ============================================================

Every mutation must define:

- source_action
- target_domain
- mutation_type
- mutation_direction
- cap_or_limit where relevant
- persistence_class
- candidate_or_final_class
- validation_rule_ref where relevant

Allowed mutation shapes:

- increment
- decrement
- set_explicit_value
- unlock
- lock
- activate
- suspend
- supersede
- invalidate
- append_candidate
- replace_candidate
- mark_completed
- mark_failed

Unspecified mutation shape is prohibited.


# ============================================================
# 6. PERSISTENCE CLASSES
# ============================================================

Every mutation must declare one persistence class.

## 6.1 TRANSIENT

Valid only during immediate runtime execution.

Examples:
- currently highlighted dialogue choice
- active preview scene pointer
- current puzzle board intermediate state
- current tactical action preview

Transient mutation must not be treated
as accepted continuity truth.

## 6.2 CANDIDATE

Produced for later adjudication or acceptance.

Examples:
- reward candidate
- ranking candidate
- save candidate
- completion candidate

Candidate mutation is durable as a record,
but not final as truth.

## 6.3 ACCEPTED CONTINUITY

Valid only after approved acceptance/adjudication path.

Examples:
- accepted save continuity
- accepted progression continuity
- accepted unlock continuity

Runtime may reference accepted continuity,
but may not fabricate acceptance.

## 6.4 PROHIBITED AUTHORITY

Never directly finalizable by runtime.

Examples:
- final platform purchase state
- final platform entitlement truth
- final Persona truth mutation


# ============================================================
# 7. MUTATION DIRECTION RULE
# ============================================================

Mutation direction must be explicit and monotonic where required.

Examples of monotonic domains:
- completion milestone unlock
- accepted route unlock
- accepted quest completion
- accepted ending unlock

Examples of reversible domains:
- preview-only state
- temporary tactical occupancy
- candidate state before acceptance
- reversible building damage in declared rules

A runtime family must declare whether a domain is:
- monotonic
- reversible
- supersedable
- invalidatable

Undeclared directionality is prohibited.


# ============================================================
# 8. SAVEABLE VS TRANSIENT BOUNDARY
# ============================================================

Every runtime family must distinguish:

- saveable state
- derived state
- transient state
- prohibited-authority state

## Saveable state examples
- accepted route progression
- accepted quest progression
- accepted stage unlock
- accepted inventory continuity
- accepted unit/resource/building continuity

## Derived state examples
- ending eligibility derived from accepted state
- score tier derived from accepted score candidate
- shop availability derived from progression state

## Transient state examples
- in-preview branch pointer
- unresolved action target
- temporary puzzle intermediate board state
- temporary battle microstate

## Prohibited-authority state examples
- final ranking truth
- final commerce truth
- final entitlement truth
- Persona truth mutation

This boundary is mandatory.


# ============================================================
# 9. CANDIDATE-FIRST RULE
# ============================================================

Runtime must be candidate-first for externally meaningful outcomes.

The following must be emitted as candidates first:

- reward outcome
- ranking outcome
- achievement outcome
- replay outcome
- telemetry outcome
- save outcome
- completion outcome

Runtime must not directly convert these into
platform-final truth.

Adjudication, acceptance, or platform-side confirmation
must remain separate.


# ============================================================
# 10. PERSONA BOUNDARY RULE
# ============================================================

Runtime may affect only approved Persona-facing projections.

Allowed:
- presentation shaping
- dialogue style shaping
- reaction style shaping
- approved cast projection selection

Prohibited:
- Persona truth overwrite
- unrestricted trust mutation
- unrestricted memory mutation
- unrestricted growth mutation

Mutation policy must reject any runtime path
that attempts to cross this boundary.


# ============================================================
# 11. COMMERCE / ENTITLEMENT BOUNDARY RULE
# ============================================================

Runtime may reference:
- entitlement presence
- approved purchase-linked access state
- approved package availability state

Runtime may not finalize:
- purchase success truth
- refund truth
- entitlement issuance truth
- license revocation truth

These belong to GameOS Core / Marketplace-connected layers,
not runtime execution.


# ============================================================
# 12. RANKING / ACHIEVEMENT BOUNDARY RULE
# ============================================================

Runtime may emit:
- ranking candidate
- achievement candidate

Runtime may not finalize:
- ranking table truth
- achievement grant truth

These require GameOS sync adjudication
or platform-side confirmation.

Any runtime design that assumes direct finality
must be blocking.


# ============================================================
# 13. FAMILY-SPECIFIC MUTATION GUIDANCE
# ============================================================

## VN / DATING
Allowed:
- narrative variables
- affection variables
- relationship progression
- route unlock candidates
- ending unlock candidates

Prohibited:
- hidden affection mutation
- unrestricted Persona truth mutation

## RPG
Allowed:
- quest progression
- inventory candidate mutation
- reward candidate mutation
- level/progression mutation
- accepted area continuity mutation

Prohibited:
- unrestricted economy mutation
- unrestricted entitlement mutation

## PUZZLE
Allowed:
- stage progression
- score candidate mutation
- retry state mutation
- reward candidate mutation

Prohibited:
- direct ranking finality
- hidden score mutation

## STRATEGY
Allowed:
- turn progression
- unit/resource/building continuity mutation
- victory/defeat candidates
- control/capture continuity mutation

Prohibited:
- unrestricted persistence outside declared continuity
- direct platform reward finality


# ============================================================
# 14. VALIDATION REQUIREMENT
# ============================================================

Mutation legality must be validated at:

- editing validation
- export validation
- publish validation

Validation must confirm:
- mutation domain legality
- persistence class legality
- directionality legality
- boundary compliance
- candidate/finality legality

Illegal mutation must be blocking.


# ============================================================
# 15. FINAL POLICY RULE
# ============================================================

Runtime state mutation inside GameOS must remain bounded.

Core summary:

- allowed domains must be explicit
- prohibited domains must never be directly finalized
- saveable, transient, candidate, and prohibited-authority state
  must remain distinct
- candidate-first is mandatory for externally meaningful outcomes
- Persona truth and platform commerce truth are out of direct runtime scope




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/264.runtime-layer/0802642_GAME_RUNTIME_PREVIEW_SANDBOX_POLICY.md
============================================================

# ============================================================
# GAME RUNTIME PREVIEW SANDBOX POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official preview sandbox policy for GameOS Runtime Layer.

This policy applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines:
- what preview may execute
- what preview must never finalize
- how preview state is isolated
- how sandbox outputs are classified
- how Persona, ranking, achievement, commerce,
  entitlement, and sync boundaries are protected


# ============================================================
# 1. ROLE OF PREVIEW SANDBOX
# ============================================================

Preview sandbox exists to let creators test
runtime-authored game behavior safely.

Preview is not production execution truth.

Preview must allow:
- interactive trial execution
- structural flow confirmation
- asset confirmation
- rule confirmation
- branch/progression testing
- export-readiness confidence building

Preview must not:
- mutate production truth
- issue platform-final records
- bypass GameOS validation or adjudication
- mutate Persona truth

Core principle:

preview is executable simulation,
not authoritative platform execution


# ============================================================
# 2. PREVIEW EXECUTION CLASS
# ============================================================

All preview execution must be classified as:

- sandbox execution
- discardable execution
- non-authoritative execution
- mock-capable execution
- validation-supporting execution

Preview execution may resemble runtime execution,
but it must remain isolated from production truth.


# ============================================================
# 3. ALLOWED PREVIEW ACTIONS
# ============================================================

Preview may execute approved runtime behavior
inside the sandbox.

Allowed preview actions include:

- scene progression
- route progression preview
- dialogue execution
- affection/relationship preview mutation
- area traversal preview
- quest progression preview
- battle preset preview
- stage execution preview
- score calculation preview
- turn progression preview
- unit action preview
- building/resource progression preview
- reward preview
- save candidate preview
- ending/victory/defeat preview

Allowed does not imply production authority.

All allowed preview actions remain sandbox-local.


# ============================================================
# 4. PROHIBITED PREVIEW ACTIONS
# ============================================================

Preview must never directly perform production-final actions.

Prohibited preview actions include:

- final platform ranking mutation
- final platform achievement grant
- final platform commerce mutation
- final platform purchase truth mutation
- final platform entitlement issuance mutation
- final install/license mutation
- final seller/marketplace mutation
- final Persona truth mutation
- unrestricted trust/memory/growth mutation
- production sync acceptance/adjudication mutation

Any preview path attempting these is blocking.


# ============================================================
# 5. PREVIEW STATE ISOLATION RULE
# ============================================================

Preview state must be isolated from production state.

Preview must use one of the following isolation modes:

- in-memory sandbox state
- temporary persisted preview session state
- explicit preview candidate state
- mock projection state

Preview state must not silently merge into:
- accepted save continuity
- final ranking truth
- final achievement truth
- final commerce truth
- final Persona truth

Isolation is mandatory.


# ============================================================
# 6. PREVIEW PERSISTENCE CLASSES
# ============================================================

Preview-generated data must be classified as one of:

## 6.1 DISCARDED OUTPUT
Used only during temporary preview interaction.

## 6.2 PREVIEW SNAPSHOT
Retained temporarily for preview session continuity,
but not authoritative.

## 6.3 PREVIEW CANDIDATE
Represents what would be emitted in production,
but remains explicitly marked as preview-only.

## 6.4 PROHIBITED OUTPUT
Any output that would directly create production-final truth.

Preview may produce preview candidates.
Preview may not produce production-final outputs.


# ============================================================
# 7. MOCK MODE RULE
# ============================================================

Preview may use mock mode for platform-dependent behaviors.

Mock mode may be used for:

- ranking submission simulation
- achievement grant simulation
- reward visibility simulation
- commerce UI simulation
- entitlement presence simulation
- Persona projection simulation
- rollout/store metadata preview

Mock mode must be visibly marked as mock.

Mock mode must never call production-final mutation paths.


# ============================================================
# 8. PERSONA SANDBOX RULE
# ============================================================

Preview may consume approved Persona projections only.

Allowed in preview:
- presentation shaping preview
- dialogue tone preview
- reaction style preview
- cast projection preview

Prohibited in preview:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation
- unrestricted internal Persona state mutation

Persona truth remains external truth
even during preview.


# ============================================================
# 9. RANKING / ACHIEVEMENT SANDBOX RULE
# ============================================================

Preview may simulate:
- ranking candidate generation
- achievement candidate generation
- unlock visibility
- reward threshold visibility

Preview may not finalize:
- ranking table truth
- achievement grant truth

Preview output for ranking/achievement must be labeled:

- preview-only
- non-authoritative
- not submitted
or equivalent explicit classification


# ============================================================
# 10. COMMERCE / ENTITLEMENT SANDBOX RULE
# ============================================================

Preview may simulate:
- store entry visibility
- item availability visibility
- entitlement-dependent content path preview
- pricing display preview
- purchase flow UI preview

Preview may not finalize:
- purchase truth
- revenue truth
- entitlement issuance truth
- install license truth
- download grant truth

Any entitlement state used in preview must be:
- mocked
- sandbox-provided
- explicitly non-authoritative


# ============================================================
# 11. SAVE / SYNC SANDBOX RULE
# ============================================================

Preview may simulate:
- save candidate generation
- load candidate reconstruction
- sync candidate generation
- replay candidate generation
- telemetry candidate generation

Preview may not finalize:
- accepted save continuity
- sync adjudication truth
- replay acceptance truth
- telemetry platform-final truth

Preview-generated save/sync objects must remain:
- preview-only
- discardable
- non-authoritative


# ============================================================
# 12. FAMILY-SPECIFIC SANDBOX GUIDANCE
# ============================================================

## 12.1 VN / DATING
Preview may simulate:
- route choice
- affection changes
- ending qualification
- dialogue variants

Preview may not finalize:
- production relationship truth
- production Persona-affecting truth

## 12.2 RPG
Preview may simulate:
- quest completion path
- battle outcome path
- inventory/reward candidate flow
- save candidate generation

Preview may not finalize:
- accepted reward truth
- production progression truth without adjudicated path

## 12.3 PUZZLE
Preview may simulate:
- score generation
- clear/fail path
- retry path
- ranking candidate flow

Preview may not finalize:
- ranking truth
- reward final truth

## 12.4 STRATEGY
Preview may simulate:
- turn cycle
- unit actions
- resource/building changes
- victory/defeat path

Preview may not finalize:
- accepted strategic continuity truth
- ranking/completion final truth


# ============================================================
# 13. PREVIEW SESSION SAFETY RULE
# ============================================================

Every preview session must define:

- preview_session_id
- runtime_family
- project_code
- preview_mode
- mock_mode_flags
- discard_rule
- session_expiry_rule

A preview session must always be terminable
without production cleanup requirements.

Preview session expiry must not leave
production truth in partial state.


# ============================================================
# 14. VALIDATION REQUIREMENT
# ============================================================

Preview sandbox legality must be validated at:

- editing validation
- export validation
- publish validation

Validation must confirm:
- production mutation endpoints are not bound
- preview outputs are properly classified
- mock dependencies are explicit
- Persona boundary is respected
- commerce/entitlement boundary is respected
- sync acceptance is not bypassed

Illegal preview behavior must be blocking.


# ============================================================
# 15. EXPORT RELATION
# ============================================================

An export package must declare preview compatibility.

Export metadata must define:
- whether preview is supported
- which preview modes are allowed
- which mock modes are required
- which output classes are preview-only

A package must not be exportable if:
- preview sandbox definition is missing when required
- preview path can mutate production truth
- mock boundaries are unresolved


# ============================================================
# 16. FINAL POLICY RULE
# ============================================================

Preview sandbox is a mandatory GameOS safety boundary.

Core summary:

- preview is executable simulation
- preview is non-authoritative
- preview state is isolated
- preview may produce preview-only candidates
- preview may not finalize ranking, achievement, commerce,
  entitlement, sync acceptance, or Persona truth
- mock mode must be explicit
- illegal production binding is prohibited




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/265.builder-layer/0802650_GAME_BUILDER_LOCK_TIMEOUT_POLICY.md
============================================================

# ============================================================
# GAME BUILDER LOCK TIMEOUT POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official lock timeout policy of Game Builder.

This policy defines:
- project lock behavior
- block lock behavior
- timeout expectations
- stale lock handling
- lock renewal expectations


# ============================================================
# 1. LOCK POLICY PRINCIPLE
# ============================================================

Locks exist to reduce unsafe overwrite risk.

Locks must be:
- explicit
- visible
- time-bounded where appropriate
- recoverable when stale


# ============================================================
# 2. PREFERRED LOCK GRANULARITY
# ============================================================

Preferred:
- block lock first

Optional:
- project lock when broad mutation scope is required

Block lock should be used whenever possible
to reduce unnecessary edit denial.


# ============================================================
# 3. TIMEOUT BASELINE
# ============================================================

Recommended baseline:
- block lock soft expiry around 10 to 20 minutes of inactivity
- project lock soft expiry around 15 to 30 minutes of inactivity

Actual values may be implementation-tuned,
but must remain explicit and configurable.


# ============================================================
# 4. LOCK RENEWAL
# ============================================================

A lock may renew while:
- the holder remains active
- edit activity continues
- session remains healthy

Renewal must not be invisible to conflict handling logic.


# ============================================================
# 5. STALE LOCK HANDLING
# ============================================================

When a lock is stale:
- it should become reclaimable according to policy
- reclaim or override should be explicit
- silent hidden override is discouraged

Higher-authority override, if allowed,
must remain visible and auditable.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

Builder lock handling must remain explicit and time-bounded.

Core summary:

- prefer block locks
- use project lock sparingly
- inactivity timeouts must exist
- stale lock recovery must be explicit




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/265.builder-layer/0802651_GAME_BUILDER_AUTOSAVE_POLICY.md
============================================================

# ============================================================
# GAME BUILDER AUTOSAVE POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official autosave policy of Game Builder.

This policy defines:
- autosave cadence
- autosave triggers
- autosave retention expectations
- autosave visibility rules
- autosave recovery expectations


# ============================================================
# 1. AUTOSAVE PRINCIPLE
# ============================================================

Autosave is for recovery, not formal release preparation.

Autosave must remain separate from official save.


# ============================================================
# 2. AUTOSAVE CADENCE
# ============================================================

Recommended baseline:
- autosave after 3 to 5 seconds of edit inactivity
- autosave on meaningful structural changes
- autosave on editor context switches where helpful

Autosave cadence must balance:
- recovery value
- backend load
- creator clarity


# ============================================================
# 3. AUTOSAVE TRIGGERS
# ============================================================

Good autosave trigger examples:
- block content edited
- block reordered
- asset binding changed
- asset edit committed
- template-derived structure materially changed

Autosave should not fire for every trivial hover/select event.


# ============================================================
# 4. AUTOSAVE RETENTION
# ============================================================

Autosave retention should be bounded.

Recommended policy:
- keep recent autosaves for recovery
- allow supersession of older autosaves
- aggressively clean obsolete autosaves after clear supersession

Retention must not be confused with immutable revision history.


# ============================================================
# 5. AUTOSAVE VISIBILITY
# ============================================================

The user must be able to tell:
- whether autosave exists
- whether autosave is newer than latest official save
- that autosave is not official save

This visibility is mandatory.


# ============================================================
# 6. FINAL POLICY RULE
# ============================================================

Builder autosave must be recovery-oriented and explicit.

Core summary:

- autosave should be frequent enough for safety
- autosave triggers should be meaningful
- retention should be bounded
- autosave must never masquerade as official save




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/265.builder-webapp/0802650_GAME_BUILDER_WEBAPP_POLICY.md
============================================================

# ============================================================
# GAME BUILDER WEBAPP POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game Builder Web App lifecycle.

policy_rules:
- workspace, project, runtime, template, export, validation, and publish pipeline basis must remain explicit
- publish submission without accepted export and passed validation is prohibited
- builder projects must remain bound to approved runtime families
- collaboration and autosave lineage must remain explicit
- builder-webapp truth must remain canonical

evaluation_order:
1 workspace validity
2 project validity
3 runtime validity
4 template validity
5 export validity
6 validation validity
7 publish pipeline validity
8 collaboration validity
9 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/266.builder-template-asset-system/0802660_GAME_TEMPLATE_ASSET_POLICY.md
============================================================

# ============================================================
# GAME TEMPLATE ASSET POLICY
# ============================================================

status: canonical
layer: 080.policy
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for Game Builder template and asset system lifecycle.

policy_rules:
- template family must bind to exactly one approved runtime family
- template projects must start from template selection, not blank engine construction
- beginner, standard, and advanced tiers must remain explicit
- protected, editable, and advanced override zones must remain explicit
- required asset families must be resolved before export
- pixel art, unit art, and building art are Builder/GameOS material assets
- Persona truth must not be mixed into non-Persona asset layers
- builder validation must block export when required asset families are unresolved
- template-asset truth must remain canonical

evaluation_order:
1 template family validity
2 template profile validity
3 runtime family validity
4 required asset set validity
5 asset profile validity
6 non-Persona boundary validity
7 asset binding validity
8 execution eligibility




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/210.game-core/0902100_GAME_CORE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME CORE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game core lifecycle handling.

required_fields:
- player_code or session_ref or slot_code or roster_code
- world_code where applicable
- source_state_version where applicable
- timing basis where applicable
- correlation_id

success_condition:
- game core request classified and routed safely

failure_condition:
- invalid target
- missing player, world, timing, or source basis
- incompatible game-core handling




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/220.progression-reward/0902200_GAME_PROGRESSION_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME PROGRESSION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for progression and reward lifecycle handling.

required_fields:
- quest_code or progress_ref or grant_ref or result_ref
- player_code
- reward basis where applicable
- source_state_version where applicable
- correlation_id

compatibility_rule:
Game progression interfaces must remain player-aware and reward-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/230.battle-security-economy/0902300_GAME_BATTLE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME BATTLE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for battle and result lifecycle handling.

required_fields:
- session_ref or result_ref
- player_code
- source_state_version where applicable
- result summary where applicable
- correlation_id

success_condition:
- battle request classified and routed safely

failure_condition:
- invalid target
- missing player, session, or result basis
- incompatible battle handling




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/230.battle-security-economy/0902301_GAME_SECURITY_MODERATION_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME SECURITY MODERATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for anti-cheat, moderation, and replay lifecycle handling.

required_fields:
- incident_ref or action_ref or replay_ref
- player_code where applicable
- authority_basis
- evidence_hash where applicable
- correlation_id

compatibility_rule:
Game security-moderation interfaces must remain authority-aware and evidence-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/230.battle-security-economy/0902302_GAME_PERSONA_ECONOMY_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME PERSONA ECONOMY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for persona binding, projection, entitlement, and economy lifecycle handling.

required_fields:
- binding_code or projection_ref or entitlement_code or settlement_ref
- player_code
- persona_id or package_code where applicable
- purchase basis where applicable
- correlation_id

compatibility_rule:
Game persona-economy interfaces must remain player-aware and contract-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/240.cross-cutting-completion/0902400_GAME_LIFECYCLE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME LIFECYCLE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for shared lifecycle governance in GameOS.

required_fields:
- profile_code
- target_ref
- current_state
- requested_state
- correlation_id

success_condition:
- lifecycle request classified and routed safely

failure_condition:
- invalid target
- missing transition or authority basis
- incompatible lifecycle handling




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/240.cross-cutting-completion/0902401_GAME_RETRY_DEAD_LETTER_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME RETRY DEAD LETTER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for shared retry and dead-letter governance in GameOS.

required_fields:
- profile_code
- failure_ref
- retry_summary or dead_letter_summary
- terminal_cutoff_summary
- correlation_id

compatibility_rule:
Game retry-dead-letter interfaces must expose explicit recoverability semantics.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/240.cross-cutting-completion/0902402_GAME_GOVERNANCE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME GOVERNANCE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for approval, ownership boundary,
compatibility, and audit governance in GameOS.

required_fields:
- trail_ref or boundary_ref or bundle_ref
- authority_basis where applicable
- source_version_code where applicable
- correlation_id

compatibility_rule:
Game governance interfaces must remain authority-aware and compatibility-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/250.distribution-platform/0902500_GAME_DISTRIBUTION_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME DISTRIBUTION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game distribution lifecycle handling.

required_fields:
- title_code or listing_code or release_code or build_code or package_code or manifest_code
- developer_scope where applicable
- compatibility_profile_code where applicable
- source_state_version where applicable
- correlation_id

success_condition:
- game distribution request classified and routed safely

failure_condition:
- invalid target
- missing developer, package, or compatibility basis
- incompatible distribution handling




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/250.distribution-platform/0902501_GAME_DEVICE_DELIVERY_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME DEVICE DELIVERY INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for device registration and delivery lifecycle handling.

required_fields:
- device_code or grant_code or license_code
- package_code where applicable
- entitlement basis where applicable
- attestation_summary where applicable
- correlation_id

compatibility_rule:
Game device-delivery interfaces must remain device-aware and entitlement-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/260.marketplace-linkage/0902600_GAME_MARKETPLACE_LINKAGE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME MARKETPLACE LINKAGE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS marketplace linkage lifecycle handling.

required_fields:
- game_title_code
- marketplace_product_code
- seller_code
- entitlement_code where applicable
- correlation_id

compatibility_rule:
Game marketplace linkage interfaces must remain title-aware and commerce-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/261.title-transfer/0902610_GAME_TITLE_TRANSFER_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME TITLE TRANSFER INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for game title transfer lifecycle handling.

required_fields:
- request_ref or transfer_ref
- game_title_code
- source_seller_code
- target_seller_code
- marketplace_product_code where applicable
- correlation_id

compatibility_rule:
Game title transfer interfaces must remain title-aware and transfer-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/262.developer-platform/0902620_GAME_DEVELOPER_PLATFORM_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME DEVELOPER PLATFORM INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS developer-platform lifecycle handling.

required_fields:
- developer_code or workspace_code or profile_code or release_code or activation_ref
- seller_code
- validation_ref where applicable
- moderation_ref where applicable
- correlation_id

compatibility_rule:
Game developer-platform interfaces must remain workspace-aware and validation-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/263.sync-platform/0902630_GAME_SYNC_INTAKE_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME SYNC INTAKE INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS sync intake lifecycle handling.

required_fields:
- envelope_ref or submit_ref or upload_ref or snapshot_ref or attestation_ref
- game_title_code
- player_code or device_code where applicable
- source_state_version where applicable
- correlation_id

compatibility_rule:
Game sync intake interfaces must remain title-aware and device-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/263.sync-platform/0902631_GAME_SYNC_ADJUDICATION_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME SYNC ADJUDICATION INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS sync adjudication lifecycle handling.

required_fields:
- snapshot_ref or conflict_ref
- accepted_envelope_ref where applicable
- game_title_code
- player_code
- correlation_id

compatibility_rule:
Game sync adjudication interfaces must remain lineage-aware and continuity-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/264.genre-runtime/0902640_GAME_GENRE_RUNTIME_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME GENRE RUNTIME INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for GameOS genre-runtime lifecycle handling.

required_fields:
- profile_code or package_code
- runtime_profile_code where applicable
- ruleset basis where applicable
- compatibility basis where applicable
- correlation_id

compatibility_rule:
Game genre-runtime interfaces must remain runtime-aware and package-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/264.runtime-layer/0902640_GAME_RUNTIME_EXPORT_CONTRACT_INTERFACE.md
============================================================

# ============================================================
# GAME RUNTIME EXPORT CONTRACT INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official export contract interface of GameOS Runtime Layer.

This interface applies to all approved runtime families:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime

It defines what Runtime Layer must provide to:

- Builder
- export pipeline
- validation pipeline
- publish pipeline
- sync pipeline
- preview pipeline

The export contract is mandatory.
No publishable package may exist without a resolved runtime export contract.


# ============================================================
# 1. ROLE OF EXPORT CONTRACT
# ============================================================

The export contract is the formal handoff
from Builder-authored project state
to GameOS export and publish infrastructure.

It guarantees that a project is no longer ambiguous.

The export contract must freeze:

- runtime family
- runtime profile
- ruleset profile
- template profile
- compatibility profile
- required asset family set
- preview compatibility declaration
- sync candidate declaration
- export package lineage basis

Core principle:

one export package
-> one resolved runtime contract
-> one publishable execution definition


# ============================================================
# 2. REQUIRED CONTRACT IDENTITY
# ============================================================

Every runtime export contract must define:

- contract_ref
- contract_version
- project_code
- export_package_code
- game_title_code
- release_code where applicable
- runtime_family_code
- runtime_profile_code
- ruleset_profile_code
- template_profile_code where applicable
- compatibility_profile_code
- export_hash
- frozen_revision_ref
- generated_at

All of the above are required_fields.


# ============================================================
# 3. RUNTIME FAMILY RESOLUTION
# ============================================================

The contract must resolve exactly one runtime family.

Allowed:
- one contract -> one runtime family

Prohibited:
- one contract -> multiple active runtime families
- runtime family omitted
- runtime family inferred only indirectly

required_fields:
- runtime_family_code
- runtime_profile_code

compatibility_rule:
runtime_family_code and runtime_profile_code
must belong to the same approved runtime family.


# ============================================================
# 4. RULESET RESOLUTION
# ============================================================

The contract must resolve exactly one ruleset profile.

required_fields:
- ruleset_profile_code
- ruleset_version where applicable
- evaluation_order_summary
- allowed_mutation_summary
- candidate_generation_summary

compatibility_rule:
ruleset_profile_code must be approved
for runtime_family_code.

No export contract may remain ruleset-ambiguous.


# ============================================================
# 5. TEMPLATE RESOLUTION
# ============================================================

If the project is Builder-template-based,
the contract must resolve exactly one template profile.

required_fields:
- template_profile_code where applicable
- template_family_code where applicable
- template_tier where applicable
- required_block_summary
- protected_zone_summary
- override_zone_summary

compatibility_rule:
template_profile_code must be compatible with:
- runtime_family_code
- ruleset_profile_code

A template-based project with unresolved template binding
must not be exportable.


# ============================================================
# 6. REQUIRED ASSET FAMILY DECLARATION
# ============================================================

The contract must declare all required asset families.

required_fields:
- required_asset_family_summary
- resolved_asset_family_summary
- unresolved_asset_family_summary
- asset_manifest_ref
- asset_hash_summary

Examples of asset families:
- vn_presentation_assets
- enemy_pixel_assets
- unit_art_assets
- building_art_assets
- map_package_assets
- puzzle_stage_assets
- ui_template_assets

compatibility_rule:
all required asset families for the resolved runtime/template pair
must be resolved before export.

Unresolved required assets are blocking.


# ============================================================
# 7. EXPORT METADATA DECLARATION
# ============================================================

The contract must define export-facing metadata.

required_fields:
- export_hash
- export_format
- export_size_summary
- package_lineage_summary
- asset_manifest_ref
- metadata_version
- runtime_contract_hash

Export metadata must be stable enough
for validation, publish, and transfer tracking.


# ============================================================
# 8. PREVIEW COMPATIBILITY DECLARATION
# ============================================================

The contract must define preview compatibility.

required_fields:
- preview_supported
- preview_mode_summary
- mock_mode_summary
- preview_discard_rule
- preview_restricted_domain_summary

Examples:
- scene_preview
- battle_preview
- stage_preview
- map_preview
- full_flow_preview

compatibility_rule:
preview settings must comply with
Game Runtime Preview Sandbox Policy.

A contract with illegal preview binding
must not be exportable.


# ============================================================
# 9. SYNC CANDIDATE DECLARATION
# ============================================================

The contract must define which outputs may become sync candidates.

required_fields:
- save_candidate_supported
- achievement_candidate_supported
- ranking_candidate_supported
- replay_candidate_supported
- telemetry_candidate_supported
- completion_candidate_summary

compatibility_rule:
candidate declarations must comply with:
- runtime family
- ruleset profile
- sync adjudication policy

No contract may claim client-side final truth.


# ============================================================
# 10. SAVEABILITY DECLARATION
# ============================================================

The contract must define state boundary categories.

required_fields:
- saveable_state_summary
- derived_state_summary
- transient_state_summary
- prohibited_authority_state_summary

compatibility_rule:
saveability declaration must comply with:
- runtime family
- ruleset mutation policy
- sync candidate policy

A contract with ambiguous state boundary is invalid.


# ============================================================
# 11. PERSONA BOUNDARY DECLARATION
# ============================================================

The contract must declare Persona usage boundaries.

required_fields:
- persona_projection_usage_summary
- prohibited_persona_overlap_summary
- cast_projection_ref_summary where applicable

compatibility_rule:
export contract may reference approved Persona projections only.

The contract must not imply:
- Persona truth overwrite
- unrestricted trust access
- unrestricted memory access
- unrestricted growth mutation


# ============================================================
# 12. COMMERCE / ENTITLEMENT BOUNDARY DECLARATION
# ============================================================

The contract must declare platform boundary compliance.

required_fields:
- entitlement_dependency_summary
- commerce_dependency_summary
- prohibited_finality_summary

compatibility_rule:
the contract may declare dependency on entitlement presence,
but may not finalize entitlement issuance or commerce truth.

This boundary is mandatory.


# ============================================================
# 13. BUILDER HANDOFF REQUIREMENT
# ============================================================

Builder must hand off enough information
to construct the export contract.

Builder-side handoff must provide:

required_fields:
- project_code
- frozen_revision_ref
- runtime_profile_code
- ruleset_profile_code
- template_profile_code where applicable
- asset_manifest_ref
- validation_result_ref
- export_request_ref

Builder must not fabricate export contract contents
outside approved runtime semantics.


# ============================================================
# 14. VALIDATION HANDOFF REQUIREMENT
# ============================================================

The contract must be consumable by validation pipeline.

required_fields:
- editing_validation_ref where applicable
- export_validation_ref
- publish_validation_ref where applicable
- blocking_count
- warning_count
- validation_timestamp

A contract with unresolved blocking findings
must not advance to publish submission.


# ============================================================
# 15. PUBLISH HANDOFF REQUIREMENT
# ============================================================

The contract must be consumable by publish pipeline.

required_fields:
- seller_code
- marketplace_product_code where applicable
- game_title_code
- release_code
- runtime_contract_hash
- moderation_relevant_summary
- rollout_relevant_summary

compatibility_rule:
publish pipeline must be able to determine:
- what this package is
- how it runs
- what it depends on
- what it may emit
- what boundaries it must respect


# ============================================================
# 16. TRANSFER / CONTINUITY REQUIREMENT
# ============================================================

The contract must be continuity-safe for future transfer scenarios.

required_fields:
- game_title_code
- release_code
- export_hash
- runtime_contract_hash
- entitlement_continuity_summary
- publisher_reassignment_compatibility_summary

compatibility_rule:
runtime export contract must not break
approved title transfer and entitlement continuity assumptions.


# ============================================================
# 17. INTERFACE OUTPUT SHAPE
# ============================================================

A valid runtime export contract must be representable
as a machine-readable and human-readable object.

Minimum sections:

- identity
- runtime_resolution
- ruleset_resolution
- template_resolution
- asset_resolution
- preview_compatibility
- sync_candidate_declaration
- state_boundary_declaration
- persona_boundary_declaration
- commerce_boundary_declaration
- validation_handoff
- publish_handoff
- continuity_handoff

Each section is mandatory unless explicitly marked not_applicable.


# ============================================================
# 18. BLOCKING CONDITIONS
# ============================================================

The following must be blocking:

- runtime family unresolved
- runtime profile unresolved
- ruleset unresolved
- required asset family unresolved
- illegal preview binding
- ambiguous saveability boundary
- prohibited Persona overlap
- client-side finality claim
- incompatible compatibility profile
- invalid validation handoff
- invalid publish handoff

Any of these makes the export contract invalid.


# ============================================================
# 19. FINAL INTERFACE RULE
# ============================================================

GameOS Runtime Layer must always export
through a resolved runtime export contract.

Core summary:

- one export package must resolve to one runtime contract
- runtime, ruleset, template, and asset families must be explicit
- preview and sync boundaries must be explicit
- Persona and commerce boundaries must be explicit
- invalid or ambiguous export contracts are prohibited




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902650_GAME_BUILDER_API_INTERFACE.md
============================================================

# ============================================================
# GAME BUILDER API INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official API interface of Game Builder.

This interface defines the mandatory service boundaries
between Builder frontend and Builder-supporting backend services.

The API interface must support:

- project lifecycle
- template-first creation
- block-based editing
- asset authoring and binding
- preview launching
- validation execution
- export creation
- submission creation
- autosave and revision history
- collaboration-aware access

This document defines interface groups and required fields,
not transport-specific implementation details.


# ============================================================
# 1. GLOBAL API PRINCIPLES
# ============================================================

All Builder APIs must be:

- project-aware
- workspace-aware
- runtime-aware where applicable
- revision-aware where applicable
- role-aware
- validation-aware where applicable

All APIs must preserve the distinction between:

- working state
- autosave snapshot
- official saved revision
- export package
- submission request

No API may collapse these concepts implicitly.


# ============================================================
# 2. PROJECT API GROUP
# ============================================================

purpose:
Manage Builder projects as the primary authoring unit.

Required operations:

- create_project
- list_projects
- get_project
- update_project_metadata
- archive_project
- duplicate_project where allowed

required_fields:
- workspace_code
- project_code where applicable
- game_title_code where applicable
- runtime_family_code where applicable
- template_profile_code where applicable
- caller_role context
- correlation_id

compatibility_rule:
A project must not be created without resolved workspace linkage.

A template-first creation path should be preferred
over raw empty project creation in official Builder flows.


# ============================================================
# 3. TEMPLATE API GROUP
# ============================================================

purpose:
Support template-first Builder creation.

Required operations:

- list_template_families
- list_template_profiles
- get_template_profile
- preview_template
- create_project_from_template

required_fields:
- template_family_code where applicable
- template_profile_code where applicable
- runtime_family_code where applicable
- workspace_code for project creation
- project_name where applicable
- correlation_id

compatibility_rule:
A template profile returned for creation
must already be compatible with one approved runtime family.


# ============================================================
# 4. BLOCK EDITOR API GROUP
# ============================================================

purpose:
Support structured block-based content editing.

Required operations:

- list_project_blocks
- get_block
- create_block
- update_block
- reorder_block
- clone_block
- delete_block where allowed
- list_block_validation_state

required_fields:
- project_code
- block_id where applicable
- block_type where applicable
- parent_block_id where applicable
- order_index where applicable
- content_payload where applicable
- correlation_id

compatibility_rule:
Block operations must be validated against:
- runtime family
- template structure rules
- protected/editable/advanced override zones

A block API must not permit mutation of protected zones
through ordinary editing paths.


# ============================================================
# 5. PROJECT SAVE / REVISION API GROUP
# ============================================================

purpose:
Manage official saved revisions.

Required operations:

- save_project_revision
- list_project_revisions
- get_project_revision
- restore_revision_to_working_state

required_fields:
- project_code
- revision_ref where applicable
- save_summary where applicable
- caller_identity
- correlation_id

compatibility_rule:
save_project_revision must create a new immutable revision.

restore_revision_to_working_state must not silently overwrite
revision history.


# ============================================================
# 6. AUTOSAVE API GROUP
# ============================================================

purpose:
Support crash recovery and recovery-oriented persistence.

Required operations:

- write_autosave_snapshot
- get_latest_autosave_snapshot
- list_autosave_snapshots
- restore_autosave_to_working_state
- discard_autosave_snapshot where allowed

required_fields:
- project_code
- snapshot_ref where applicable
- snapshot_payload or equivalent where applicable
- snapshot_hash where applicable
- correlation_id

compatibility_rule:
Autosave snapshots are recovery objects only.

Autosave APIs must not create official saved revisions implicitly.


# ============================================================
# 7. ASSET API GROUP
# ============================================================

purpose:
Support Builder-owned material asset management.

Required operations:

- list_project_assets
- upload_asset
- get_asset
- update_asset_metadata
- create_derived_asset
- bind_asset_to_project
- unbind_asset_from_project where allowed

Specialized asset operations:

- save_pixel_asset
- save_unit_art_asset
- save_building_art_asset
- generate_asset_variant
- list_asset_variants

required_fields:
- project_code
- asset_ref where applicable
- asset_type
- usage_scope
- asset_metadata
- binding_target_ref where applicable
- correlation_id

compatibility_rule:
Asset APIs must enforce:
- runtime compatibility
- template asset requirements
- non-Persona material boundary rules


# ============================================================
# 8. PREVIEW API GROUP
# ============================================================

purpose:
Support sandbox runtime-backed preview.

Required operations:

- create_preview_session
- get_preview_session
- execute_preview_action
- get_preview_state
- close_preview_session

required_fields:
- project_code
- preview_session_id where applicable
- preview_mode
- preview_basis (working_state or revision_ref)
- mock_mode_summary where applicable
- correlation_id

compatibility_rule:
Preview APIs must comply with preview sandbox policy.

No preview API may bind directly to production-final truth mutation.


# ============================================================
# 9. VALIDATION API GROUP
# ============================================================

purpose:
Support Builder-triggered validation across stages.

Required operations:

- run_editing_validation
- run_export_validation
- run_publish_validation
- get_validation_result
- list_validation_results_for_project

required_fields:
- project_code
- revision_ref where applicable
- validation_stage
- validation_scope where applicable
- correlation_id

compatibility_rule:
Validation APIs must return machine-readable findings
with severity and affected scope.

Blocking findings must be identifiable by frontend
without reinterpretation.


# ============================================================
# 10. EXPORT API GROUP
# ============================================================

purpose:
Support explicit creation of export package candidates.

Required operations:

- create_export_package
- get_export_package
- list_export_packages_for_project
- get_runtime_export_contract
- inspect_export_readiness

required_fields:
- project_code
- revision_ref
- export_request_ref where applicable
- export_package_code where applicable
- runtime_family_code
- ruleset_profile_code
- asset_manifest_ref
- correlation_id

compatibility_rule:
Export APIs must refuse export
when revision is not an official saved revision
or when blocking validation findings remain.


# ============================================================
# 11. SUBMISSION API GROUP
# ============================================================

purpose:
Support Builder-side handoff into review/publish lifecycle.

Required operations:

- create_submission_request
- get_submission_request
- list_submission_requests_for_project
- inspect_submission_readiness

required_fields:
- project_code
- export_package_code
- game_title_code
- release_code
- seller_code where required through workspace linkage
- correlation_id

compatibility_rule:
Submission APIs must not allow direct submission
from working state or autosave-only state.


# ============================================================
# 12. COLLABORATION API GROUP
# ============================================================

purpose:
Support role-aware collaboration.

Required operations:

- list_project_collaborators
- add_project_collaborator where allowed
- update_project_collaborator_role where allowed
- remove_project_collaborator where allowed
- create_project_comment
- list_project_comments
- resolve_project_comment where allowed

Lock-aware operations:

- acquire_project_lock
- release_project_lock
- acquire_block_lock
- release_block_lock

required_fields:
- project_code
- collaborator_identity where applicable
- role_code where applicable
- block_id where applicable
- comment_ref where applicable
- correlation_id

compatibility_rule:
Collaboration APIs must not imply hidden permission escalation.


# ============================================================
# 13. PROJECT STATE INSPECTION API GROUP
# ============================================================

purpose:
Provide unified read surfaces for Builder status visibility.

Required operations:

- get_project_status_summary
- get_save_state_summary
- get_validation_state_summary
- get_export_state_summary
- get_submission_state_summary

required_fields:
- project_code
- correlation_id

A Builder frontend must be able to derive from these responses:
- dirty state
- autosave availability
- latest official revision
- validation state
- export readiness
- submission existence


# ============================================================
# 14. REQUIRED RESPONSE SHAPE PRINCIPLE
# ============================================================

All Builder APIs should expose response objects
that are both machine-readable and UI-friendly.

Recommended response sections where relevant:

- identity
- status
- summary
- linkage
- validation
- timestamps
- permissions
- next_allowed_actions

Frontend should not need to reconstruct core Builder truths
from ambiguous partial responses.


# ============================================================
# 15. ERROR / BLOCKING RESPONSE RULE
# ============================================================

Builder APIs must distinguish:

- invalid_request
- permission_denied
- validation_blocked
- state_conflict
- dependency_unresolved
- policy_blocked
- not_found

Validation-blocked responses should expose:
- blocking_count
- affected_scope_summary
- validation_result_ref where applicable

The frontend must be able to tell
whether user action failed due to:
- missing linkage
- missing save
- missing validation
- policy prohibition
- permission issue


# ============================================================
# 16. ROLE-AWARE ACCESS RULE
# ============================================================

API access must respect Builder roles.

owner:
- full Builder access

editor:
- project editing access
- asset editing access
- preview access
- validation trigger access
- limited export rights depending on policy

reviewer:
- read access
- validation visibility
- comment access
- no unrestricted mutation by default

publisher:
- export/submission access
- approval-facing visibility
- no unrestricted authoring mutation by default

APIs must not use screen visibility
as a substitute for permission control.


# ============================================================
# 17. FINAL INTERFACE RULE
# ============================================================

Game Builder must expose explicit API groups
for every primary Builder domain.

Core summary:

- project APIs manage authoring units
- template APIs enable template-first creation
- block APIs handle structured editing
- revision/autosave APIs preserve save layers
- asset APIs manage Builder-owned material assets
- preview APIs launch sandbox sessions
- validation APIs expose formal diagnostics
- export APIs create package candidates
- submission APIs create publish handoff
- collaboration APIs manage role-aware teamwork




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902651_GAME_BUILDER_PROJECT_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER PROJECT API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Project API of Game Builder.

This interface specifies the project-facing API contract
used by Builder frontend and Builder-supporting services.

It covers:
- project creation
- project listing
- project retrieval
- project metadata update
- project duplication
- project archival
- project status inspection

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF PROJECT API
# ============================================================

The Project API manages the primary Builder authoring unit.

A project is the Builder-side authoritative authoring object.

Project API must support:

- template-first creation
- workspace-aware retrieval
- status-aware listing
- runtime-aware metadata
- export/submission visibility support

Project API must not:
- create export packages
- create submissions
- mutate runtime truth directly
- bypass workspace/title linkage rules


# ============================================================
# 2. PROJECT OBJECT MINIMUM SHAPE
# ============================================================

A project object must expose at minimum:

- project_code
- workspace_code
- game_title_code where applicable
- project_name
- project_status
- runtime_family_code
- runtime_profile_code where applicable
- ruleset_profile_code where applicable
- template_profile_code where applicable
- template_family_code where applicable
- template_tier where applicable
- latest_revision_ref where applicable
- latest_autosave_ref where applicable
- validation_state_summary
- export_state_summary
- submission_state_summary
- created_at
- updated_at


# ============================================================
# 3. CREATE PROJECT
# ============================================================

operation_name:
create_project

purpose:
Create a new Builder project.

Supported creation paths:
- create from template
- create from duplicate seed where allowed
- controlled minimal creation path if explicitly supported

required_request_fields:
- workspace_code
- project_name
- runtime_family_code where applicable
- template_profile_code where applicable
- game_title_code where applicable
- correlation_id

optional_request_fields:
- template_family_code
- template_tier
- project_summary
- duplicate_source_project_code where applicable

required_response_fields:
- project_code
- workspace_code
- project_status
- runtime_family_code
- template_profile_code where applicable
- created_at
- updated_at

behavior_rules:
- workspace_code must resolve before creation
- template_profile_code should be the primary creation path
- project_name must be explicit
- project must not remain runtime-ambiguous after creation
- creation must initialize project metadata sufficient for Builder navigation

blocking_conditions:
- workspace unresolved
- template unresolved where required
- incompatible runtime/template pair
- permission denied
- invalid creation path


# ============================================================
# 4. LIST PROJECTS
# ============================================================

operation_name:
list_projects

purpose:
Return Builder projects visible in the current workspace context.

required_request_fields:
- workspace_code
- correlation_id

optional_request_fields:
- project_status
- runtime_family_code
- template_family_code
- updated_after
- sort_key
- page_ref where pagination is used

required_response_fields:
- project_list
- total_count or page_summary
- workspace_code

Each project_list item must expose at minimum:
- project_code
- project_name
- project_status
- runtime_family_code
- template_family_code where applicable
- latest_revision_ref where applicable
- validation_state_summary
- export_state_summary
- submission_state_summary
- updated_at

behavior_rules:
- listing must be workspace-scoped
- listing must be role-aware
- listing should support status filtering
- listing should support runtime/template filtering


# ============================================================
# 5. GET PROJECT
# ============================================================

operation_name:
get_project

purpose:
Return the detailed project object for one project.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project object with minimum shape
- linkage summary
- status summary
- save summary
- validation summary
- export summary
- submission summary

behavior_rules:
- get_project must be project-scoped
- response must be enough to populate Project Overview
- response must not require frontend reconstruction of critical status truths


# ============================================================
# 6. UPDATE PROJECT METADATA
# ============================================================

operation_name:
update_project_metadata

purpose:
Update project-level metadata that is not block-level content.

Examples:
- project_name
- project_summary
- selected title linkage where allowed
- selected release-facing metadata preparation fields where allowed

required_request_fields:
- project_code
- correlation_id

optional_mutable_fields:
- project_name
- project_summary
- game_title_code where policy allows
- editor_display_preferences where supported
- project_tags where supported

required_response_fields:
- project_code
- updated_at
- updated project metadata summary

behavior_rules:
- metadata update must not silently mutate runtime structure
- metadata update must remain role-aware
- immutable identity fields must not be overwritten through metadata update
- project status transitions must not be implicit side effects unless explicitly defined


# ============================================================
# 7. DUPLICATE PROJECT
# ============================================================

operation_name:
duplicate_project

purpose:
Create a new project derived from an existing source project.

required_request_fields:
- source_project_code
- workspace_code
- new_project_name
- correlation_id

optional_request_fields:
- duplicate_assets_flag
- duplicate_template_binding_flag
- duplicate_runtime_binding_flag

required_response_fields:
- new_project_code
- source_project_code
- created_at

behavior_rules:
- duplication must create a new project identity
- duplication must not reuse the same project_code
- duplicated project must receive its own save lineage
- duplicated project must not silently inherit forbidden external lifecycle state
- export/submission state from source must not be treated as carried-over finality

blocking_conditions:
- source project inaccessible
- permission denied
- policy-blocked duplication path


# ============================================================
# 8. ARCHIVE PROJECT
# ============================================================

operation_name:
archive_project

purpose:
Move a project into archived lifecycle state.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- project_status
- archived_at or updated_at

behavior_rules:
- archive is preferred to destructive delete for project lifecycle
- archived project should remain discoverable where policy allows
- archive must not destroy revision lineage implicitly
- archive must not destroy export/submission history implicitly

blocking_conditions:
- permission denied
- policy prohibits archive due to unresolved lifecycle condition where applicable


# ============================================================
# 9. GET PROJECT STATUS SUMMARY
# ============================================================

operation_name:
get_project_status_summary

purpose:
Return a UI-friendly lifecycle summary for one project.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- dirty_state
- latest_revision_ref
- latest_autosave_ref
- validation_state_summary
- export_state_summary
- submission_state_summary
- last_updated_at

behavior_rules:
- response must be enough to support Builder Home / Project Overview
- response must not require deep additional calls for basic status visibility


# ============================================================
# 10. ROLE-AWARE ACCESS RULE
# ============================================================

Project API access must be role-aware.

owner:
- full project creation/read/update/archive/duplicate authority

editor:
- project read/update authority according to policy
- may create project where workspace policy allows

reviewer:
- project read visibility where granted
- no unrestricted mutation by default

publisher:
- project read visibility
- limited metadata visibility/update only where policy allows

Role-aware checks must be enforced by API,
not only by frontend visibility.


# ============================================================
# 11. ERROR MODEL
# ============================================================

Project API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict

Where helpful, responses should expose:
- blocking_reason_summary
- missing_dependency_summary
- next_allowed_actions summary


# ============================================================
# 12. FINAL INTERFACE RULE
# ============================================================

The Project API is the entry and identity surface
for Builder authoring.

Core summary:

- project is the primary authoring unit
- template-first creation is preferred
- listing and retrieval must be workspace-aware
- metadata updates must be bounded
- duplication must create new lineage
- archive should preserve history
- project status summary must remain easy to consume




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902652_GAME_BUILDER_BLOCK_EDITOR_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER BLOCK EDITOR API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Block Editor API of Game Builder.

This interface specifies the block-facing API contract
used by Main Editor and Builder-supporting services.

It covers:
- block listing
- block retrieval
- block creation
- block update
- block reorder
- block clone
- block archive/remove
- block-level validation visibility
- zone-aware editing
- role and lock-aware behavior

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF BLOCK EDITOR API
# ============================================================

The Block Editor API manages structured authoring units
inside a Builder project.

A block is the minimum structured editing unit
for Builder-side content authoring.

The Block Editor API must support:
- runtime-aware block editing
- template-aware block editing
- structure-aware block hierarchy
- validation-friendly mutation
- lock-aware mutation
- zone-aware mutation

The Block Editor API must not:
- allow arbitrary schema mutation
- bypass runtime family legality
- bypass template structure rules
- bypass protected-zone restrictions


# ============================================================
# 2. BLOCK OBJECT MINIMUM SHAPE
# ============================================================

A block object must expose at minimum:

- block_id
- project_code
- block_type
- block_title
- parent_block_id where applicable
- order_index
- zone_classification
- lock_state where applicable
- validation_state_summary
- content_payload
- created_at
- updated_at

Optional but recommended:
- runtime_scope_summary
- template_scope_summary
- child_count
- lineage_summary


# ============================================================
# 3. LIST PROJECT BLOCKS
# ============================================================

operation_name:
list_project_blocks

purpose:
Return the block structure for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- parent_block_id
- block_type
- validation_state_filter
- lock_state_filter
- depth_limit where supported

required_response_fields:
- project_code
- block_list or block_tree
- structure_summary

Each returned block entry should expose at minimum:
- block_id
- block_type
- block_title
- parent_block_id
- order_index
- zone_classification
- validation_state_summary
- lock_state where applicable

behavior_rules:
- response must support structure tree rendering
- response must be runtime-aware and template-aware
- response must not hide invalid or locked blocks silently


# ============================================================
# 4. GET BLOCK
# ============================================================

operation_name:
get_block

purpose:
Return the detailed block object for one block.

required_request_fields:
- project_code
- block_id
- correlation_id

required_response_fields:
- block object with minimum shape
- runtime/template metadata summary
- editable field summary
- validation summary
- lock summary where applicable

behavior_rules:
- get_block must be enough to populate Main Editor center and inspector panes
- response must expose whether fields are editable, protected, or override-only


# ============================================================
# 5. CREATE BLOCK
# ============================================================

operation_name:
create_block

purpose:
Create a new block within an allowed structural position.

required_request_fields:
- project_code
- block_type
- correlation_id

optional_request_fields:
- parent_block_id
- insert_after_block_id
- initial_content_payload
- block_title
- create_from_preset_ref where applicable

required_response_fields:
- block_id
- project_code
- block_type
- parent_block_id where applicable
- order_index
- created_at
- updated_at

behavior_rules:
- block creation must validate runtime family legality
- block creation must validate template structural legality
- parent-child legality must be enforced
- create_from_preset may be preferred where supported
- created block must receive fresh identity

blocking_conditions:
- project unresolved
- illegal block_type for current runtime family
- illegal parent-child relationship
- protected zone restriction
- permission denied
- lock conflict where applicable


# ============================================================
# 6. UPDATE BLOCK
# ============================================================

operation_name:
update_block

purpose:
Update the editable content or metadata of one block.

required_request_fields:
- project_code
- block_id
- correlation_id

optional_mutable_fields:
- block_title
- content_payload
- selected editable metadata fields
- asset references where allowed
- linkage fields where allowed

required_response_fields:
- block_id
- updated_at
- updated block summary
- validation_state_summary

behavior_rules:
- updates must be field-aware and zone-aware
- protected zone mutation must be blocked in ordinary edit path
- advanced override zone mutation must require explicit allowed path
- invalid references should produce structured validation output
- update must not silently alter unrelated blocks

blocking_conditions:
- block unresolved
- protected zone mutation attempt
- runtime-incompatible field mutation
- template-incompatible field mutation
- permission denied
- lock conflict where applicable


# ============================================================
# 7. REORDER BLOCK
# ============================================================

operation_name:
reorder_block

purpose:
Reorder a block within its valid structure context.

required_request_fields:
- project_code
- block_id
- correlation_id

required_position_fields:
One of:
- new_order_index
- insert_after_block_id
- insert_before_block_id

required_response_fields:
- block_id
- parent_block_id where applicable
- new_order_index or resulting order summary
- updated_at

behavior_rules:
- reorder must preserve valid structure
- reorder must respect runtime continuity constraints
- reorder must respect template-required ordering rules where applicable
- reorder must not silently orphan the block

blocking_conditions:
- illegal target position
- continuity-breaking reordering
- permission denied
- lock conflict where applicable


# ============================================================
# 8. CLONE BLOCK
# ============================================================

operation_name:
clone_block

purpose:
Create a new block derived from an existing block.

required_request_fields:
- project_code
- block_id
- correlation_id

optional_request_fields:
- target_parent_block_id
- insert_after_block_id
- clone_mode_summary where applicable

required_response_fields:
- new_block_id
- source_block_id
- parent_block_id where applicable
- created_at

behavior_rules:
- clone must create fresh block identity
- clone must preserve compatible structure
- clone must refresh lineage markers
- clone must invalidate or regenerate unique references where required
- clone must remain runtime/template legal

blocking_conditions:
- source block unresolved
- cloning prohibited for this block type
- target location illegal
- permission denied
- lock conflict where applicable


# ============================================================
# 9. ARCHIVE / REMOVE BLOCK
# ============================================================

operation_name:
archive_block
or
remove_block_from_active_structure

purpose:
Remove a block from active authoring structure
without necessarily destroying lineage.

required_request_fields:
- project_code
- block_id
- correlation_id

required_response_fields:
- block_id
- resulting_status or removal_summary
- updated_at

behavior_rules:
- archive/remove is preferred over destructive delete where structure matters
- dependent child blocks or inbound references must be checked
- required template blocks may not be removable without explicit allowed path
- lineage should remain inspectable where policy requires

blocking_conditions:
- block is required by template structure
- inbound references unresolved
- child dependency violation
- permission denied
- lock conflict where applicable


# ============================================================
# 10. LIST BLOCK VALIDATION STATE
# ============================================================

operation_name:
list_block_validation_state
or
get_block_validation_state

purpose:
Return validation visibility for one or more blocks.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- block_id
- validation_stage
- severity_filter

required_response_fields:
- block validation entries
Each entry should include:
- block_id
- validation_stage
- severity_summary
- finding_count_summary
- last_validated_at where applicable

behavior_rules:
- block validation state must align with formal validation results
- frontend must not need to invent block validation state


# ============================================================
# 11. ZONE-AWARE EDITING RULE
# ============================================================

All block mutations must be zone-aware.

Minimum zone classes:
- protected_zone
- editable_zone
- advanced_override_zone

API behavior:
- protected_zone: reject ordinary mutation
- editable_zone: allow ordinary mutation if otherwise legal
- advanced_override_zone: allow only through explicit advanced path if policy allows

The API must return enough information
for the frontend to explain why mutation was blocked.


# ============================================================
# 12. ROLE-AWARE ACCESS RULE
# ============================================================

Block Editor API access must be role-aware.

owner:
- full block read/create/update/reorder/clone/archive authority

editor:
- broad block authoring authority according to policy

reviewer:
- read access
- validation visibility
- no unrestricted mutation by default

publisher:
- read access by default
- no unrestricted block mutation by default

Permissions must be enforced by API,
not only by frontend behavior.


# ============================================================
# 13. LOCK-AWARE ACCESS RULE
# ============================================================

Block Editor API must be lock-aware where lock system is enabled.

Lock concepts may include:
- project lock
- block lock

Mutation requests should evaluate:
- whether block is locked
- whether project is locked
- whether caller owns the lock or has override authority where allowed

Responses should expose:
- lock conflict state
- lock holder visibility where policy allows
- retry or next allowed action hints where possible


# ============================================================
# 14. ERROR MODEL
# ============================================================

Block Editor API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- lock_conflict
- validation_blocked where applicable

Where helpful, responses should expose:
- affected_scope_summary
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 15. FINAL INTERFACE RULE
# ============================================================

The Block Editor API is the structured authoring surface
behind Main Editor.

Core summary:

- blocks are the minimum edit unit
- list/get must support structure-aware editing
- create/update/reorder/clone/archive must be explicit
- runtime and template legality must be enforced
- zone-aware editing is mandatory
- role and lock awareness are mandatory
- block validation visibility must remain explicit




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902653_GAME_BUILDER_REVISION_AUTOSAVE_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER REVISION AUTOSAVE API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Revision and Autosave API of Game Builder.

This interface specifies the persistence-facing API contract
used by Builder frontend and Builder-supporting services.

It covers:
- official saved revision creation
- revision listing
- revision retrieval
- revision restore to working state
- autosave snapshot creation
- autosave snapshot listing
- autosave retrieval
- autosave restore to working state
- save/autosave lineage visibility
- dirty/freshness support


# ============================================================
# 1. ROLE OF REVISION / AUTOSAVE API
# ============================================================

This API group manages the formal persistence layers
of Builder authoring.

It must preserve the distinction between:

- working state
- autosave snapshot
- official saved revision

It must support:
- recovery
- history inspection
- revision-safe export preparation
- visible lineage
- explicit restore behavior

It must not:
- collapse autosave into official save
- silently overwrite revision history
- bypass validation/export boundaries


# ============================================================
# 2. OFFICIAL SAVED REVISION OBJECT MINIMUM SHAPE
# ============================================================

A revision object must expose at minimum:

- revision_ref
- project_code
- revision_number or revision_version
- revision_status
- created_at
- created_by
- content_hash or equivalent
- runtime_binding_summary
- template_binding_summary
- asset_binding_summary
- validation_state_summary where available

Recommended additional fields:
- save_summary
- source_working_state_ref where traceable
- export_eligibility_summary
- lineage_summary

revision_status examples:
- created
- active
- superseded
- archived


# ============================================================
# 3. AUTOSAVE SNAPSHOT OBJECT MINIMUM SHAPE
# ============================================================

An autosave snapshot object must expose at minimum:

- autosave_snapshot_ref
- project_code
- snapshot_status
- created_at
- snapshot_hash or equivalent
- origin_summary
- restore_eligibility_summary

Recommended additional fields:
- source_working_state_ref where traceable
- superseded_by_ref where applicable
- autosave_summary

snapshot_status examples:
- captured
- restorable
- superseded
- discarded
- archived


# ============================================================
# 4. SAVE PROJECT REVISION
# ============================================================

operation_name:
save_project_revision

purpose:
Create an official saved revision from current Builder authoring state.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- save_summary
- source_working_state_ref where supported
- expected_latest_revision_ref for conflict-aware flows

required_response_fields:
- revision_ref
- project_code
- revision_number or revision_version
- revision_status
- created_at
- content_hash or equivalent
- validation_state_summary where available

behavior_rules:
- save must create a new immutable revision
- save must not overwrite prior revision identity
- save may trigger lightweight validation where policy allows
- save must update latest revision pointer for the project
- save must not automatically export or submit

blocking_conditions:
- project unresolved
- permission denied
- lock conflict where applicable
- state_conflict where expected_latest_revision_ref is violated
- policy_blocked


# ============================================================
# 5. LIST PROJECT REVISIONS
# ============================================================

operation_name:
list_project_revisions

purpose:
Return formal saved revision history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- created_after
- created_before
- page_ref where pagination is used
- sort_key

required_response_fields:
- project_code
- revision_list
- page_summary or total_count

Each revision_list item should expose at minimum:
- revision_ref
- revision_number or revision_version
- created_at
- created_by
- revision_status
- content_hash summary
- validation_state_summary
- export_eligibility_summary where available

behavior_rules:
- revision history must remain project-scoped
- revision order must be clear
- immutable revision lineage must remain visible


# ============================================================
# 6. GET PROJECT REVISION
# ============================================================

operation_name:
get_project_revision

purpose:
Return one formal saved revision in detail.

required_request_fields:
- project_code
- revision_ref
- correlation_id

required_response_fields:
- revision object with minimum shape
- structured payload reference or payload access summary
- lineage summary
- validation summary
- export relation summary where available

behavior_rules:
- revision retrieval must be enough to support revision inspection
- response must not imply that revision is current working state automatically


# ============================================================
# 7. RESTORE REVISION TO WORKING STATE
# ============================================================

operation_name:
restore_revision_to_working_state

purpose:
Load one saved revision into working state
without rewriting revision history.

required_request_fields:
- project_code
- revision_ref
- correlation_id

optional_request_fields:
- restore_summary
- force_if_dirty where policy allows
- expected_dirty_state where supported

required_response_fields:
- project_code
- restored_revision_ref
- resulting_working_state_summary
- updated_at or restored_at

behavior_rules:
- restore targets working state only
- restore must not mutate revision history
- restore must not silently destroy unsaved work without explicit allowed path
- restore should preserve visibility of what revision was restored

blocking_conditions:
- revision unresolved
- permission denied
- lock conflict where applicable
- dirty_state conflict where force is not allowed
- policy_blocked


# ============================================================
# 8. WRITE AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
write_autosave_snapshot

purpose:
Create a recovery-oriented autosave snapshot.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- autosave_summary
- source_working_state_ref where supported
- snapshot_hash where precomputed
- replace_prior_autosave_hint where supported

required_response_fields:
- autosave_snapshot_ref
- project_code
- snapshot_status
- created_at
- snapshot_hash or equivalent

behavior_rules:
- autosave must not become official saved revision
- autosave should update latest autosave pointer
- autosave may supersede prior autosaves according to retention policy
- autosave should remain recoverable until discarded or superseded/expired by policy

blocking_conditions:
- project unresolved
- permission denied
- policy_blocked
- temporary storage failure where relevant


# ============================================================
# 9. LIST AUTOSAVE SNAPSHOTS
# ============================================================

operation_name:
list_autosave_snapshots

purpose:
Return autosave snapshot history or recent autosaves for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_discarded
- created_after
- page_ref where pagination is used
- sort_key

required_response_fields:
- project_code
- autosave_snapshot_list
- page_summary or total_count

Each autosave entry should expose at minimum:
- autosave_snapshot_ref
- created_at
- snapshot_status
- snapshot_hash summary
- restore_eligibility_summary

behavior_rules:
- autosave listing must remain distinct from revision listing
- autosave listing should support recovery UX


# ============================================================
# 10. GET AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
get_autosave_snapshot

purpose:
Return one autosave snapshot in detail.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

required_response_fields:
- autosave snapshot object with minimum shape
- payload reference or access summary
- lineage summary
- restore summary

behavior_rules:
- autosave retrieval must not imply formal revision status
- autosave retrieval must remain recovery-oriented


# ============================================================
# 11. RESTORE AUTOSAVE TO WORKING STATE
# ============================================================

operation_name:
restore_autosave_to_working_state

purpose:
Load one autosave snapshot into working state
without converting it into official saved revision automatically.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

optional_request_fields:
- restore_summary
- force_if_dirty where policy allows
- expected_dirty_state where supported

required_response_fields:
- project_code
- restored_autosave_snapshot_ref
- resulting_working_state_summary
- restored_at

behavior_rules:
- restore targets working state only
- restore must not create official saved revision implicitly
- restored autosave should be visibly distinguishable from formal save lineage
- restored autosave content must require explicit save to become official revision

blocking_conditions:
- autosave unresolved
- permission denied
- dirty_state conflict where force is not allowed
- policy_blocked


# ============================================================
# 12. DISCARD AUTOSAVE SNAPSHOT
# ============================================================

operation_name:
discard_autosave_snapshot

purpose:
Mark an autosave snapshot as no longer needed for recovery.

required_request_fields:
- project_code
- autosave_snapshot_ref
- correlation_id

required_response_fields:
- autosave_snapshot_ref
- snapshot_status
- updated_at

behavior_rules:
- discard should not affect official revision history
- discard should update latest autosave pointer if needed
- discard may be restricted by retention policy


# ============================================================
# 13. GET SAVE STATE SUMMARY
# ============================================================

operation_name:
get_save_state_summary

purpose:
Return a UI-friendly summary of working/save/autosave state.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- project_code
- dirty_state
- latest_revision_ref where applicable
- latest_revision_timestamp where applicable
- latest_autosave_snapshot_ref where applicable
- latest_autosave_timestamp where applicable
- autosave_newer_than_latest_revision yes/no
- save_state_summary

behavior_rules:
- response must be enough to drive editor save-state UI
- response must make the distinction between autosave and official save obvious


# ============================================================
# 14. GET REVISION / AUTOSAVE FRESHNESS SUMMARY
# ============================================================

operation_name:
get_revision_autosave_freshness_summary

purpose:
Return freshness comparison between official save and autosave.

required_request_fields:
- project_code
- correlation_id

required_response_fields:
- latest_revision_ref where applicable
- latest_autosave_snapshot_ref where applicable
- latest_revision_timestamp where applicable
- latest_autosave_timestamp where applicable
- autosave_newer_than_latest_revision yes/no
- freshness_summary

behavior_rules:
- intended for recovery and dirty-state UX
- should help answer whether recovery prompt is needed


# ============================================================
# 15. ROLE-AWARE ACCESS RULE
# ============================================================

Revision / Autosave API access must be role-aware.

owner:
- full save/revision/autosave history access

editor:
- save and autosave access according to policy
- revision history access where allowed

reviewer:
- read visibility only where granted
- no unrestricted save/autosave mutation by default

publisher:
- revision visibility where needed for export/submission confidence
- no unrestricted authoring persistence mutation by default

Permissions must be enforced by API.


# ============================================================
# 16. LOCK / CONFLICT AWARE RULE
# ============================================================

Revision / Autosave APIs must be conflict-aware where relevant.

Potential conflict classes:
- project lock conflict
- expected latest revision mismatch
- dirty-state restore conflict
- collaborator overwrite risk

Responses should distinguish:
- lock_conflict
- state_conflict
- policy_blocked
- permission_denied

Where possible, responses should expose:
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 17. ERROR MODEL
# ============================================================

Revision / Autosave API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- lock_conflict
- recovery_conflict

Where helpful, responses should expose:
- affected_scope_summary
- stale_state_summary
- next_allowed_actions summary


# ============================================================
# 18. FINAL INTERFACE RULE
# ============================================================

The Revision / Autosave API preserves Builder persistence layers.

Core summary:

- official save creates immutable revisions
- autosave creates recovery snapshots only
- revision history and autosave history must remain distinct
- restore targets working state, not formal history
- autosave restore must not become official save implicitly
- save-state and freshness summaries must remain easy to consume




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902654_GAME_BUILDER_ASSET_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER ASSET API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Asset API of Game Builder.

This interface specifies the asset-facing API contract
used by Asset Studio and Builder-supporting services.

It covers:
- asset listing
- asset retrieval
- asset upload/import
- asset metadata update
- asset replacement
- derived asset creation
- pixel/unit/building asset save
- asset variant generation
- asset binding / unbinding
- asset usage inspection
- asset validation visibility

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF ASSET API
# ============================================================

The Asset API manages Builder-owned material assets.

It must support:
- project-scoped asset discovery
- explicit asset import
- explicit asset lineage
- runtime-aware asset compatibility
- template-aware asset completeness
- binding-aware asset operations
- non-Persona boundary enforcement

The Asset API must not:
- act as a Persona truth editor
- allow hidden runtime-incompatible asset activation
- allow unresolved required asset families
  to appear export-ready


# ============================================================
# 2. ASSET OBJECT MINIMUM SHAPE
# ============================================================

An asset object must expose at minimum:

- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- usage_scope
- source_type
- template_origin_summary where applicable
- variant_summary where applicable
- export_metadata_summary
- validation_state_summary
- active_binding_summary where applicable
- created_at
- updated_at

Recommended additional fields:
- asset_hash
- parent_asset_ref where derived
- lineage_summary
- runtime_compatibility_summary
- non_persona_boundary_summary


# ============================================================
# 3. LIST PROJECT ASSETS
# ============================================================

operation_name:
list_project_assets

purpose:
Return assets visible for one project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- asset_type
- asset_family
- asset_status
- usage_scope
- validation_state_filter
- sort_key
- page_ref where pagination is used

required_response_fields:
- project_code
- asset_list
- page_summary or total_count

Each asset_list item should expose at minimum:
- asset_ref
- asset_type
- asset_family
- asset_status
- usage_scope
- validation_state_summary
- active_binding_summary
- updated_at

behavior_rules:
- listing must remain project-scoped
- listing must support filtering by material asset class
- listing must not hide invalid or required assets silently


# ============================================================
# 4. GET ASSET
# ============================================================

operation_name:
get_asset

purpose:
Return one asset in detail.

required_request_fields:
- project_code
- asset_ref
- correlation_id

required_response_fields:
- asset object with minimum shape
- metadata summary
- variant summary where applicable
- binding summary where applicable
- usage summary
- validation summary
- payload access summary or payload reference

behavior_rules:
- get_asset must be enough to populate Asset Browser detail
  and Asset Binding Inspector surfaces


# ============================================================
# 5. UPLOAD / IMPORT ASSET
# ============================================================

operation_name:
upload_asset

purpose:
Import a new raw or semi-processed asset into Builder.

required_request_fields:
- project_code
- asset_type
- asset_family
- usage_scope
- correlation_id

required_payload_fields:
- asset_payload_ref or upload stream
- source_format summary
- import_summary

optional_request_fields:
- template_origin_summary
- runtime_family_hint
- export_profile_hint
- asset_name

required_response_fields:
- asset_ref
- project_code
- asset_type
- asset_family
- asset_status
- created_at
- updated_at

behavior_rules:
- upload must create new asset identity
- upload must capture lineage/origin metadata
- upload must not implicitly bind asset to project structures
- upload must remain subject to non-Persona boundary rules

blocking_conditions:
- invalid asset_type or asset_family
- project unresolved
- prohibited Persona overlap
- permission denied
- unsupported import format where applicable


# ============================================================
# 6. UPDATE ASSET METADATA
# ============================================================

operation_name:
update_asset_metadata

purpose:
Update bounded metadata of an existing asset.

required_request_fields:
- project_code
- asset_ref
- correlation_id

optional_mutable_fields:
- asset_name
- usage_scope where allowed
- export metadata fields where allowed
- descriptive metadata
- palette metadata where allowed
- variant labels where allowed

required_response_fields:
- asset_ref
- updated_at
- updated metadata summary
- validation_state_summary

behavior_rules:
- metadata update must remain bounded
- identity-critical lineage must not be overwritten casually
- runtime/template compatibility should be re-evaluated where affected


# ============================================================
# 7. REPLACE ACTIVE ASSET BINDING
# ============================================================

operation_name:
replace_bound_asset
or
rebind_asset

purpose:
Replace one currently bound asset with another asset.

required_request_fields:
- project_code
- target_binding_ref
- replacement_asset_ref
- correlation_id

required_response_fields:
- target_binding_ref
- replacement_asset_ref
- resulting_binding_summary
- updated_at

behavior_rules:
- replacement must be explicit
- replacement must preserve binding visibility
- replacement must re-evaluate required asset family completeness
- replacement must re-evaluate runtime compatibility
- replacement must not silently invalidate export readiness

blocking_conditions:
- replacement asset unresolved
- incompatible asset family
- incompatible runtime usage scope
- permission denied
- policy_blocked


# ============================================================
# 8. CREATE DERIVED ASSET
# ============================================================

operation_name:
create_derived_asset

purpose:
Create a derived asset from an existing source asset.

Examples:
- recolor variant
- resized export-safe variant
- sprite sheet derivative
- state variant derivative

required_request_fields:
- project_code
- source_asset_ref
- correlation_id

optional_request_fields:
- derivation_type
- derivation_profile
- variant_summary
- target_usage_scope

required_response_fields:
- new_asset_ref
- source_asset_ref
- asset_status
- created_at

behavior_rules:
- derived asset must preserve lineage to source
- derived asset must receive new identity
- derived asset must not overwrite source payload truth
- derivation must remain runtime/template/export compatible


# ============================================================
# 9. SAVE PIXEL ASSET
# ============================================================

operation_name:
save_pixel_asset

purpose:
Persist Builder-authored pixel art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- palette_summary
- export_profile_summary
- raster_or_canvas_payload_ref

required_response_fields:
- asset_ref
- asset_type
- asset_family
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve asset lineage
- save must remain compatible with pixel-asset families
- save must expose validation-impacting metadata


# ============================================================
# 10. SAVE UNIT ART ASSET
# ============================================================

operation_name:
save_unit_art_asset

purpose:
Persist Builder-authored unit art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- palette_or_variant_summary
- export_profile_summary
- raster_payload_ref

required_response_fields:
- asset_ref
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve unit-art lineage
- save must preserve class/variant compatibility metadata
- save must remain runtime-aware for RPG/Strategy usage


# ============================================================
# 11. SAVE BUILDING ART ASSET
# ============================================================

operation_name:
save_building_art_asset

purpose:
Persist Builder-authored building art asset state.

required_request_fields:
- project_code
- asset_ref where updating existing
or
- asset_type and asset_family where creating new
- correlation_id

required_payload_fields:
- layer_payload_summary
- state_variant_summary
- export_profile_summary
- raster_payload_ref

required_response_fields:
- asset_ref
- asset_status
- export_metadata_summary
- updated_at

behavior_rules:
- save must preserve building-art lineage
- save must preserve state-variant metadata
- save must remain runtime-aware for Strategy/RPG usage where applicable


# ============================================================
# 12. GENERATE ASSET VARIANT
# ============================================================

operation_name:
generate_asset_variant

purpose:
Create a variant from an existing asset through bounded variant rules.

Examples:
- faction recolor
- rarity recolor
- upgrade state
- damage state
- emblem swap variant

required_request_fields:
- project_code
- source_asset_ref
- variant_profile_code or variant_summary
- correlation_id

required_response_fields:
- new_asset_ref
- source_asset_ref
- variant_summary
- created_at

behavior_rules:
- variant generation must preserve lineage
- variant must receive new identity
- generated variant must remain explicitly derived
- illegal variant generation for unsupported asset types must be blocked


# ============================================================
# 13. BIND ASSET TO PROJECT
# ============================================================

operation_name:
bind_asset_to_project

purpose:
Bind an asset to a project-facing structure or binding target.

required_request_fields:
- project_code
- asset_ref
- target_binding_ref
- usage_scope
- correlation_id

required_response_fields:
- asset_ref
- target_binding_ref
- binding_summary
- updated_at

behavior_rules:
- binding must be explicit
- binding must validate target compatibility
- binding must validate runtime/template legality
- binding must contribute to required asset family resolution where applicable

blocking_conditions:
- asset unresolved
- target binding unresolved
- incompatible asset family
- incompatible usage_scope
- permission denied
- prohibited Persona overlap


# ============================================================
# 14. UNBIND ASSET FROM PROJECT
# ============================================================

operation_name:
unbind_asset_from_project

purpose:
Remove or replace an active asset binding.

required_request_fields:
- project_code
- asset_ref or target_binding_ref
- correlation_id

required_response_fields:
- resulting_binding_summary
- updated_at

behavior_rules:
- unbind must be explicit
- unbind must re-evaluate required asset family completeness
- unbind must not silently leave project falsely marked export-ready

blocking_conditions:
- required binding removal would invalidate mandatory asset completeness
  where policy blocks direct removal
- permission denied
- policy_blocked


# ============================================================
# 15. LIST ASSET USAGE
# ============================================================

operation_name:
list_asset_usage

purpose:
Return all known project/runtime/template usages of one asset.

required_request_fields:
- project_code
- asset_ref
- correlation_id

required_response_fields:
- asset_ref
- usage_list

Each usage_list item should expose at minimum:
- target_scope_type
- target_scope_ref
- usage_scope
- required_or_optional classification
- active_binding yes/no

behavior_rules:
- usage visibility must support safe replacement and deletion decisions
- usage visibility must support Binding Inspector surfaces


# ============================================================
# 16. GET ASSET VALIDATION STATE
# ============================================================

operation_name:
get_asset_validation_state
or
list_asset_validation_state

purpose:
Return formal validation visibility for one or more assets.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- asset_ref
- validation_stage
- severity_filter

required_response_fields:
- asset validation entries
Each entry should include:
- asset_ref
- validation_stage
- severity_summary
- finding_count_summary
- last_validated_at where applicable

behavior_rules:
- asset validation state must align with formal validation truth
- frontend must not invent asset validation state


# ============================================================
# 17. ROLE-AWARE ACCESS RULE
# ============================================================

Asset API access must be role-aware.

owner:
- full asset list/get/upload/update/derive/bind authority

editor:
- broad asset authoring authority according to policy

reviewer:
- read visibility
- validation visibility
- no unrestricted asset mutation by default

publisher:
- read visibility
- export-facing asset summary visibility
- no unrestricted asset mutation by default

Permissions must be enforced by API.


# ============================================================
# 18. NON-PERSONA BOUNDARY RULE
# ============================================================

The Asset API must enforce Builder-owned material boundary.

Allowed Builder-owned material assets:
- enemy sprites
- monster sprites
- unit art
- building art
- map props
- icons
- ui materials
- tilesets

Prohibited:
- Persona truth editing
- treating generic Builder material assets as Persona truth
- unrestricted Persona state mutation or capture

Approved Persona projections may be referenced only
through approved non-authoritative linkage surfaces.


# ============================================================
# 19. ERROR MODEL
# ============================================================

Asset API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- validation_blocked where applicable

Where helpful, responses should expose:
- affected_scope_summary
- blocking_reason_summary
- next_allowed_actions summary


# ============================================================
# 20. FINAL INTERFACE RULE
# ============================================================

The Asset API is the material asset surface
behind Asset Studio.

Core summary:

- assets are project-scoped material objects
- upload/import must be explicit
- replace/derive/variant operations must preserve lineage
- bind/unbind must be explicit
- runtime/template compatibility must be enforced
- asset usage visibility is mandatory
- non-Persona boundary is mandatory




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902655_GAME_BUILDER_PREVIEW_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER PREVIEW API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Preview API of Game Builder.

This interface specifies the preview-facing API contract
used by Preview Studio and preview-supporting services.

It covers:
- preview session creation
- preview session retrieval
- preview action execution
- preview state retrieval
- preview reset
- preview restart
- preview close/discard
- preview basis selection
- preview mode selection
- mock mode declaration
- preview output visibility

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF PREVIEW API
# ============================================================

The Preview API manages sandbox preview sessions
for Builder-authored projects.

It must support:
- runtime-backed preview
- explicit preview basis
- explicit preview mode
- explicit mock mode
- preview-only outputs
- safe session discard

It must not:
- finalize production truth
- finalize entitlement truth
- finalize ranking truth
- finalize achievement truth
- finalize commerce truth
- mutate Persona truth
- bypass sync adjudication boundaries


# ============================================================
# 2. PREVIEW SESSION OBJECT MINIMUM SHAPE
# ============================================================

A preview session object must expose at minimum:

- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- preview_state_summary
- preview_output_summary
- created_at
- updated_at
- expires_at where applicable

session_status examples:
- created
- active
- closed
- failed
- expired
- discarded


# ============================================================
# 3. CREATE PREVIEW SESSION
# ============================================================

operation_name:
create_preview_session

purpose:
Create a new sandbox preview session.

required_request_fields:
- project_code
- preview_basis
- preview_mode
- correlation_id

optional_request_fields:
- revision_ref when preview_basis = saved_revision_preview
- mock_mode_summary
- block_scope_ref where block-scope preview is used
- preview_summary

required_response_fields:
- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- created_at

behavior_rules:
- preview_basis must be explicit
- preview_mode must be explicit
- preview session must be sandboxed
- creation must not finalize production truth
- creation may validate preview compatibility before activation

blocking_conditions:
- project unresolved
- invalid preview basis
- invalid preview mode for runtime family
- revision unresolved where required
- preview policy violation
- permission denied


# ============================================================
# 4. GET PREVIEW SESSION
# ============================================================

operation_name:
get_preview_session

purpose:
Return one preview session in detail.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview session object with minimum shape
- preview basis summary
- mock mode summary
- preview state summary
- preview output summary
- sandbox status summary

behavior_rules:
- response must be enough to populate Preview Studio shell
- response must make sandbox/non-authoritative nature visible


# ============================================================
# 5. EXECUTE PREVIEW ACTION
# ============================================================

operation_name:
execute_preview_action

purpose:
Advance or simulate preview behavior inside the session.

required_request_fields:
- project_code
- preview_session_id
- action_type
- correlation_id

optional_request_fields:
- action_payload
- target_ref where applicable
- branch_choice_ref where applicable
- preview_control_flags where applicable

required_response_fields:
- preview_session_id
- resulting_preview_state_summary
- preview_output_summary
- session_status
- updated_at

Allowed action_type examples:
- advance_scene
- choose_branch
- trigger_event
- start_battle_preview
- resolve_battle_step
- start_stage_preview
- apply_stage_action
- retry_stage
- start_turn
- execute_unit_action
- end_turn
- reset_local_preview_context

behavior_rules:
- action execution must remain sandboxed
- action execution must remain runtime-aware
- resulting outputs must remain preview-only
- illegal production-bound actions must be blocked

blocking_conditions:
- preview session unresolved
- invalid action for runtime family
- invalid action for preview mode
- preview policy violation
- permission denied


# ============================================================
# 6. GET PREVIEW STATE
# ============================================================

operation_name:
get_preview_state

purpose:
Return the current runtime-visible state of a preview session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- runtime_location_summary
- progression_state_summary
- preview_state_summary
- preview_output_summary
- mock_mode_summary
- updated_at

behavior_rules:
- preview state must remain non-authoritative
- response should be sufficient for Preview Studio state panels
- response must distinguish runtime-local state from preview outputs


# ============================================================
# 7. GET PREVIEW OUTPUTS
# ============================================================

operation_name:
get_preview_outputs
or
preview outputs included in get_preview_state

purpose:
Return preview-only candidate outputs produced by the current session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- preview_output_list or summary

Each preview output entry should expose at minimum:
- output_type
- output_status
- preview_only_flag
- summary
- source_action_ref where applicable
- generated_at

Possible output_type examples:
- ending_preview
- reward_candidate_preview
- score_candidate_preview
- ranking_candidate_preview
- achievement_candidate_preview
- save_candidate_preview
- replay_candidate_preview
- telemetry_candidate_preview

behavior_rules:
- every output must remain preview_only
- no output may claim production finality


# ============================================================
# 8. RESET PREVIEW STATE
# ============================================================

operation_name:
reset_preview_state

purpose:
Reset the runtime-local state of an active preview session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

optional_request_fields:
- reset_scope where applicable
- reset_summary

required_response_fields:
- preview_session_id
- resulting_preview_state_summary
- updated_at

behavior_rules:
- reset must remain sandbox-local
- reset must not mutate production truth
- reset may preserve session identity
- reset should clear runtime-local progression within the session
  according to preview policy


# ============================================================
# 9. RESTART PREVIEW SESSION
# ============================================================

operation_name:
restart_preview_session

purpose:
Start a fresh simulation using the same preview basis and mode.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
or
- new_preview_session_id where restart creates fresh identity
- preview_basis
- preview_mode
- session_status
- updated_at or created_at

behavior_rules:
- restart must preserve sandbox rules
- restart must not mutate production truth
- restart should clearly indicate whether session identity changed


# ============================================================
# 10. CLOSE / DISCARD PREVIEW SESSION
# ============================================================

operation_name:
close_preview_session
or
discard_preview_session

purpose:
End the preview session and discard or finalize temporary sandbox context.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- session_status
- updated_at

behavior_rules:
- close/discard must be safe
- close/discard must not create production truth
- preview session closure must not require production cleanup
- discarded preview outputs must remain non-authoritative


# ============================================================
# 11. PREVIEW BASIS RULE
# ============================================================

The Preview API must support explicit basis declaration.

Allowed preview_basis values:
- working_state_preview
- saved_revision_preview

Rules:
- working_state_preview uses current mutable authoring state
- saved_revision_preview uses one explicit official saved revision
- basis must remain visible in all preview session responses

A saved revision preview without revision_ref where required
must be invalid.


# ============================================================
# 12. PREVIEW MODE RULE
# ============================================================

The Preview API must support explicit mode declaration.

Minimum mode families:
- block_scope_preview
- flow_scope_preview
- full_project_preview

Runtime-specific mode examples:
- scene_preview
- route_preview
- battle_preview
- stage_preview
- map_preview
- turn_preview

The API must reject preview modes
that are incompatible with the resolved runtime family.


# ============================================================
# 13. MOCK MODE RULE
# ============================================================

The Preview API must support explicit mock mode declaration.

Mock mode may cover:
- ranking visibility
- achievement visibility
- entitlement-gated visibility
- commerce UI visibility
- Persona projection shaping preview

required_response_fields where mock mode is used:
- mock_mode_enabled
- enabled_mock_domains
- prohibited_real_domains

Mock mode must not silently call production-final mutation paths.


# ============================================================
# 14. ROLE-AWARE ACCESS RULE
# ============================================================

Preview API access must be role-aware.

owner:
- full preview authority

editor:
- broad preview authority according to policy

reviewer:
- preview visibility and execution authority where granted,
  without unrestricted content mutation rights

publisher:
- preview visibility and execution authority where granted,
  for release confidence purposes

Permissions must be enforced by API.


# ============================================================
# 15. ERROR MODEL
# ============================================================

Preview API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- preview_blocked
- runtime_incompatible

Where helpful, responses should expose:
- blocking_reason_summary
- incompatible_mode_summary
- next_allowed_actions summary


# ============================================================
# 16. FINAL INTERFACE RULE
# ============================================================

The Preview API is the sandbox execution surface
behind Preview Studio.

Core summary:

- preview session is the primary simulation unit
- preview basis must be explicit
- preview mode must be explicit
- mock mode must be explicit where used
- preview actions must remain sandboxed
- preview outputs must remain preview-only
- reset/restart/close must be safe
- no preview path may finalize production truth




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902656_GAME_BUILDER_VALIDATION_EXPORT_SUBMISSION_API_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER VALIDATION EXPORT SUBMISSION API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Validation / Export / Submission API of Game Builder.

This interface specifies the handoff-facing API contract
used by Validation Center, Export / Publish Center,
and Builder-supporting backend services.

It covers:
- editing validation
- export validation
- publish validation
- validation result retrieval
- export readiness inspection
- export package creation
- export package retrieval/history
- runtime export contract retrieval
- submission readiness inspection
- submission request creation
- submission retrieval/history


# ============================================================
# 1. ROLE OF THIS API GROUP
# ============================================================

This API group is the formal handoff surface
between Builder authoring state
and GameOS lifecycle state.

It must preserve these distinctions:

- validation is not export
- export is not submission
- submission is not approval
- approval is not publish

It must not:
- fabricate runtime truth
- fabricate publish approval
- bypass validation blocking
- bypass release/title/seller linkage requirements


# ============================================================
# 2. VALIDATION RESULT OBJECT MINIMUM SHAPE
# ============================================================

A validation result object must expose at minimum:

- validation_result_ref
- project_code
- validation_stage
- validation_status
- basis_type
- basis_ref where applicable
- runtime_family_code
- blocking_count
- warning_count
- info_count
- detected_at
- findings_summary

validation_stage enum:
- editing_validation
- export_validation
- publish_validation

validation_status enum:
- not_run
- running
- passed
- warning_only
- failed_blocking
- superseded
- archived

basis_type examples:
- working_state
- revision
- export_package


# ============================================================
# 3. VALIDATION FINDING MINIMUM SHAPE
# ============================================================

A validation finding must expose at minimum:

- finding_id
- validation_result_ref
- validation_stage
- severity
- affected_scope_type
- affected_scope_ref
- summary
- fix_hint where available
- detected_at

severity enum:
- blocking
- warning
- info

affected_scope_type examples:
- project
- block
- asset
- runtime_binding
- template_binding
- export_contract
- submission_linkage


# ============================================================
# 4. RUN EDITING VALIDATION
# ============================================================

operation_name:
run_editing_validation

purpose:
Run authoring-focused validation for current Builder state.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- basis_type
- basis_ref where applicable
- scope_ref where partial validation is supported

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref where applicable
- detected_at

behavior_rules:
- editing validation may run on working_state
- editing validation should be fast enough for iterative use
- editing validation must still remain formal validation truth

blocking_conditions:
- project unresolved
- permission denied
- invalid basis declaration


# ============================================================
# 5. RUN EXPORT VALIDATION
# ============================================================

operation_name:
run_export_validation

purpose:
Run export-readiness validation on a formal Builder basis.

required_request_fields:
- project_code
- correlation_id

required_basis_fields:
- revision_ref

optional_request_fields:
- export_profile_hint
- asset_manifest_ref where precomputed

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref
- detected_at

behavior_rules:
- export validation must run on official saved revision basis
- export validation must verify runtime/template/asset completeness
- export validation must be sufficient for export gating

blocking_conditions:
- revision unresolved
- revision not official saved revision
- permission denied


# ============================================================
# 6. RUN PUBLISH VALIDATION
# ============================================================
operation_name:
run_publish_validation

purpose:
Run submission/publish-readiness validation.

required_request_fields:
- project_code
- correlation_id

required_basis_fields:
- revision_ref
or
- export_package_code

optional_request_fields:
- release_code
- game_title_code
- seller_code where linkage requires explicit resolution

required_response_fields:
- validation_result_ref
- validation_stage
- validation_status
- blocking_count
- warning_count
- info_count
- basis_type
- basis_ref
- detected_at

behavior_rules:
- publish validation must verify linkage and platform readiness
- publish validation must be stronger than export validation
- publish validation must not imply approval

blocking_conditions:
- required linkage unresolved
- invalid basis
- permission denied


# ============================================================
# 7. GET VALIDATION RESULT
# ============================================================
operation_name:
get_validation_result

purpose:
Return one validation result in detail.

required_request_fields:
- project_code
- validation_result_ref
- correlation_id

required_response_fields:
- validation result object
- finding_list
- freshness_summary
- basis_summary

behavior_rules:
- response must be sufficient for Validation Center rendering
- finding structure must remain machine-readable


# ============================================================
# 8. LIST VALIDATION RESULTS
# ============================================================
operation_name:
list_validation_results_for_project

purpose:
Return project-scoped validation history.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- validation_stage
- basis_type
- include_archived
- page_ref

required_response_fields:
- validation_result_list
- page_summary or total_count

behavior_rules:
- validation history must remain project-scoped
- latest result must be distinguishable from prior results


# ============================================================
# 9. INSPECT EXPORT READINESS
# ============================================================
operation_name:
inspect_export_readiness

purpose:
Return a formal export-readiness summary.

required_request_fields:
- project_code
- revision_ref
- correlation_id

required_response_fields:
- project_code
- revision_ref
- export_ready
- blocking_count
- warning_count
- required_asset_family_summary
- runtime_resolution_summary
- template_resolution_summary
- export_contract_prerequisite_summary
- last_export_validation_ref where applicable

behavior_rules:
- export readiness must not rely on vague heuristics
- response must be sufficient for Export / Publish Center

blocking_conditions:
- revision unresolved
- unresolved export validation basis


# ============================================================
# 10. CREATE EXPORT PACKAGE
# ============================================================
operation_name:
create_export_package

purpose:
Create an export package candidate from one saved revision.

required_request_fields:
- project_code
- revision_ref
- correlation_id

optional_request_fields:
- export_summary
- export_profile_hint

required_response_fields:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- runtime_export_contract_ref where applicable
- asset_manifest_ref
- created_at

export_status enum:
- created
- packaging
- packaged
- failed
- superseded
- archived

behavior_rules:
- export must require official saved revision
- export must require no blocking export validation findings
- export must create explicit lineage to revision
- export must not imply submission

blocking_conditions:
- revision unresolved
- revision not exportable
- blocking export validation findings remain
- permission denied


# ============================================================
# 11. GET EXPORT PACKAGE
# ============================================================
operation_name:
get_export_package

purpose:
Return one export package in detail.

required_request_fields:
- project_code
- export_package_code
- correlation_id

required_response_fields:
- export_package_code
- project_code
- revision_ref
- export_status
- export_hash
- runtime_export_contract_ref
- asset_manifest_ref
- created_at
- lineage_summary
- package_summary

behavior_rules:
- response must be sufficient for export inspection screens


# ============================================================
# 12. LIST EXPORT PACKAGES
# ============================================================
operation_name:
list_export_packages_for_project

purpose:
Return export history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- page_ref
- sort_key

required_response_fields:
- export_package_list
- page_summary or total_count

Each list item should expose at minimum:
- export_package_code
- revision_ref
- export_status
- export_hash summary
- created_at
- linked_submission_summary where applicable


# ============================================================
# 13. GET RUNTIME EXPORT CONTRACT
# ============================================================
operation_name:
get_runtime_export_contract

purpose:
Return the resolved runtime export contract for one export package.

required_request_fields:
- project_code
- export_package_code
- correlation_id

required_response_fields:
- runtime_export_contract_ref
- contract_identity_summary
- runtime_resolution_summary
- ruleset_resolution_summary
- template_resolution_summary
- asset_resolution_summary
- preview_compatibility_summary
- sync_candidate_summary
- state_boundary_summary
- persona_boundary_summary
- commerce_boundary_summary

behavior_rules:
- contract must be explicit and readable
- export package without resolvable runtime contract is invalid


# ============================================================
# 14. INSPECT SUBMISSION READINESS
# ============================================================
operation_name:
inspect_submission_readiness

purpose:
Return a formal submission-readiness summary.

required_request_fields:
- project_code
- export_package_code
- correlation_id

optional_request_fields:
- release_code
- game_title_code
- seller_code where explicit linkage is needed

required_response_fields:
- project_code
- export_package_code
- submission_ready
- blocking_count
- warning_count
- linkage_summary
- publish_validation_summary
- moderation_readiness_summary
- release_readiness_summary

behavior_rules:
- submission readiness must be based on explicit linkage and validation
- response must be sufficient for Export / Publish Center


# ============================================================
# 15. CREATE SUBMISSION REQUEST
# ============================================================
operation_name:
create_submission_request

purpose:
Create a submission request from one export package candidate.

required_request_fields:
- project_code
- export_package_code
- game_title_code
- release_code
- correlation_id

optional_request_fields:
- submission_summary
- seller_code where explicit linkage requires it

required_response_fields:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- created_at

submission_status enum:
- created
- under_review
- validation_blocked
- moderation_pending
- approved_externally
- rejected_externally
- rollout_pending
- activated_externally
- archived

behavior_rules:
- submission must be explicit
- submission must require submission-ready state
- submission must not imply approval or activation

blocking_conditions:
- export package unresolved
- publish validation blocking remains
- release/title/seller linkage unresolved
- permission denied


# ============================================================
# 16. GET SUBMISSION REQUEST
# ============================================================
operation_name:
get_submission_request

purpose:
Return one submission request in detail.

required_request_fields:
- project_code
- submission_request_ref
- correlation_id

required_response_fields:
- submission_request_ref
- project_code
- export_package_code
- game_title_code
- release_code
- submission_status
- lifecycle_summary
- created_at
- updated_at

behavior_rules:
- response must distinguish Builder-visible state
  from external approval/activation state


# ============================================================
# 17. LIST SUBMISSION REQUESTS
# ============================================================
operation_name:
list_submission_requests_for_project

purpose:
Return submission history for a project.

required_request_fields:
- project_code
- correlation_id

optional_request_fields:
- include_archived
- page_ref
- sort_key

required_response_fields:
- submission_request_list
- page_summary or total_count

Each list item should expose at minimum:
- submission_request_ref
- export_package_code
- release_code
- submission_status
- created_at
- updated_at


# ============================================================
# 18. ROLE-AWARE ACCESS RULE
# ============================================================
owner:
- full validation/export/submission authority

editor:
- validation authority
- export authority where policy allows
- limited submission authority where policy allows

reviewer:
- validation visibility
- export/submission visibility where granted
- no unrestricted mutation by default

publisher:
- strong export/submission visibility
- submission authority according to policy

Permissions must be enforced by API.


# ============================================================
# 19. ERROR MODEL
# ============================================================
This API group should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- validation_blocked
- export_blocked
- submission_blocked

Where helpful, responses should expose:
- blocking_reason_summary
- affected_scope_summary
- next_allowed_actions summary


# ============================================================
# 20. FINAL INTERFACE RULE
# ============================================================

This API group is the formal Builder handoff surface.

Core summary:

- validation stages must remain distinct
- export readiness must be inspectable
- export must be explicit
- runtime export contract must be inspectable
- submission readiness must be inspectable
- submission must be explicit
- submission is not approval
- export is not publish




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902657_GAME_BUILDER_VALIDATION_EXPORT_SUBMISSION_JSON_EXAMPLES.md
============================================================

# ============================================================
# GAME BUILDER VALIDATION EXPORT SUBMISSION JSON EXAMPLES
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Provide concrete request/response JSON examples
for the most important Builder handoff APIs.

scope:
- editing validation
- export validation
- publish validation
- export readiness
- create export package
- get runtime export contract
- submission readiness
- create submission request


# ============================================================
# 1. RUN EDITING VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "basis_type": "working_state",
  "scope_ref": "block_scene_001",
  "correlation_id": "corr_edit_val_001"
}

response_example:
{
  "validation_result_ref": "val_edit_0001",
  "validation_stage": "editing_validation",
  "validation_status": "failed_blocking",
  "basis_type": "working_state",
  "basis_ref": "working_state",
  "runtime_family_code": "visual_novel",
  "blocking_count": 2,
  "warning_count": 1,
  "info_count": 0,
  "detected_at": "2026-03-25T12:00:00Z",
  "findings_summary": [
    {
      "finding_id": "f_0001",
      "severity": "blocking",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_scene_001",
      "summary": "next_scene_target is missing",
      "fix_hint": "Set next_scene_target or ending resolution."
    },
    {
      "finding_id": "f_0002",
      "severity": "blocking",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_choice_014",
      "summary": "choice references unresolved branch target",
      "fix_hint": "Bind choice target to an existing scene or block."
    },
    {
      "finding_id": "f_0003",
      "severity": "warning",
      "affected_scope_type": "block",
      "affected_scope_ref": "block_scene_003",
      "summary": "speaker portrait fallback is being used",
      "fix_hint": "Bind a project-specific portrait asset."
    }
  ]
}


# ============================================================
# 2. RUN EXPORT VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "asset_manifest_ref": "ast_manifest_0042",
  "correlation_id": "corr_export_val_001"
}

response_example:
{
  "validation_result_ref": "val_export_0007",
  "validation_stage": "export_validation",
  "validation_status": "passed",
  "basis_type": "revision",
  "basis_ref": "rev_0042",
  "runtime_family_code": "visual_novel",
  "blocking_count": 0,
  "warning_count": 1,
  "info_count": 2,
  "detected_at": "2026-03-25T12:10:00Z",
  "findings_summary": [
    {
      "finding_id": "f_1001",
      "severity": "warning",
      "affected_scope_type": "asset",
      "affected_scope_ref": "asset_bg_004",
      "summary": "image size is larger than recommended preview profile",
      "fix_hint": "Consider smaller preview variant."
    }
  ]
}


# ============================================================
# 3. RUN PUBLISH VALIDATION
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "release_code": "rel_game_0003",
  "game_title_code": "title_game_0003",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_publish_val_001"
}

response_example:
{
  "validation_result_ref": "val_publish_0002",
  "validation_stage": "publish_validation",
  "validation_status": "failed_blocking",
  "basis_type": "export_package",
  "basis_ref": "exp_pkg_0012",
  "runtime_family_code": "visual_novel",
  "blocking_count": 1,
  "warning_count": 0,
  "info_count": 1,
  "detected_at": "2026-03-25T12:20:00Z",
  "findings_summary": [
    {
      "finding_id": "f_2001",
      "severity": "blocking",
      "affected_scope_type": "submission_linkage",
      "affected_scope_ref": "rel_game_0003",
      "summary": "release age-rating metadata is unresolved",
      "fix_hint": "Complete release-facing age/content rating fields."
    }
  ]
}


# ============================================================
# 4. INSPECT EXPORT READINESS
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "correlation_id": "corr_export_ready_001"
}

response_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_ready": true,
  "blocking_count": 0,
  "warning_count": 1,
  "required_asset_family_summary": {
    "required": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "resolved": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "unresolved": []
  },
  "runtime_resolution_summary": {
    "runtime_family_code": "visual_novel",
    "runtime_profile_code": "vn_runtime_profile_v1",
    "ruleset_profile_code": "vn_ruleset_v1"
  },
  "template_resolution_summary": {
    "template_profile_code": "tpl_vn_romance_beginner_v1",
    "template_family_code": "visual_novel",
    "template_tier": "beginner"
  },
  "export_contract_prerequisite_summary": {
    "runtime_resolved": true,
    "ruleset_resolved": true,
    "template_resolved": true,
    "asset_manifest_ready": true
  },
  "last_export_validation_ref": "val_export_0007"
}


# ============================================================
# 5. CREATE EXPORT PACKAGE
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_summary": "first publish candidate",
  "export_profile_hint": "default_release",
  "correlation_id": "corr_export_create_001"
}

response_example:
{
  "export_package_code": "exp_pkg_0012",
  "project_code": "prj_gm_0001",
  "revision_ref": "rev_0042",
  "export_status": "packaged",
  "export_hash": "sha256:exporthash0012",
  "runtime_export_contract_ref": "rt_contract_0012",
  "asset_manifest_ref": "ast_manifest_0042",
  "created_at": "2026-03-25T12:30:00Z"
}


# ============================================================
# 6. GET RUNTIME EXPORT CONTRACT
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "correlation_id": "corr_contract_get_001"
}

response_example:
{
  "runtime_export_contract_ref": "rt_contract_0012",
  "contract_identity_summary": {
    "contract_ref": "rt_contract_0012",
    "contract_version": 1,
    "project_code": "prj_gm_0001",
    "export_package_code": "exp_pkg_0012",
    "export_hash": "sha256:exporthash0012",
    "frozen_revision_ref": "rev_0042"
  },
  "runtime_resolution_summary": {
    "runtime_family_code": "visual_novel",
    "runtime_profile_code": "vn_runtime_profile_v1"
  },
  "ruleset_resolution_summary": {
    "ruleset_profile_code": "vn_ruleset_v1",
    "evaluation_order_summary": [
      "input_validity",
      "condition_evaluation",
      "mutation_resolution",
      "progression_resolution",
      "candidate_resolution"
    ]
  },
  "template_resolution_summary": {
    "template_profile_code": "tpl_vn_romance_beginner_v1",
    "template_family_code": "visual_novel",
    "template_tier": "beginner"
  },
  "asset_resolution_summary": {
    "required_asset_family_summary": [
      "vn_presentation_assets",
      "ui_template_assets"
    ],
    "asset_manifest_ref": "ast_manifest_0042"
  },
  "preview_compatibility_summary": {
    "preview_supported": true,
    "preview_modes": [
      "scene_preview",
      "route_preview",
      "full_story_preview"
    ]
  },
  "sync_candidate_summary": {
    "save_candidate_supported": true,
    "achievement_candidate_supported": true,
    "ranking_candidate_supported": false,
    "replay_candidate_supported": false,
    "telemetry_candidate_supported": true
  },
  "state_boundary_summary": {
    "saveable_state_summary": [
      "route_progression",
      "ending_unlock"
    ],
    "derived_state_summary": [
      "ending_eligibility"
    ],
    "transient_state_summary": [
      "current_choice_focus"
    ],
    "prohibited_authority_state_summary": [
      "final_achievement_truth",
      "persona_truth"
    ]
  },
  "persona_boundary_summary": {
    "persona_projection_usage_summary": [
      "approved_cast_projection",
      "dialogue_tone_shaping"
    ],
    "prohibited_persona_overlap_summary": [
      "no_persona_truth_overwrite"
    ]
  },
  "commerce_boundary_summary": {
    "entitlement_dependency_summary": [
      "entitlement_presence_only"
    ],
    "commerce_dependency_summary": [],
    "prohibited_finality_summary": [
      "no_purchase_finality",
      "no_entitlement_issuance"
    ]
  }
}


# ============================================================
# 7. INSPECT SUBMISSION READINESS
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "release_code": "rel_game_0003",
  "game_title_code": "title_game_0003",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_submit_ready_001"
}

response_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "submission_ready": true,
  "blocking_count": 0,
  "warning_count": 0,
  "linkage_summary": {
    "workspace_resolved": true,
    "seller_resolved": true,
    "game_title_resolved": true,
    "release_resolved": true
  },
  "publish_validation_summary": {
    "validation_result_ref": "val_publish_0005",
    "validation_status": "passed"
  },
  "moderation_readiness_summary": {
    "metadata_complete": true
  },
  "release_readiness_summary": {
    "release_code": "rel_game_0003",
    "age_rating_complete": true
  }
}


# ============================================================
# 8. CREATE SUBMISSION REQUEST
# ============================================================

request_example:
{
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "game_title_code": "title_game_0003",
  "release_code": "rel_game_0003",
  "submission_summary": "submit initial release candidate",
  "seller_code": "seller_ind_0021",
  "correlation_id": "corr_submit_create_001"
}

response_example:
{
  "submission_request_ref": "sub_req_0008",
  "project_code": "prj_gm_0001",
  "export_package_code": "exp_pkg_0012",
  "game_title_code": "title_game_0003",
  "release_code": "rel_game_0003",
  "submission_status": "created",
  "created_at": "2026-03-25T12:40:00Z"
}




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-layer/0902658_GAME_BUILDER_COMPONENT_EVENT_CONTRACT.md
============================================================

# ============================================================
# GAME BUILDER COMPONENT EVENT CONTRACT
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official UI component event contract of Game Builder.

This interface defines how major frontend components
communicate with Builder state and actions.

It covers:
- project selection events
- editor selection/change/save events
- asset selection/bind events
- preview launch/control events
- validation rerun/jump events
- export/submission action events


# ============================================================
# 1. EVENT CONTRACT PRINCIPLE
# ============================================================

Frontend component events must be explicit and domain-named.

Component events should describe:
- what happened
- which Builder object it applies to
- whether it is UI-only or domain-significant


# ============================================================
# 2. PROJECT EVENTS
# ============================================================

Examples:
- project_selected
- project_created
- project_archived
- template_selected_for_creation

Suggested payload fields:
- project_code
- workspace_code
- template_profile_code where applicable


# ============================================================
# 3. EDITOR EVENTS
# ============================================================

Examples:
- block_selected
- block_created
- block_updated
- block_reordered
- block_cloned
- block_archived
- save_requested
- autosave_triggered

Suggested payload fields:
- project_code
- block_id
- parent_block_id where applicable
- correlation_id


# ============================================================
# 4. ASSET EVENTS
# ============================================================

Examples:
- asset_selected
- asset_uploaded
- asset_saved
- asset_variant_generated
- asset_bound
- asset_unbound

Suggested payload fields:
- project_code
- asset_ref
- target_scope_ref where applicable


# ============================================================
# 5. PREVIEW EVENTS
# ============================================================

Examples:
- preview_requested
- preview_session_created
- preview_action_executed
- preview_reset_requested
- preview_discard_requested

Suggested payload fields:
- project_code
- preview_session_id
- preview_basis
- preview_mode


# ============================================================
# 6. VALIDATION EVENTS
# ============================================================

Examples:
- validation_requested
- validation_result_received
- validation_finding_selected
- validation_jump_requested

Suggested payload fields:
- project_code
- validation_result_ref
- validation_stage
- finding_id where applicable


# ============================================================
# 7. EXPORT / SUBMISSION EVENTS
# ============================================================

Examples:
- export_readiness_requested
- export_requested
- export_result_received
- submission_readiness_requested
- submission_requested
- submission_result_received

Suggested payload fields:
- project_code
- revision_ref or export_package_code
- submission_request_ref where applicable


# ============================================================
# 8. FINAL INTERFACE RULE
# ============================================================

Builder component events must remain explicit and domain-aligned.

Core summary:

- use domain-named events
- include relevant Builder object identity
- distinguish UI-only events from lifecycle-significant events




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/265.builder-webapp/0902650_GAME_BUILDER_WEBAPP_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME BUILDER WEBAPP INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for Game Builder Web App lifecycle handling.

required_fields:
- project_code or session_ref or package_code or pipeline_code or job_ref
- workspace_code
- runtime_profile_code where applicable
- release_code where applicable
- correlation_id

compatibility_rule:
Game Builder Web App interfaces must remain workspace-aware and runtime-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/090.interface/266.builder-template-asset-system/0902660_GAME_TEMPLATE_ASSET_INTERFACE_DETAIL.md
============================================================

# ============================================================
# GAME TEMPLATE ASSET INTERFACE DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define interface detail for Game Builder template and asset system lifecycle handling.

required_fields:
- family_code or profile_code or asset_set_code or boundary_code
- runtime_profile_code where applicable
- ruleset_profile_code where applicable
- asset_family where applicable
- correlation_id

compatibility_rule:
Game template-asset interfaces must remain runtime-aware and asset-aware.




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/120.implementation/265.builder-layer/1202650_GAME_BUILDER_DB_COLUMN_LEVEL_SPECIFICATION.md
============================================================

# ============================================================
# GAME BUILDER DB COLUMN LEVEL SPECIFICATION
# ============================================================

status: canonical
layer: 120.implementation
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the column-level database specification
for the primary Game Builder logical tables.

note:
This document is implementation-facing.
Types are logical SQL-oriented suggestions
and may be adapted to the chosen database
without violating architectural intent.


# ============================================================
# 1. BUILDER_PROJECT
# ============================================================

table_name:
builder_project

columns:
- id : bigserial primary key
- project_code : text unique not null
- workspace_code : text not null
- game_title_code : text null
- project_name : text not null
- project_summary : text null
- project_status : text not null
- runtime_family_code : text not null
- runtime_profile_code : text null
- ruleset_profile_code : text null
- template_profile_code : text null
- template_family_code : text null
- template_tier : text null
- latest_revision_ref : text null
- latest_autosave_snapshot_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(project_code)
- index(workspace_code)
- index(game_title_code)
- index(project_status)
- index(runtime_family_code)
- index(updated_at desc)


# ============================================================
# 2. BUILDER_BLOCK
# ============================================================

table_name:
builder_block

columns:
- id : bigserial primary key
- block_id : text unique not null
- project_code : text not null
- block_type : text not null
- block_title : text not null
- parent_block_id : text null
- order_index : integer not null
- zone_classification : text not null
- block_status : text not null
- content_payload_json : jsonb not null
- validation_state_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(block_id)
- index(project_code)
- index(project_code, parent_block_id, order_index)
- index(block_type)
- index(zone_classification)
- gin(content_payload_json)


# ============================================================
# 3. BUILDER_REVISION
# ============================================================

table_name:
builder_revision

columns:
- id : bigserial primary key
- revision_ref : text unique not null
- project_code : text not null
- revision_number : integer not null
- revision_status : text not null
- save_summary : text null
- content_hash : text not null
- runtime_binding_summary_json : jsonb not null
- template_binding_summary_json : jsonb null
- asset_binding_summary_json : jsonb null
- validation_state_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null

recommended_indexes:
- unique(revision_ref)
- unique(project_code, revision_number)
- index(project_code, created_at desc)
- index(revision_status)


# ============================================================
# 4. BUILDER_AUTOSAVE_SNAPSHOT
# ============================================================

table_name:
builder_autosave_snapshot

columns:
- id : bigserial primary key
- autosave_snapshot_ref : text unique not null
- project_code : text not null
- snapshot_status : text not null
- autosave_summary : text null
- snapshot_hash : text not null
- payload_ref : text null
- created_by : text not null
- created_at : timestamptz not null

recommended_indexes:
- unique(autosave_snapshot_ref)
- index(project_code, created_at desc)
- index(snapshot_status)


# ============================================================
# 5. BUILDER_ASSET
# ============================================================

table_name:
builder_asset

columns:
- id : bigserial primary key
- asset_ref : text unique not null
- project_code : text not null
- asset_type : text not null
- asset_family : text not null
- asset_status : text not null
- usage_scope : text not null
- source_type : text not null
- asset_name : text null
- asset_hash : text null
- template_origin_summary_json : jsonb null
- variant_summary_json : jsonb null
- export_metadata_summary_json : jsonb null
- validation_state_summary_json : jsonb null
- payload_ref : text null
- parent_asset_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(asset_ref)
- index(project_code)
- index(project_code, asset_type)
- index(project_code, asset_family)
- index(asset_status)
- index(parent_asset_ref)


# ============================================================
# 6. BUILDER_ASSET_BINDING
# ============================================================

table_name:
builder_asset_binding

columns:
- id : bigserial primary key
- binding_ref : text unique not null
- project_code : text not null
- asset_ref : text not null
- target_scope_type : text not null
- target_scope_ref : text not null
- usage_scope : text not null
- binding_status : text not null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(binding_ref)
- index(project_code)
- index(asset_ref)
- index(target_scope_type, target_scope_ref)
- index(binding_status)


# ============================================================
# 7. BUILDER_PREVIEW_SESSION
# ============================================================

table_name:
builder_preview_session

columns:
- id : bigserial primary key
- preview_session_id : text unique not null
- project_code : text not null
- runtime_family_code : text not null
- preview_basis : text not null
- basis_ref : text null
- preview_mode : text not null
- mock_mode_summary_json : jsonb null
- session_status : text not null
- preview_state_summary_json : jsonb null
- preview_output_summary_json : jsonb null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null
- expires_at : timestamptz null

recommended_indexes:
- unique(preview_session_id)
- index(project_code)
- index(session_status)
- index(expires_at)


# ============================================================
# 8. BUILDER_VALIDATION_RESULT
# ============================================================

table_name:
builder_validation_result

columns:
- id : bigserial primary key
- validation_result_ref : text unique not null
- project_code : text not null
- validation_stage : text not null
- validation_status : text not null
- basis_type : text not null
- basis_ref : text null
- runtime_family_code : text not null
- blocking_count : integer not null default 0
- warning_count : integer not null default 0
- info_count : integer not null default 0
- findings_summary_json : jsonb null
- detected_at : timestamptz not null

recommended_indexes:
- unique(validation_result_ref)
- index(project_code, validation_stage, detected_at desc)
- index(validation_status)
- index(basis_type, basis_ref)


# ============================================================
# 9. BUILDER_VALIDATION_FINDING
# ============================================================

table_name:
builder_validation_finding

columns:
- id : bigserial primary key
- finding_id : text unique not null
- validation_result_ref : text not null
- validation_stage : text not null
- severity : text not null
- affected_scope_type : text not null
- affected_scope_ref : text not null
- summary : text not null
- fix_hint : text null
- detected_at : timestamptz not null

recommended_indexes:
- unique(finding_id)
- index(validation_result_ref)
- index(severity)
- index(affected_scope_type, affected_scope_ref)


# ============================================================
# 10. BUILDER_EXPORT_PACKAGE
# ============================================================

table_name:
builder_export_package

columns:
- id : bigserial primary key
- export_package_code : text unique not null
- project_code : text not null
- revision_ref : text not null
- export_status : text not null
- export_summary : text null
- export_hash : text not null
- runtime_export_contract_ref : text null
- asset_manifest_ref : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(export_package_code)
- index(project_code, created_at desc)
- index(revision_ref)
- index(export_status)


# ============================================================
# 11. BUILDER_SUBMISSION_REQUEST
# ============================================================

table_name:
builder_submission_request

columns:
- id : bigserial primary key
- submission_request_ref : text unique not null
- project_code : text not null
- export_package_code : text not null
- game_title_code : text not null
- release_code : text not null
- seller_code : text null
- submission_status : text not null
- submission_summary : text null
- created_by : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(submission_request_ref)
- index(project_code, created_at desc)
- index(export_package_code)
- index(game_title_code)
- index(release_code)
- index(submission_status)


# ============================================================
# 12. BUILDER_PROJECT_COLLABORATOR
# ============================================================

table_name:
builder_project_collaborator

columns:
- id : bigserial primary key
- project_code : text not null
- collaborator_identity : text not null
- role_code : text not null
- collaborator_status : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(project_code, collaborator_identity)
- index(project_code)
- index(role_code)
- index(collaborator_status)


# ============================================================
# 13. BUILDER_BLOCK_LOCK
# ============================================================

table_name:
builder_block_lock

columns:
- id : bigserial primary key
- block_id : text not null
- lock_holder_identity : text not null
- lock_status : text not null
- acquired_at : timestamptz not null
- expires_at : timestamptz null

recommended_indexes:
- unique(block_id)
- index(lock_holder_identity)
- index(lock_status)
- index(expires_at)


# ============================================================
# 14. BUILDER_COMMENT
# ============================================================

table_name:
builder_comment

columns:
- id : bigserial primary key
- comment_ref : text unique not null
- project_code : text not null
- target_scope_type : text not null
- target_scope_ref : text not null
- author_identity : text not null
- comment_status : text not null
- comment_body : text not null
- created_at : timestamptz not null
- updated_at : timestamptz not null

recommended_indexes:
- unique(comment_ref)
- index(project_code)
- index(target_scope_type, target_scope_ref)
- index(author_identity)
- index(comment_status)


# ============================================================
# 15. FINAL COLUMN-LEVEL RULE
# ============================================================

These tables define the minimum column-level implementation shape
for Builder core persistence.

Core summary:

- project is the root object
- block is the minimum content object
- revision and autosave are distinct
- asset metadata and bindings are explicit
- preview remains non-authoritative
- validation findings remain structured
- export and submission are explicit lifecycle objects
- collaboration objects are first-class




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/130.development/265.builder-layer/1302650_GAME_BUILDER_DEVELOPMENT_TASK_STRUCTURE.md
============================================================

# ============================================================
# GAME BUILDER DEVELOPMENT TASK STRUCTURE
# ============================================================

status: canonical
layer: 130.development
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official development task structure of Game Builder.

This document breaks Builder into implementation-facing work domains.


# ============================================================
# 1. TASK STRUCTURE PRINCIPLE
# ============================================================

Tasks should follow Builder domain boundaries,
not arbitrary technical fragments only.

Recommended workstreams:
- frontend shell
- project/template backend
- block editor backend
- revision/autosave backend
- asset backend
- preview backend
- validation backend
- export/submission backend
- collaboration backend
- shared infra and observability


# ============================================================
# 2. FRONTEND TASK GROUPS
# ============================================================

- shell and routing
- workspace/project views
- template gallery
- project overview
- main editor shell
- structure tree
- property inspector
- asset studio
- preview studio
- validation center
- export/publish center
- shared status badges/components


# ============================================================
# 3. BACKEND TASK GROUPS
# ============================================================

- project service
- block service
- revision service
- autosave service
- asset service
- preview service
- validation service
- export service
- submission service
- collaboration/lock/comment service


# ============================================================
# 4. CROSS-CUTTING TASK GROUPS
# ============================================================

- role/permission enforcement
- runtime/template compatibility enforcement
- Persona boundary enforcement
- lineage/hash generation
- observability/logging
- error model consistency


# ============================================================
# 5. MVP TASK ORDER
# ============================================================

1. shell + project/template
2. editor + save/autosave
3. asset browser/upload/bind
4. preview basics
5. validation + export
6. submission
7. collaboration
8. advanced asset/editor polish


# ============================================================
# 6. FINAL DEVELOPMENT RULE
# ============================================================

Builder tasks must remain aligned with architecture boundaries.

Core summary:

- tasks follow Builder domains
- MVP follows project -> editor -> asset -> preview -> validation/export -> submission
- security and boundaries are cross-cutting, not optional




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/130.development/265.builder-layer/1302651_GAME_BUILDER_REMAINING_DETAIL_CHECKLIST.md
============================================================

# ============================================================
# GAME BUILDER REMAINING DETAIL CHECKLIST
# ============================================================

status: canonical
layer: 130.development
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the official remaining-detail checklist for Game Builder.

This checklist identifies the areas that may still need
additional detail before or during implementation.


# ============================================================
# 1. MOSTLY COMPLETED AREAS
# ============================================================

The following areas are mostly detailed already:

- builder overview
- screen architecture
- state and save architecture
- main editor architecture
- asset studio architecture
- preview studio architecture
- validation center architecture
- export/publish center architecture
- project API detail
- block editor API detail
- revision/autosave API detail
- asset API detail
- preview API detail
- validation/export/submission API detail
- DB schema architecture
- frontend state architecture
- template expansion architecture
- collaboration architecture
- security/permission architecture
- implementation phase architecture
- development task structure


# ============================================================
# 2. STILL-THIN AREAS
# ============================================================

The following areas may still benefit from deeper detail:

- exact request/response JSON examples
- concrete DB column typing and indexing strategy
- exact object storage key strategy
- frontend component props/events contracts
- exact lock timeout / expiry policy
- exact autosave cadence policy
- exact preview session expiry policy
- exact template migration UX
- exact asset editor toolbar behavior
- exact drag/drop behavior in structure tree
- exact error message vocabulary
- exact observability/logging event map


# ============================================================
# 3. IMPLEMENTATION-CHOICE-LEVEL AREAS
# ============================================================

These can be decided during implementation if architecture stays intact:

- frontend framework state library choice
- pagination strategy details
- background job orchestration details
- cache invalidation details
- exact modal/dialog composition
- optimistic UI policy by endpoint
- exact image processing pipeline implementation


# ============================================================
# 4. HIGH-PRIORITY REMAINING ITEMS
# ============================================================

If deeper detail is needed before coding,
prioritize these first:

1. validation/export/submission JSON examples
2. DB table column-level specification
3. frontend component event contract
4. lock/conflict UX detail
5. asset editor control detail


# ============================================================
# 5. SAFE TO DEFER ITEMS
# ============================================================

These are safer to defer until after MVP starts:

- advanced collaboration polish
- advanced asset variant workflows
- advanced preview debug overlays
- advanced template migration tooling
- advanced analytics/telemetry dashboards


# ============================================================
# 6. FINAL CHECKLIST RULE
# ============================================================

Builder may proceed to implementation when:

- core architecture is accepted
- primary APIs are accepted
- DB/storage boundaries are accepted
- runtime and Persona boundaries are accepted
- remaining thin items are explicitly acknowledged

Core summary:

- Builder is largely detailed
- a few low-level implementation specifics remain
- these should be handled explicitly, not implicitly




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/placement-plan/900000_GAME_OS_CANONICAL_PLACEMENT_PLAN.md
============================================================

# ============================================================
# GAME OS CANONICAL PLACEMENT PLAN
# ============================================================

status: draft-for-canonical-update
system: game-os
document_type: placement-plan
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PLACEMENT PRINCIPLES
# ============================================================

- root holds overview and index
- constitution holds top-level immutable principles
- architecture holds structural and boundary design
- model holds participation, Persona, reflection, and gambling units
- runtime holds executable runtime family documents
- flow holds lifecycle and dispatch flows
- policy holds permission, prohibition, safety, and reflection criteria
- gambling documents are grouped separately from general game structures
- Persona integration documents are split across architecture, model, and policy

# ============================================================
# 1. ROOT
# ============================================================

- 000_GAME_OS_INDEX.md
- 000_GAME_OS_OVERVIEW.md

# ============================================================
# 2. CONSTITUTION
# ============================================================

- 010.constitution/010000_GAME_OS_CONSTITUTION.md

# ============================================================
# 3. ARCHITECTURE
# ============================================================

## 020.architecture/110.persona-integration
- 0201100_GAME_OS_PERSONA_INTEGRATION_ARCHITECTURE.md

## 020.architecture/111.npc-persona
- 0201110_GAME_OS_NPC_PERSONA_ARCHITECTURE.md

## 020.architecture/112.gambling-runtime
- 0201120_GAME_OS_GAMBLING_RUNTIME_ARCHITECTURE.md

# ============================================================
# 4. MODEL
# ============================================================

## 030.model/110.player
- 0301100_GAME_OS_PLAYER_MODEL.md
- 0301101_GAME_PLAYER_PROFILE_MODEL.md

## 030.model/111.persona-linkage
- 0301110_GAME_PERSONA_CHARACTER_BINDING_MODEL.md

## 030.model/112.persona-state-and-reflection
- 0301120_GAME_PERSONA_STATE_MODEL.md
- 0301121_GAME_PERSONA_RELATION_MODEL.md
- 0301122_GAME_PERSONA_MEMORY_MARKER_MODEL.md
- 0301123_PERSONA_IMPACT_EVENT_MODEL.md
- 0301124_PERSONA_REFLECTION_CANDIDATE_MODEL.md
- 0301125_PERSONA_REFLECTION_DECISION_MODEL.md
- 0301126_PERSONA_REFLECTION_SYNC_RESULT_MODEL.md

## 030.model/113.gambling
- 0301130_GAMBLING_WAGER_MODEL.md
- 0301131_GAMBLING_ELIGIBILITY_RESULT_MODEL.md
- 0301132_GAME_OUTCOME_MODEL.md
- 0301133_GAME_SETTLEMENT_INSTRUCTION_MODEL.md
- 0301134_GAME_SETTLEMENT_RESULT_MODEL.md
- 0301135_GAME_REFUND_MODEL.md
- 0301136_GAME_REVERSAL_MODEL.md
- 0301137_GAMBLING_SAFETY_STATE_MODEL.md

# ============================================================
# 5. RUNTIME
# ============================================================

## 040.runtime/110.persona-enabled-runtime
- 0401100_GAME_OS_PERSONA_ENABLED_RUNTIME_OVERVIEW.md

## 040.runtime/111.gambling-runtime
- 0401110_GAME_OS_GAMBLING_RUNTIME_OVERVIEW.md

# ============================================================
# 6. FLOW
# ============================================================

## 050.flow/110.persona-reflection
- 0501100_GAME_TO_PERSONA_REFLECTION_FLOW.md

## 050.flow/111.gambling-settlement
- 0501110_GAMBLING_WAGER_TO_SETTLEMENT_FLOW.md

# ============================================================
# 7. POLICY
# ============================================================

## 080.policy/110.persona-reflection
- 0801100_GAME_OS_PERSONA_REFLECTION_POLICY.md

## 080.policy/111.national-currency-gambling
- 0801110_GAME_OS_NATIONAL_CURRENCY_WAGER_POLICY.md

# ============================================================
# 8. ROLE OF THIS PLAN
# ============================================================

This document is the canonical placement guide for the newly added
GameOS Persona integration and national-currency gambling domains.

It is intended to:
- preserve structural consistency
- avoid overlap across layers
- keep find-based inspection easy
- support later one-by-one document materialization




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/genre-expansion/900200_GAME_OS_GENRE_EXPANSION_PATCH.md
============================================================

# ============================================================
# GAME OS GENRE EXPANSION PATCH
# Action / Adventure / 2D Fighting / Survival Action
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: meta
domain: genre-expansion
document_type: additive-patch
owner: Boss
prepared_by: Zero

# ============================================================
# 0. PURPOSE
# ============================================================

This patch records the formal decision to expand the supported GameOS genre set.

Added genre families:
- Action Game
- Adventure Game
- 2D Fighting Game

Action subfamily clarification:
- Side-Scrolling Action
- Survival Action

Survival Action is not limited to horror.

# ============================================================
# 1. FINAL FORMAL GENRE DEFINITION
# ============================================================

GameOS officially supports the following genre families:

- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

Action Game includes:
- Side-Scrolling Action
- Survival Action

Adventure Game includes:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression

2D Fighting Game is treated as a rivalry-heavy Persona-capable battle genre.

Survival Action is not limited to horror and may include broader survival-oriented gameplay.

# ============================================================
# 2. GENRE INTERPRETATION
# ============================================================

## Action Game

Action Game includes at least the following formal subfamilies:

- Side-Scrolling Action
- Survival Action

### Side-Scrolling Action
Expected characteristics:
- side-scrolling stage progression
- movement and obstacle skill emphasis
- enemy and trap pacing
- stage-based support interaction

### Survival Action
Expected characteristics:
- resource pressure
- danger awareness
- exploration under survival constraints
- escape / endurance / survival judgment
- support / rescue significance
- repeated survival cooperation

Survival Action may include:
- horror survival
- non-horror survival
- post-disaster survival
- isolation survival
- environmental survival
- escape-oriented survival action

## Adventure Game

Adventure Game is treated as a story-capable, exploration-capable genre family.

Expected characteristics:
- exploration-heavy progression
- story-driven progression
- investigation-assisted progression
- clue discovery
- route and scene progression
- repeated character contact through discovery

## 2D Fighting Game

2D Fighting Game is treated as a formal battle genre inside GameOS.

Expected characteristics:
- one-on-one combat
- round-based combat
- match-based combat
- repeated duel structure
- rivalry-heavy meaning
- battle-opponent Persona usage

# ============================================================
# 3. CONSTITUTIONAL IMPACT
# ============================================================

The following constitutional principles remain unchanged:

- player is the participation subject
- Persona usage is optional
- game truth, persona truth, and wallet truth are separated
- local game values must not directly overwrite canonical Persona truth
- gambling remains a high-control domain
- auditability and safety remain mandatory

The genre expansion changes supported runtime scope, but does not change the core
separation principles of GameOS.

# ============================================================
# 4. RUNTIME IMPACT
# ============================================================

The supported runtime families should now include:

- visual novel runtime
- dating simulation runtime
- rpg runtime
- puzzle runtime
- strategy runtime
- action game runtime
- adventure game runtime
- 2d fighting runtime

Action game runtime includes:
- side-scrolling action runtime
- survival action runtime

Adventure game runtime includes:
- exploration progression runtime
- investigation-assisted runtime
- story-linked traversal runtime

2D fighting runtime includes:
- round lifecycle
- match lifecycle
- recurring opponent handling
- rivalry-heavy opponent structures

# ============================================================
# 5. PERSONA INTEGRATION IMPACT
# ============================================================

The expanded genre set increases Persona usage coverage.

## Action Game Persona usage
Persona may be used for:
- player presentation
- ally / partner presentation
- enemy / boss presentation
- support communication
- rescue / survival significance

## Adventure Game Persona usage
Persona may be used for:
- guide characters
- witnesses
- investigation partners
- clue-linked characters
- story-driving companions

## 2D Fighting Game Persona usage
Persona may be used for:
- battle opponent identity
- recurring rival identity
- trainer / guide identity
- tournament host identity
- symbolic boss fighter identity

# ============================================================
# 6. NPC PERSONA IMPACT
# ============================================================

The expanded genre set requires additional NPC Persona role coverage.

Formal additional NPC role coverage includes:

## Action Game
- stage rival
- support caller
- boss opponent
- survival companion
- route guide

## Adventure Game
- witness
- guide
- investigation partner
- route trigger character
- story informant

## 2D Fighting Game
- rival fighter
- recurring opponent
- trainer
- tournament host
- symbolic boss fighter

# ============================================================
# 7. REFLECTION POLICY IMPACT
# ============================================================

## Action Game
Candidate-friendly meanings:
- repeated rescue significance
- repeated survival cooperation
- stable support under danger
- trust reinforced through survival pressure

Candidate-hostile meanings:
- temporary damage state
- temporary fear spike
- stage-only resource count
- one-scene panic state

## Adventure Game
Candidate-friendly meanings:
- repeated discovery-linked trust
- meaningful shared investigation memory
- long-term guide familiarity
- clue-linked turning-point memory

Candidate-hostile meanings:
- branch-only clue flags
- scene-only completion flags
- implementation-only discovery counters

## 2D Fighting Game
Candidate-friendly meanings:
- repeated duel rivalry
- stable respect-in-rivalry
- persistent hostility pattern
- symbolic defeat / victory memory significance
- opponent-specific reaction tendency

Candidate-hostile meanings:
- combo counters
- frame / tuning values
- one-round aggression spikes
- bracket implementation flags

# ============================================================
# 8. MODEL IMPACT
# ============================================================

The expanded genre set increases the importance of:

- survival-oriented support relation
- rescue memory markers
- investigation memory markers
- clue-linked familiarity
- repeated duel rivalry markers
- respect / hostility split for fighting games
- non-horror survival meaning support

No change is made to the core model separation rules:

- local state remains local truth
- relation remains distinct from state
- memory marker remains distinct from raw event log
- impact event remains distinct from reflection candidate
- candidate remains distinct from canonical acceptance

# ============================================================
# 9. REQUIRED FOLLOW-UP CHAPTERS
# ============================================================

This patch implies later updates to the following canonical areas:

- overview genre definition
- constitution genre scope wording
- runtime family definition
- Persona integration genre handling
- NPC Persona architecture genre handling
- reflection policy genre-specific criteria

# ============================================================
# 10. DECISION
# ============================================================

Decision fixed by this patch:

- Action Game is officially supported
- Adventure Game is officially supported
- 2D Fighting Game is officially supported
- Survival Action replaces any narrower survival-horror-only wording
- Survival Action is not limited to horror




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/genre-expansion/900201_GAME_OS_GENRE_EXPANSION_APPLY_REPORT_20260410_122059.md
============================================================

# ============================================================
# GAME OS GENRE EXPANSION APPLY REPORT
# ============================================================

status: applied
system: game-os
owner: Boss
prepared_by: Zero
timestamp: 20260410_122059

updated_files:
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/000_GAME_OS_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/020.architecture/112.gambling-runtime/0201120_GAME_OS_GAMBLING_RUNTIME_ARCHITECTURE.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/000_RUNTIME_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/040.runtime/110.persona-enabled-runtime/0401100_GAME_OS_PERSONA_ENABLED_RUNTIME_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/110.persona-reflection/0801100_GAME_OS_PERSONA_REFLECTION_POLICY.md

backup_dir:
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/genre-expansion-followup-backup

applied_decisions:
- Action Game added
- Adventure Game added
- 2D Fighting Game added
- Survival Action replaces narrower survival-horror-only wording




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/genre-expansion/900202_GAME_OS_GENRE_EXPANDED_REBUILD_REPORT_20260410_122933.md
============================================================

# ============================================================
# GAME OS GENRE EXPANDED REBUILD REPORT
# ============================================================

status: rebuilt-and-promoted
system: game-os
owner: Boss
prepared_by: Zero
timestamp: 20260410_122933

rebuilt_source:
/data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v4_GENRE_EXPANDED.md

promoted_destination:
/data/data/com.termux/files/home/01.civilization-system/05.game-os/GAME_OS_INTEGRATED_CANONICAL.md

genre_scope_confirmed:
- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

action_subfamilies:
- Side-Scrolling Action
- Survival Action

notes:
- Survival Action is not limited to horror
- runtime overview updated
- Persona-enabled runtime overview updated
- reflection policy updated




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/multilingual-multicurrency/900300_GAME_OS_MULTILINGUAL_MULTICURRENCY_NOTE.md
============================================================

# ============================================================
# GAME OS MULTILINGUAL / MULTI-CURRENCY NOTE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: meta
domain: multilingual-multicurrency
document_type: additive-note
owner: Boss
prepared_by: Zero

formal_statement:
GameOS formally assumes multilingual support and multi-currency support as
first-class design premises.

multilingual_statement:
- UI text
- explanation text
- notification text
- display labels
- user-facing messages
- report and document display text

must be managed in a multilingual-capable structure instead of a single-language
fixed implementation.

multi_currency_statement:
- prices
- wager-related display values
- settlement-related values
- aggregate monetary values
- converted user-facing display values

must be managed as currency-aware structures instead of amount-only values.

design_principles:
- multilingual support is handled as a common-component-ready structure
- multi-currency support must include currency-aware amount handling
- source monetary truth and converted display values must remain separated
- these are formal design premises, not later optional add-ons




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/multilingual-multicurrency/900301_GAME_OS_MULTILINGUAL_MULTICURRENCY_APPLY_REPORT_20260411_102918.md
============================================================

# ============================================================
# GAME OS MULTILINGUAL / MULTI-CURRENCY APPLY REPORT
# ============================================================

status: applied
system: game-os
owner: Boss
prepared_by: Zero
timestamp: 20260411_102918

updated_files:
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/000_GAME_OS_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/010.constitution/010000_GAME_OS_CONSTITUTION.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/080.policy/000_POLICY_OVERVIEW.md
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/closure/000_GAME_OS_CLOSURE_REPORT.md

new_note_file:
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/multilingual-multicurrency/900300_GAME_OS_MULTILINGUAL_MULTICURRENCY_NOTE.md

backup_dir:
- /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/multilingual-multicurrency-backup

applied_decisions:
- multilingual support explicitly recorded
- multi-currency support explicitly recorded
- overview updated
- constitution updated
- policy overview updated
- closure report updated




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/platform-i18n-currency/900400_GAME_OS_PLATFORM_I18N_CURRENCY_NOTE.md
============================================================

# ============================================================
# GAME OS PLATFORM / I18N / CURRENCY NOTE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: meta
domain: platform-i18n-currency
document_type: additive-note
owner: Boss
prepared_by: Zero

formal_statement:
GameOS formally assumes multilingual support, multi-currency support,
and multi-device support as first-class design premises.

multilingual_statement:
- UI text
- explanation text
- notification text
- display labels
- user-facing messages
- report and document display text

must be managed in a multilingual-capable structure instead of a single-language
fixed implementation.

multi_currency_statement:
- prices
- wager-related display values
- settlement-related values
- aggregate monetary values
- converted user-facing display values

must be managed as currency-aware structures instead of amount-only values.

multi_device_statement:
GameOS must be designed for:
- iPhone
- Android
- PC
- tablet devices

and must not assume a single device form factor as the only runtime target.

design_principles:
- multilingual support is handled as a common-component-ready structure
- multi-currency support must include currency-aware amount handling
- source monetary truth and converted display values must remain separated
- multi-device support must preserve cross-device operability
- these are formal design premises, not later optional add-ons




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/platform-i18n-currency/900401_GAME_OS_PLATFORM_I18N_CURRENCY_REBUILD_REPORT_20260411_113333.md
============================================================

# ============================================================
# GAME OS PLATFORM / I18N / CURRENCY REBUILD REPORT
# ============================================================

status: rebuilt-and-promoted
system: game-os
owner: Boss
prepared_by: Zero
timestamp: 20260411_113333

rebuilt_source:
/data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v6_PLATFORM_I18N_CURRENCY.md

promoted_destination:
/data/data/com.termux/files/home/01.civilization-system/05.game-os/GAME_OS_INTEGRATED_CANONICAL.md

confirmed_additions:
- multilingual support recorded in integrated canonical
- multi-currency support recorded in integrated canonical
- multi-device support recorded in integrated canonical
- iPhone support recorded
- Android support recorded
- PC support recorded
- tablet support recorded




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/closure/000_GAME_OS_CLOSURE_REPORT.md
============================================================

# ============================================================
# GAME OS CLOSURE REPORT
# ============================================================

status: canonical-closed
system: game-os
owner: Boss
prepared_by: Zero
closed_at: 2026-04-10 12:33:22

# ============================================================
# 0. CLOSURE RESULT
# ============================================================

result: PASS

closure_summary:
- GameOS canonical layer system has been unified to the 3-digit structure
- legacy 2-digit layers have been removed from root and quarantined under 900.meta
- root canonical files are present
- layer root index / overview files are present
- Persona integration domain has been added to canonical structure
- national-currency gambling domain has been added to canonical structure
- integrated canonical has been rebuilt and promoted
- official genre families have been expanded after closure stabilization
- multilingual support has been explicitly recorded as a formal design premise
- multi-currency support has been explicitly recorded as a formal design premise
- multi-device support has been explicitly recorded as a formal design premise

# ============================================================
# 1. ROOT CANONICAL FILES
# ============================================================

- 000_GAME_OS_INDEX.md
- 000_GAME_OS_OVERVIEW.md
- GAME_OS_INTEGRATED_CANONICAL.md

# ============================================================
# 2. CANONICAL ROOT LAYERS
# ============================================================

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 070.operations
- 080.policy
- 090.interface
- 120.implementation
- 130.development
- 900.meta

# ============================================================
# 3. LEGACY LAYER HANDLING
# ============================================================

legacy_root_layers_removed_from_root:
- 10.constitution
- 20.architecture
- 30.runtime
- 40.implementation
- 50.operations
- 60.development
- 90.meta

legacy_quarantine_location:
- 900.meta/legacy-layer-quarantine-*

# ============================================================
# 4. OFFICIAL GENRE FAMILIES
# ============================================================

official_genre_families:
- Visual Novel
- Dating Simulation
- RPG
- Puzzle
- Strategy
- Action Game
- Adventure Game
- 2D Fighting Game

action_subfamilies:
- Side-Scrolling Action
- Survival Action

notes:
- Survival Action is not limited to horror
- Adventure Game includes exploration-heavy, story-driven, and investigation-assisted progression
- 2D Fighting Game is treated as a rivalry-heavy Persona-capable battle genre

# ============================================================
# 5. FORMAL DESIGN PREMISES
# ============================================================

formal_design_premises:
- multilingual support
- multi-currency support
- multi-device support

multilingual_scope_examples:
- UI text
- notifications
- explanations
- display labels
- user-facing messages

multi_currency_scope_examples:
- prices
- wager-related monetary display
- settlement-related values
- aggregate display values
- converted display values

multi_device_scope_examples:
- iPhone
- Android
- PC
- tablet devices

# ============================================================
# 6. MAJOR CANONICAL DOMAINS
# ============================================================

architecture:
- Persona integration
- NPC Persona
- Gambling runtime

model:
- player
- player profile
- Persona character binding
- game Persona state
- game Persona relation
- game Persona memory marker
- Persona impact event
- Persona reflection candidate
- Persona reflection decision
- Persona reflection sync result
- gambling wager
- gambling eligibility result
- game outcome
- settlement instruction
- settlement result
- refund
- reversal
- gambling safety state

policy:
- Persona reflection policy
- national currency wager policy

flow:
- game to Persona reflection flow
- gambling wager to settlement flow

runtime:
- Persona-enabled runtime
- gambling runtime

# ============================================================
# 7. INTEGRATED CANONICAL STATUS
# ============================================================

promoted_canonical:
- GAME_OS_INTEGRATED_CANONICAL.md

rebuild_artifacts:
- 900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT.md
- 900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v2.md
- 900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v3_CANONICAL_ONLY.md
- 900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v4_GENRE_EXPANDED.md
- 900.meta/integrated-rebuild/00_GAME_OS_INTEGRATED_REBUILT_v5_I18N_CURRENCY.md

backup_artifacts:
- 900.meta/canonical-promotion-backup/*
- 900.meta/closure/backup/*

# ============================================================
# 8. STRUCTURAL JUDGMENT
# ============================================================

judgment:
- canonical root structure: OK
- root required files: OK
- 3-digit canonical layers: OK
- legacy 2-digit root layers: quarantined
- layer root index / overview coverage: OK
- key Persona domains: OK
- key gambling domains: OK
- integrated canonical promotion: OK
- genre expansion integration: OK
- multilingual premise integration: OK
- multi-currency premise integration: OK
- multi-device premise integration: OK

# ============================================================
# 9. OPTIONAL FOLLOW-UP ONLY
# ============================================================

optional_follow_up:
- wording cleanup
- deeper model split if needed
- 130.development positioning review if needed
- future integrated rebuild after additional GameOS expansion
- PersonaOS reflection chapter implementation
- CivilizationOS gambling governance chapter implementation

# ============================================================
# 10. CLOSURE DECLARATION
# ============================================================

GameOS is hereby treated as canonically closed for this phase.

The current canonical basis is:
- 3-digit layer structure
- promoted integrated canonical
- quarantined legacy 2-digit root layers
- Persona integration included in canonical scope
- national-currency gambling included in canonical scope
- expanded official genre families included in canonical scope
- multilingual support included as a formal design premise
- multi-currency support included as a formal design premise
- multi-device support included as a formal design premise




============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/closure/000_GAME_OS_CLOSURE_REPORT_GENRE_UPDATE_20260410_123322.md
============================================================

# ============================================================
# GAME OS CLOSURE REPORT GENRE UPDATE
# ============================================================

status: updated
system: game-os
owner: Boss
prepared_by: Zero
timestamp: 20260410_123322

updated_target:
/data/data/com.termux/files/home/01.civilization-system/05.game-os/900.meta/closure/000_GAME_OS_CLOSURE_REPORT.md

changes:
- added official genre families section
- recorded Action Game
- recorded Adventure Game
- recorded 2D Fighting Game
- recorded Side-Scrolling Action
- recorded Survival Action
- recorded that Survival Action is not limited to horror
- added v4 integrated rebuild artifact reference

