# ============================================================
# GAME RELEASE PUBLISHER REASSIGNMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical release publisher reassignment record model.

model_type:
- release responsibility truth model

primary_key:
- game_release_publisher_reassignment_record_id

natural_key:
- reassignment_scope
- reassignment_ref
- correlation_id

fields:
- game_release_publisher_reassignment_record_id
- reassignment_scope
- reassignment_ref
- correlation_id
- reassignment_status
- release_code
- source_seller_code
- target_seller_code
- reassignment_summary
- effective_from
- created_at
- updated_at

reassignment_status_enum:
- pending
- active
- reversed
- archived

truth_boundary:
Release publisher reassignment truth belongs to GameOS title-transfer domain.
