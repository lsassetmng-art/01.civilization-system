# ============================================================
# SAVE SLOT MODEL
# ============================================================

table_candidate: rpg_save_slot

key_fields:
- save_slot_id
- player_id
- slot_no
- save_state_json
- snapshot_version
- save_origin
- last_saved_at
- updated_at

save_origin_values:
- local_cache
- cloud_manual
- cloud_auto
- recovery_snapshot
