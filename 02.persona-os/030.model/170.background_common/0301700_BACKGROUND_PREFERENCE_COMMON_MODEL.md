# ============================================================
# BACKGROUND PREFERENCE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common background preference state.

fields:
- background_preference_id
- user_id
- selected_background_code
- previous_background_code
- selection_origin
- updated_at
- created_at

rules:
- preference state and render result remain distinct
