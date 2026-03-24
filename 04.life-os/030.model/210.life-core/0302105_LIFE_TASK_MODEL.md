# ============================================================
# LIFE TASK MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life task model.

model_type:
- task truth model

primary_key:
- life_task_id

natural_key:
- task_scope
- task_ref
- correlation_id

fields:
- life_task_id
- task_scope
- task_ref
- correlation_id
- task_status
- owner_scope
- task_summary
- source_state_version
- due_at
- created_at
- updated_at

task_status_enum:
- created
- active
- completed
- skipped
- archived

truth_boundary:
Life task truth belongs to LifeOS life-core domain.
