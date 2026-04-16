# ============================================================
# LIFE SUPPLY SHORTAGE SIGNAL MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: home-and-living
owner: Boss
prepared_by: Zero

purpose:
Defines shortage signals for household supplies.

entity_name:
life_supply_shortage_signal

meaning:
Represents a derived shortage or replenishment-needed signal.

core_fields:
- supply_shortage_signal_id
- user_id
- linked_inventory_item_id
- detected_at
- shortage_level
- explanation_note
- created_at
