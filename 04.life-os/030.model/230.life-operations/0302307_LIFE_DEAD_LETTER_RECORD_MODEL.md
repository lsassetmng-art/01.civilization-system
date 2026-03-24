# ============================================================
# LIFE DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life dead letter record model.

model_type:
- terminal failure truth model

primary_key:
- life_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- life_dead_letter_record_id
- dead_letter_scope
- dead_letter_ref
- correlation_id
- dead_letter_status
- source_failure_ref
- dead_letter_summary
- source_state_version
- recorded_at
- created_at
- updated_at

dead_letter_status_enum:
- quarantined
- restored
- invalidated
- archived

truth_boundary:
Life dead letter truth belongs to LifeOS life-operations domain.
