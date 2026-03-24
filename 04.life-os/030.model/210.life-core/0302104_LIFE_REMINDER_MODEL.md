# ============================================================
# LIFE REMINDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life reminder model.

model_type:
- reminder truth model

primary_key:
- life_reminder_id

natural_key:
- reminder_scope
- reminder_ref
- reminder_window

fields:
- life_reminder_id
- reminder_scope
- reminder_ref
- reminder_window
- reminder_status
- owner_scope
- reminder_summary
- source_state_version
- reminded_at
- created_at
- updated_at

reminder_status_enum:
- planned
- active
- sent
- expired
- archived

truth_boundary:
Life reminder truth belongs to LifeOS life-core domain.
