


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

summary:
- player and Persona are separated
- Persona may be used by players or NPC characters
- game-local Persona state is separated from PersonaOS canonical state
- GameOS sends reflection candidates through an event-based boundary




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

summary:
- NPCs may use Persona
- romance target, battle opponent, companion, and navigator are supported
- title-local NPC Persona and canonical-linked NPC Persona are separated
- reflection is candidate-based, not direct canonical overwrite




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

summary:
- national-currency gambling is a high-control runtime
- wager, outcome, settlement, and wallet truth are separated
- eligibility, safety, dispute, and audit are mandatory




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

summary:
Persona-enabled runtime supports optional Persona usage by players and NPCs,
while preserving player-first participation rules and separation between local
game truth and PersonaOS canonical truth.




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

summary:
Gambling runtime is a high-control runtime family with eligibility gates,
wager lock, outcome finalization, settlement boundary dispatch, dispute handling,
safety control, and strong auditability.




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

flow:
1. gameplay interaction occurs
2. local state updates
3. relation and memory markers update
4. impact event is extracted
5. reflection candidate is generated
6. candidate is dispatched
7. decision is recorded
8. sync result is recorded

principles:
- direct overwrite is forbidden
- title-local raw values must be transformed
- decision and sync are separate




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

flow:
1. player initiates wager intent
2. eligibility result is evaluated
3. wallet lock is requested
4. wager becomes active after lock confirmation
5. match or round proceeds
6. outcome is provisionally produced
7. outcome is finalized or held
8. settlement instruction is issued
9. settlement result is recorded
10. refund or reversal path is used if needed

principles:
- lock confirmation is required before active wager
- provisional outcome is not enough for settlement
- outcome truth and finance truth are separated




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

