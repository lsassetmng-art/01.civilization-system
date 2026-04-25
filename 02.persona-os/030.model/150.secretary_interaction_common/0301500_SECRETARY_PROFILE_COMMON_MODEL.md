# ============================================================
# SECRETARY PROFILE COMMON MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

definition:
Represents common application-facing secretary profile data.

fields:
- secretary_profile_id
- display_name
- character_code
- voice_profile_code
- visible_role_name
- tone_type
- consultation_strength
- notification_style
- created_at
- updated_at

rules:
- application-facing secretary profile and deep lore remain distinct
