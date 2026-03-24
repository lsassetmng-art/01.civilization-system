# ============================================================
# STREAMING SHARED DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared dead letter record model for StreamingOS.

model_type:
- terminal failure truth model

primary_key:
- streaming_shared_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- streaming_shared_dead_letter_record_id
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
Streaming shared dead letter truth belongs to StreamingOS cross-cutting-completion domain.
