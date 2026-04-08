# ============================================================
# PERSONA ANIMATION PROFILE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_animation_profile

purpose:
Defines the canonical animation profile
for persona visual behavior.

core_fields:
persona_animation_profile_id
persona_id
animation_profile_code
animation_status
animation_summary
created_at
updated_at

rules:
Animation profile belongs to visual truth.
Animation profile is separate from runtime execution state.
