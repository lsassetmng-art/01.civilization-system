# ============================================================
# BUSINESS PERSONA USAGE RESULT SYNC MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical business persona usage result sync model.

model_type:
- usage result truth model

primary_key:
- business_persona_usage_result_sync_id

natural_key:
- sync_scope
- sync_ref
- correlation_id

fields:
- business_persona_usage_result_sync_id
- sync_scope
- sync_ref
- correlation_id
- sync_status
- binding_code
- result_summary
- source_contract_code
- source_state_version
- synced_at
- created_at
- updated_at

sync_status_enum:
- pending
- consumed
- failed
- dead_lettered
- archived

idempotency_rule:
sync_scope + sync_ref must suppress duplicate effective usage result sync.

truth_boundary:
Business persona usage result truth belongs to BusinessOS persona-integration domain.
