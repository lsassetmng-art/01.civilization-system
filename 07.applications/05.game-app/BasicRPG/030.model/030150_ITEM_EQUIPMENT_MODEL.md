# ============================================================
# ITEM AND EQUIPMENT MODEL
# ============================================================

inventory_table_candidates:
- rpg_item_inventory
- rpg_equipment_owned

inventory_fields:
- inventory_item_id
- player_id
- item_code
- quantity
- updated_at

equipment_fields:
- equipment_owned_id
- player_id
- equipment_code
- rarity
- level
- enhancement_stage
- equipped_hero_owned_id
- updated_at
