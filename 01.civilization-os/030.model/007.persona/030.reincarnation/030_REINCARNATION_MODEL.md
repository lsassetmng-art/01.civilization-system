# ============================================================
# REINCARNATION
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona reincarnation transitions.

# 2. CORE ENTITIES

- reincarnation_record
- reincarnation_source
- reincarnation_target
- continuity_trace

# 3. STATE MODEL

reincarnation_record:
- reincarnation_id
- source_persona_id
- target_persona_id
- reincarnation_type_code
- reincarnation_status

reincarnation_source:
- source_id
- reincarnation_id
- source_state_code
- source_snapshot_ref
- source_status

reincarnation_target:
- target_id
- reincarnation_id
- target_state_code
- target_snapshot_ref
- target_status

continuity_trace:
- trace_id
- reincarnation_id
- continuity_type_code
- continuity_value
- trace_status

# 4. INTEGRITY RULES

- one reincarnation record binds one source and one target
- continuity trace must reference one reincarnation record
- source and target identities must be explicit
- hidden continuity without record is prohibited

