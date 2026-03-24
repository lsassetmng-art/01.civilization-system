# ============================================================
# CIVILIZATION MARKET ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical market order model.

model_type:
- market operational truth model

primary_key:
- market_order_id

natural_key:
- market_scope
- order_ref

fields:
- market_order_id
- market_scope
- order_ref
- order_status
- asset_code
- order_side
- order_quantity
- order_price
- owner_scope
- correlation_id
- created_at
- updated_at

order_status_enum:
- pending
- open
- partially_filled
- filled
- cancelled
- failed

order_side_enum:
- buy
- sell

idempotency_rule:
market_scope + order_ref must suppress duplicate effective order registration.

truth_boundary:
Market order truth belongs to CivilizationOS governed market operations.
