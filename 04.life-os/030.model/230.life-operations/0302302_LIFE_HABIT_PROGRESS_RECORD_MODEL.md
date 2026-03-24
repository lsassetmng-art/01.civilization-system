# ============================================================
# LIFE HABIT PROGRESS RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life habit progress record model.

model_type:
- habit progress truth model

primary_key:
- life_habit_progress_record_id

natural_key:
- progress_scope
- progress_ref
- progress_window

fields:
- life_habit_progress_record_id
- progress_scope
- progress_ref
- progress_window
- progress_status
- owner_scope
- habit_summary
- progress_value
- source_state_version
- recorded_at
- created_at
- updated_at

progress_status_enum:
- current
- revised
- completed
- invalidated
- archived

truth_boundary:
Life habit progress truth belongs to LifeOS life-operations domain.
