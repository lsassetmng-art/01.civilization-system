# ============================================================
# MARKETPLACE GAME TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical marketplace game transfer record model.

model_type:
- transfer execution truth model

primary_key:
- marketplace_game_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- marketplace_game_transfer_record_id
- transfer_scope
- transfer_ref
- correlation_id
- transfer_status
- source_seller_code
- target_seller_code
- marketplace_product_code
- game_title_code
- transfer_effective_from
- transfer_summary
- executed_at
- created_at
- updated_at

transfer_status_enum:
- pending
- executed
- failed
- reversed
- archived

idempotency_rule:
transfer_scope + transfer_ref must suppress duplicate effective marketplace transfer.

truth_boundary:
Marketplace game transfer truth belongs to Civilization marketplace-transfer domain.
