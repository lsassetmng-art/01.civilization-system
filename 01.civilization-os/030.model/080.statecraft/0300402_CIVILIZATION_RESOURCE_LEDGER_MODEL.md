# ============================================================
# CIVILIZATION RESOURCE LEDGER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical resource ledger model.

model_type:
- ledger truth model

primary_key:
- resource_ledger_entry_id

natural_key:
- nation_id
- resource_code
- ledger_ref

fields:
- resource_ledger_entry_id
- nation_id
- resource_code
- ledger_ref
- entry_type
- quantity_delta
- balance_after
- source_event_id
- source_state_version
- correlation_id
- occurred_at
- created_at

entry_type_enum:
- production_in
- trade_in
- trade_out
- consumption_out
- adjustment
- sanction_hold

truth_boundary:
Resource ledger is canonical transactional truth for governed resource movement.

idempotency_rule:
nation_id + resource_code + ledger_ref must suppress duplicate effective ledger posting.
