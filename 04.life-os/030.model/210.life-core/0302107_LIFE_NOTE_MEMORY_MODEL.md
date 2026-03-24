# ============================================================
# LIFE NOTE MEMORY MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life note and memory model.

model_type:
- note memory truth model

primary_key:
- life_note_memory_id

natural_key:
- memory_scope
- memory_ref
- correlation_id

fields:
- life_note_memory_id
- memory_scope
- memory_ref
- correlation_id
- memory_status
- owner_scope
- memory_summary
- source_state_version
- recorded_at
- created_at
- updated_at

memory_status_enum:
- recorded
- revised
- invalidated
- archived

truth_boundary:
Life note memory truth belongs to LifeOS life-core domain.
