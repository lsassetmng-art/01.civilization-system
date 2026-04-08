# ============================================================
# PERSONA VISUAL STATE MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_state

purpose:
Defines the canonical visual state model
for current visual configuration of a persona.

core_fields:
persona_visual_state_id
persona_id
visual_state_code
visual_state_status
active_avatar_code
active_expression_code
active_animation_profile_code
created_at
updated_at

rules:
Visual state belongs to visual domain.
Visual state is not the same as general persona lifecycle state.
