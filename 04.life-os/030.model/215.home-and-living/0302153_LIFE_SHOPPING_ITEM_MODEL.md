# ============================================================
# LIFE SHOPPING ITEM MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines the shopping item model used in LifeOS.

entity_name:
life_shopping_item

meaning:
Represents an item that should be purchased for daily living.

core_fields:
- shopping_item_id
- user_id
- item_name
- category_name
- quantity_text
- urgency_level
- checked_state
- linked_inventory_item_id
- shared_scope
- note
- created_at
- updated_at

rules:
- shopping items may exist without inventory linkage
- urgency is lightweight, not enterprise priority
