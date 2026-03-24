# ============================================================
# GAME INVENTORY ITEM MODEL
# ============================================================

status: canonical
layer: 030.model
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical game inventory item model.

model_type:
- inventory truth model

primary_key:
- game_inventory_item_id

natural_key:
- inventory_scope
- item_ref
- item_version

fields:
- game_inventory_item_id
- inventory_scope
- item_ref
- item_version
- item_status
- player_code
- item_summary
- quantity_value
- effective_from
- effective_until
- created_at
- updated_at

item_status_enum:
- active
- consumed
- removed
- invalidated
- archived

truth_boundary:
Game inventory item truth belongs to GameOS progression-reward domain.
