# ============================================================
# CIVILIZATION GATEWAY CONSUME RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical gateway consume record model.

model_type:
- boundary consume truth model

primary_key:
- gateway_consume_record_id

natural_key:
- consume_scope
- consume_ref

fields:
- gateway_consume_record_id
- consume_scope
- consume_ref
- consume_status
- source_interface_code
- payload_hash
- contract_version
- source_state_version
- correlation_id
- consumed_at
- created_at
- updated_at

consume_status_enum:
- pending
- consumed
- failed
- ignored_duplicate
- cancelled
- archived

idempotency_rule:
consume_scope + consume_ref must suppress duplicate effective gateway consume.

truth_boundary:
Gateway-consume truth belongs to CivilizationOS interface-governance domain.
