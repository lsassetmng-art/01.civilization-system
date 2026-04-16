# ============================================================
# LIFE INVENTORY ITEM MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines household inventory items in LifeOS.

entity_name:
life_inventory_item

meaning:
Represents a home supply or stock item.

core_fields:
- inventory_item_id
- user_id
- item_name
- category_name
- quantity_text
- low_stock_threshold_text
- shared_scope
- note
- updated_at
