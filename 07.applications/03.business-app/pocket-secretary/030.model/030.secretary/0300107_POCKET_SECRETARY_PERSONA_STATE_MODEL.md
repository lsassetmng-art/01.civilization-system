# ============================================================
# POCKET SECRETARY PERSONA STATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents bounded Persona-linked state used
for PocketSecretary presentation and interaction.

fields:
- persona_state_id
- user_id
- character_code
- emotion_code
- pose_code
- view_code
- state_source
- local_override_flag
- updated_at

rules:
- Persona-linked state is presentation-oriented
- it must not be treated as permission state
- upstream authority and local presentation state
  must remain distinguishable
