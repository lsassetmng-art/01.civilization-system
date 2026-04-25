# ============================================================
# BATTLE SESSION MODEL
# ============================================================

table_candidate: rpg_battle_session

key_fields:
- battle_session_id
- player_id
- battle_type
- source_code
- seed_value
- start_snapshot_json
- action_log_json
- result_code
- reward_json
- started_at
- ended_at

result_code_values:
- victory
- defeat
- aborted
- invalidated
