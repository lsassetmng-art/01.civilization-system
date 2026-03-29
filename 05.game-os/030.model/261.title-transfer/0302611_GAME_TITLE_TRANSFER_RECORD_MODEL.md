# ============================================================
# GAME TITLE TRANSFER RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title transfer record model.

model_type:
- title transfer execution truth model

primary_key:
- game_title_transfer_record_id

natural_key:
- transfer_scope
- transfer_ref
- correlation_id

fields:
- game_title_transfer_record_id
- transfer_scope
- transfer_ref
- correlation_id
- transfer_status
- game_title_code
- source_seller_code
- target_seller_code
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
transfer_scope + transfer_ref must suppress duplicate effective game-title transfer.

truth_boundary:
Game title transfer truth belongs to GameOS title-transfer domain.
