# ============================================================
# PERSONA SYNC FAILURE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sync failure record model.

model_type:
- sync failure truth model

primary_key:
- persona_sync_failure_record_id

natural_key:
- failure_scope
- failure_ref
- correlation_id

fields:
- persona_sync_failure_record_id
- failure_scope
- failure_ref
- correlation_id
- failure_status
- failure_type
- source_contract_code
- failure_summary
- source_state_version
- occurred_at
- created_at
- updated_at

failure_status_enum:
- active
- retriable
- dead_lettered
- restored
- archived

truth_boundary:
Sync failure truth belongs to PersonaOS external-sync domain.
