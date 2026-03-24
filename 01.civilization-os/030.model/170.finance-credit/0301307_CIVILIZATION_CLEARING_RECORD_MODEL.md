# ============================================================
# CIVILIZATION CLEARING RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical clearing record model.

model_type:
- settlement processing model

primary_key:
- clearing_record_id

natural_key:
- clearing_scope
- clearing_ref

fields:
- clearing_record_id
- clearing_scope
- clearing_ref
- clearing_status
- source_transaction_ref
- clearing_value
- currency_code
- source_state_version
- correlation_id
- cleared_at
- created_at
- updated_at

clearing_status_enum:
- pending
- cleared
- failed
- reversed
- cancelled
- archived

idempotency_rule:
clearing_scope + clearing_ref must suppress duplicate effective clearing.

truth_boundary:
Clearing truth belongs to CivilizationOS finance-credit domain.
