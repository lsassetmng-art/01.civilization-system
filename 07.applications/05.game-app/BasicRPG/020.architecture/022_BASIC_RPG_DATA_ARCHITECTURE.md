# ============================================================
# BASIC RPG DATA ARCHITECTURE
# ============================================================

status: draft
layer: architecture
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

database_scope:
schema: life

core_entities:
- rpg_player_profile
- rpg_player_party
- rpg_hero_owned
- rpg_quest_progress
- rpg_dungeon_progress
- rpg_battle_session
- rpg_item_inventory
- rpg_equipment_owned
- rpg_currency_wallet
- rpg_store_catalog
- rpg_purchase_order
- rpg_premium_entitlement
- rpg_locale_preference
- rpg_save_slot
- rpg_event_audit

design_rules:
- static master-like data may be mirrored as seeded tables or versioned JSON
- mutable player state remains normalized and auditable
- battle inputs and outputs are stored separately
- price display currency and internal wallet currencies are separate domains
- all tables must carry created_at / updated_at / actor context where meaningful
