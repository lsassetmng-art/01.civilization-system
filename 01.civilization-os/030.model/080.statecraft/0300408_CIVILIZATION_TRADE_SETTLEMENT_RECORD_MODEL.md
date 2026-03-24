# ============================================================
# CIVILIZATION TRADE SETTLEMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical trade settlement record model.

model_type:
- settlement truth model

primary_key:
- trade_settlement_record_id

natural_key:
- settlement_ref
- source_nation_id
- target_nation_id

fields:
- trade_settlement_record_id
- settlement_ref
- source_nation_id
- target_nation_id
- settlement_status
- settlement_amount
- settlement_currency_code
- source_event_id
- source_state_version
- correlation_id
- settled_at
- created_at
- updated_at

settlement_status_enum:
- pending
- settled
- failed
- reversed
- cancelled

idempotency_rule:
settlement_ref + source_nation_id + target_nation_id must suppress duplicate effective settlement.

truth_boundary:
Trade settlement record truth belongs to CivilizationOS governed settlement domain.
