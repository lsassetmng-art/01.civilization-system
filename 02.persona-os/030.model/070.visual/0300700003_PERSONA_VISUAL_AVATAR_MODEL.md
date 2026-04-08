# ============================================================
# PERSONA VISUAL AVATAR MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_avatar

purpose:
Defines the canonical avatar model
for persona visual appearance.

core_fields:
persona_visual_avatar_id
persona_id
avatar_code
avatar_status
avatar_summary
created_at
updated_at

rules:
Visual avatar belongs to the visual truth domain.
Visual avatar is not runtime session state.
