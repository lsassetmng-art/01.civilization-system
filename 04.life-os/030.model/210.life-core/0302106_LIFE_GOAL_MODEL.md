# ============================================================
# LIFE GOAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life goal model.

model_type:
- goal truth model

primary_key:
- life_goal_id

natural_key:
- goal_scope
- goal_code
- goal_version

fields:
- life_goal_id
- goal_scope
- goal_code
- goal_version
- goal_status
- owner_scope
- goal_summary
- effective_from
- effective_until
- created_at
- updated_at

goal_status_enum:
- draft
- approved
- active
- completed
- archived

contract_version_rule:
Life goals must expose explicit version semantics.

truth_boundary:
Life goal truth belongs to LifeOS life-core domain.
