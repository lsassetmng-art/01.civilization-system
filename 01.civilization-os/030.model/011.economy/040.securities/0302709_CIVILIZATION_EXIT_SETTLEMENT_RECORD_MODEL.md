# ============================================================
# CIVILIZATION EXIT SETTLEMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical exit settlement record model.

model_type:
- terminal settlement truth model

primary_key:
- exit_settlement_record_id

natural_key:
- settlement_scope
- settlement_ref
- source_liquidation_ref

fields:
- exit_settlement_record_id
- settlement_scope
- settlement_ref
- source_liquidation_ref
- settlement_status
- payable_summary
- settled_value
- source_state_version
- created_at
- updated_at

settlement_status_enum:
- pending
- active
- settled
- failed
- reversed
- archived

idempotency_rule:
settlement_scope + settlement_ref must suppress duplicate effective exit settlement.

truth_boundary:
Exit-settlement truth belongs to CivilizationOS capital-markets domain.
