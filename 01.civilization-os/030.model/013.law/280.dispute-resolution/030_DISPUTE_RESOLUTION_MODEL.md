# ============================================================
# DISPUTE RESOLUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for dispute resolution.

# 2. CORE ENTITIES

- dispute_case
- dispute_party
- dispute_procedure
- dispute_decision

# 3. STATE MODEL

dispute_case:
- dispute_case_id
- case_code
- dispute_scope
- case_status
- opened_at

dispute_party:
- dispute_party_id
- dispute_case_id
- party_scope
- party_role_code
- party_status

dispute_procedure:
- dispute_procedure_id
- dispute_case_id
- procedure_type_code
- procedure_stage_code
- procedure_status

dispute_decision:
- dispute_decision_id
- dispute_case_id
- decision_code
- decision_reason
- decision_status

# 4. INTEGRITY RULES

- dispute party and procedure must belong to one case
- decision must reference one dispute case
- dispute scope must be explicit
- hidden case closure without decision state is prohibited

