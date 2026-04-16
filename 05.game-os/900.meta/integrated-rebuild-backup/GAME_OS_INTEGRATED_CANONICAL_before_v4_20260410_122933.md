


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
# 2. CORE PRINCIPLES
# ============================================================

- player is the participation subject
- Persona usage is optional
- NPCs may use Persona
- game truth and persona truth are separated
- local game state and canonical Persona state are separated
- gambling using national currency is a high-control domain
- auditability and safety are mandatory

# ============================================================
# 3. MAJOR DOMAINS
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
# 3. GAMBLING LIFECYCLE
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
# 4. MANDATORY CONTROLS
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
# 5. PERSONA LIMITS
# ============================================================

Persona may be used for presentation, dealer roles, host roles, and guidance,
but must not replace gambling eligibility, wallet truth, or safety truth.

# ============================================================
# 6. CONCLUSION
# ============================================================

Gambling runtime is not ordinary gameplay runtime with money attached.
It is a separate high-control runtime that integrates with finance, safety,
audit, and dispute handling.




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

principles:
- runtime behavior must follow architecture boundaries
- gambling runtime must remain separated from ordinary runtime
- runtime must not own canonical Persona truth or wallet truth




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
# 2. SUPPORTED USES
# ============================================================

- player visual expression
- player conversation expression
- NPC romance targets
- NPC battle opponents
- NPC companions
- navigators and service characters

# ============================================================
# 3. RUNTIME PRINCIPLES
# ============================================================

- player remains the participation subject
- Persona usage is optional
- runtime uses game-local Persona state
- runtime must not treat local state as canonical Persona truth
- reflection is handled through later model/flow layers

# ============================================================
# 4. MAJOR RUNTIME INPUTS
# ============================================================

- player
- player profile
- Persona character binding
- game Persona state
- game Persona relation
- memory markers
- title-specific runtime rules

# ============================================================
# 5. MAJOR RUNTIME OUTPUTS
# ============================================================

- gameplay state transitions
- relation updates
- memory marker creation
- impact event extraction inputs
- reflection flow inputs

# ============================================================
# 6. CONCLUSION
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
The policy layer defines what may be reflected into PersonaOS and how
national-currency gambling must be controlled.

principles:
- only meaningful continuous changes may become reflection proposals
- title-local convenience values must not leak into canonical truth
- national-currency gambling requires safety, audit, and dispute control




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
- only continuous and meaningful changes may become candidates
- temporary values and title-local convenience flags must not be reflected
- transformed adoption is allowed
- auditability is mandatory




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

