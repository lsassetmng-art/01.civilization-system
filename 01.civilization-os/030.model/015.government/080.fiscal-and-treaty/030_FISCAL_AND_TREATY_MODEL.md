# ============================================================
# FISCAL AND TREATY
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for fiscal and treaty structures.

# 2. CORE ENTITIES

- fiscal_plan
- fiscal_commitment
- treaty_record
- treaty_party_state

# 3. STATE MODEL

fiscal_plan:
- fiscal_plan_id
- government_unit_id
- fiscal_cycle_code
- plan_status
- published_at

fiscal_commitment:
- fiscal_commitment_id
- fiscal_plan_id
- commitment_scope
- commitment_value
- commitment_status

treaty_record:
- treaty_record_id
- treaty_code
- treaty_scope
- treaty_status
- signed_at

treaty_party_state:
- treaty_party_state_id
- treaty_record_id
- party_scope
- party_status
- ratified_at

# 4. INTEGRITY RULES

- fiscal commitment must belong to one fiscal plan
- treaty party state must belong to one treaty
- fiscal/treaty scope must be explicit
- hidden treaty mutation is prohibited

