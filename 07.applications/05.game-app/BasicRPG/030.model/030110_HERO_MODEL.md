# ============================================================
# HERO MODEL
# ============================================================

owned_table_candidate: rpg_hero_owned

key_fields:
- hero_owned_id
- player_id
- hero_master_code
- hero_level
- hero_rarity
- awaken_stage
- current_hp_snapshot
- power_score
- is_in_party
- created_at
- updated_at

rules:
- static hero definition is versioned separately
- owned hero state is player-specific mutable data
