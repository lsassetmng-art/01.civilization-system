# ============================================================
# PERSONA BEHAVIOR CONSTRAINT MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_behavior_constraint

purpose:
Defines the canonical model
for behavior limitation rules applied to a persona.

core_fields:
persona_behavior_constraint_id
persona_id
constraint_scope
constraint_status
constraint_summary
created_at
updated_at

rules:
Behavior constraints must remain explicit.
Behavior constraints are narrower execution rules
within the broader safety boundary of persona guardrails.
