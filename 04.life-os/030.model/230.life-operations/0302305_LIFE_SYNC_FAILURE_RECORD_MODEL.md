# ============================================================
# LIFE SYNC FAILURE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life sync failure record model.

model_type:
- sync failure truth model

primary_key:
- life_sync_failure_record_id

natural_key:
- failure_scope
- failure_ref
- correlation_id

fields:
- life_sync_failure_record_id
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
Life sync failure truth belongs to LifeOS life-operations domain.
