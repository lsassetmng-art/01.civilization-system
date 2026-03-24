# ============================================================
# CIVILIZATION GATEWAY DISPATCH RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical gateway dispatch record model.

model_type:
- boundary dispatch truth model

primary_key:
- gateway_dispatch_record_id

natural_key:
- dispatch_scope
- dispatch_ref

fields:
- gateway_dispatch_record_id
- dispatch_scope
- dispatch_ref
- dispatch_status
- target_interface_code
- payload_hash
- contract_version
- source_state_version
- correlation_id
- dispatched_at
- created_at
- updated_at

dispatch_status_enum:
- pending
- dispatched
- failed
- reversed
- cancelled
- archived

idempotency_rule:
dispatch_scope + dispatch_ref must suppress duplicate effective gateway dispatch.

truth_boundary:
Gateway-dispatch truth belongs to CivilizationOS interface-governance domain.
