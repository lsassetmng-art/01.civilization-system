# ============================================================
# PLAYER PROFILE MODEL
# ============================================================

table_candidate: rpg_player_profile

key_fields:
- player_id
- auth_user_id
- display_name
- chapter_no
- account_level
- stamina_current
- stamina_max
- selected_locale
- selected_display_currency
- last_login_at
- created_at
- updated_at

notes:
- one row per game account
- chapter_no is explicit progression pointer
- display currency is preference, not billing truth
