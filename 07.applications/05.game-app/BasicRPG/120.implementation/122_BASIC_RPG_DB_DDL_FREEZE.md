# ============================================================
# BASIC RPG DB DDL FREEZE
# ============================================================

status: draft
layer: implementation
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

schema: life

tables_to_create:
- life.rpg_player_profile
- life.rpg_hero_owned
- life.rpg_quest_progress
- life.rpg_dungeon_progress
- life.rpg_battle_session
- life.rpg_item_inventory
- life.rpg_equipment_owned
- life.rpg_currency_wallet
- life.rpg_store_catalog
- life.rpg_purchase_order
- life.rpg_premium_entitlement
- life.rpg_locale_preference
- life.rpg_save_slot
- life.rpg_event_audit

index_freeze:
- rpg_player_profile(auth_user_id) unique
- rpg_hero_owned(player_id, hero_master_code)
- rpg_quest_progress(player_id, quest_code) unique
- rpg_dungeon_progress(player_id, dungeon_code, difficulty_code) unique
- rpg_battle_session(player_id, started_at desc)
- rpg_purchase_order(store_transaction_id) unique
- rpg_event_audit(player_id, occurred_at desc)

row_level_security_direction:
- player-owned rows scoped by auth user
- admin/liveops policy separated
