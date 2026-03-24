# ============================================================
# LIFE SCHEDULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life schedule model.

model_type:
- schedule truth model

primary_key:
- life_schedule_id

natural_key:
- schedule_scope
- schedule_ref
- schedule_window

fields:
- life_schedule_id
- schedule_scope
- schedule_ref
- schedule_window
- schedule_status
- owner_scope
- schedule_summary
- source_state_version
- scheduled_at
- created_at
- updated_at

schedule_status_enum:
- planned
- active
- completed
- skipped
- archived

truth_boundary:
Life schedule truth belongs to LifeOS life-core domain.
