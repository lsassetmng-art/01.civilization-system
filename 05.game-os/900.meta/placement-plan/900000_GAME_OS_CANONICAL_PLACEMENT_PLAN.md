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
