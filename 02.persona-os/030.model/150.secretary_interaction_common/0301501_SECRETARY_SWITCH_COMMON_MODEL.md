# ============================================================
# SECRETARY SWITCH COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common secretary switch state.

fields:
- switch_state_id
- user_id
- current_character_code
- previous_character_code
- switch_origin
- switch_timestamp
- created_at
- updated_at

rules:
- secretary switching is explicit preference state
- switching does not imply authority or plan change
