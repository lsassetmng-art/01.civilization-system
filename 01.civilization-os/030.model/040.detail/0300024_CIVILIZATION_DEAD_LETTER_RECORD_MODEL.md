# ============================================================
# CIVILIZATION DEAD LETTER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dead-letter record model.

model_type:
- failure trace model

primary_key:
- dead_letter_record_id

natural_key:
- failed_unit_type
- failed_unit_id

fields:
- dead_letter_record_id
- failed_unit_type
- failed_unit_id
- source_domain
- target_domain
- terminal_failure_class
- terminal_failure_reason
- payload_hash
- correlation_id
- causation_id
- dead_lettered_at
- retained_until
- created_at

terminal_failure_class_enum:
- incompatible_contract
- unauthorized_target
- invalid_payload
- retry_budget_exhausted
- unrecoverable_execution_failure

truth_boundary:
Dead-letter records are failure trace state.
They must not silently re-enter execution without explicit replay handling.
