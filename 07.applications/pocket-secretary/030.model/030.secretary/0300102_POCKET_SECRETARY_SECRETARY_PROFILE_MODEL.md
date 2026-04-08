# ============================================================
# POCKET SECRETARY SECRETARY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents the local profile and bounded presentation state
of the secretary application persona as configured for the user.

fields:
- secretary_profile_id
- user_id
- display_name
- presentation_mode
- avatar_reference
- default_view_code
- speech_style_reference
- is_active
- created_at
- updated_at

notes:
This model is a local application profile model.
It is not the formal authority source for upstream Persona identity.
