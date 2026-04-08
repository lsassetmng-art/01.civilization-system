# ============================================================
# PERSONA VISUAL EXPRESSION MODEL
# ============================================================

status: canonical
layer: model
domain: visual
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_visual_expression

purpose:
Defines the canonical visual expression model
for visible emotion and expression presentation.

core_fields:
persona_visual_expression_id
persona_id
expression_code
expression_status
expression_summary
created_at
updated_at

rules:
Visual expression belongs to visual truth.
Visual expression may reference emotional meaning
but is not identical to emotion state itself.
