# ============================================================
# BUSINESS SHARED DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical shared dead letter record model for BusinessOS.

model_type:
- terminal failure truth model

primary_key:
- business_shared_dead_letter_record_id

natural_key:
- dead_letter_scope
- dead_letter_ref
- correlation_id

fields:
- business_shared_dead_letter_record_id
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
Business shared dead letter truth belongs to BusinessOS cross-cutting-completion domain.
