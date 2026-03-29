# ============================================================
# GAME TITLE TRANSFER REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game title transfer request model.

model_type:
- title transfer request truth model

primary_key:
- game_title_transfer_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- game_title_transfer_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- game_title_code
- source_seller_code
- target_seller_code
- transfer_summary
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- under_review
- approved
- rejected
- archived

truth_boundary:
Game title transfer request truth belongs to GameOS title-transfer domain.
