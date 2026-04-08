# ============================================================
# PERSONA GUARDRAIL MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_guardrail

purpose:
Defines the canonical guardrail model
for safe persona behavior restrictions.

core_fields:
persona_guardrail_id
persona_id
guardrail_scope
guardrail_status
guardrail_summary
created_at
updated_at

rules:
Guardrails exist to preserve safe persona behavior.
Guardrails must remain explicit and policy-bound.
