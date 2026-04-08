# ============================================================
# PERSONA VISUAL ASSET MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_asset

purpose:
Defines the canonical visual asset model
used to represent a persona visually.

core_fields:
persona_visual_asset_id
persona_id
asset_type
asset_status
asset_reference
created_at
updated_at

asset_type_examples:
image
model
animation
layer_asset

rules:
Visual assets belong to PersonaOS visual truth.
Visual asset references must remain explicit and traceable.
