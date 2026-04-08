# ============================================================
# PERSONA VISUAL PROFILE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_profile

core_fields:
persona_visual_profile_id
persona_id
visual_profile_version
base_style_code
default_expression_code
default_background_code
theme_color
motif
signature_visual_summary
is_enabled
created_at
updated_at

rules:
Visual profile truth belongs to PersonaOS.
Visual profile is separate from runtime session state.
