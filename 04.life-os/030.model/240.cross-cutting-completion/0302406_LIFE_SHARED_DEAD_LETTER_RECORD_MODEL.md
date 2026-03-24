# ============================================================
# LIFE SHARED DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared dead letter record model for LifeOS.

model_type:
- terminal failure truth model

primary_key:
- life_shared_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- life_shared_dead_letter_record_id
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
Life shared dead letter truth belongs to LifeOS cross-cutting-completion domain.
