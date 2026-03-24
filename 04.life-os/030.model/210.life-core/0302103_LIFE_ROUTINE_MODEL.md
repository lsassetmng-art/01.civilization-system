# ============================================================
# LIFE ROUTINE MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life routine model.

model_type:
- routine truth model

primary_key:
- life_routine_id

natural_key:
- routine_scope
- routine_code
- routine_version

fields:
- life_routine_id
- routine_scope
- routine_code
- routine_version
- routine_status
- owner_scope
- routine_summary
- effective_from
- effective_until
- created_at
- updated_at

routine_status_enum:
- draft
- approved
- active
- paused
- archived

contract_version_rule:
Life routines must expose explicit version semantics.

truth_boundary:
Life routine truth belongs to LifeOS life-core domain.
