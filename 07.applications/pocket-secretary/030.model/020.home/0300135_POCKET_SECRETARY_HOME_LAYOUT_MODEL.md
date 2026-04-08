# ============================================================
# POCKET SECRETARY HOME LAYOUT MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific home layout usage
on top of the shared Background Common.

common reference:
PersonaOS background common defines:
- background preference state
- background availability state

PocketSecretary-specific fields:
- home_layout_id
- user_id
- selected_secretary_character_code
- selected_background_code
- speech_bubble_enabled
- settings_button_visible
- created_at
- updated_at

rules:
- secretary selection and background selection remain separate
- home layout preference does not alter authority or plan semantics
- background preference and render result remain distinct
