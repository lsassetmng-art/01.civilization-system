# ============================================================
# QUEST MODEL
# ============================================================

progress_table_candidate: rpg_quest_progress

key_fields:
- quest_progress_id
- player_id
- quest_code
- chapter_no
- quest_state
- objective_current_value
- objective_target_value
- reward_claimed_at
- updated_at

quest_state_values:
- locked
- available
- accepted
- completed_unclaimed
- claimed
