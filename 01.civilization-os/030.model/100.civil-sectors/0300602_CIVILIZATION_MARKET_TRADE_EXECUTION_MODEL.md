# ============================================================
# CIVILIZATION MARKET TRADE EXECUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical market trade execution model.

model_type:
- market settlement truth model

primary_key:
- market_trade_execution_id

natural_key:
- execution_ref
- buy_order_ref
- sell_order_ref

fields:
- market_trade_execution_id
- execution_ref
- buy_order_ref
- sell_order_ref
- execution_status
- asset_code
- executed_quantity
- executed_price
- source_state_version
- correlation_id
- executed_at
- created_at
- updated_at

execution_status_enum:
- pending
- executed
- reversed
- failed
- cancelled

idempotency_rule:
execution_ref must suppress duplicate effective execution.

truth_boundary:
Trade execution truth belongs to CivilizationOS market settlement domain.
