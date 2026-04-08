# ============================================================
# PERSONA GROWTH MODEL
# ============================================================

status: canonical
layer: model
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_growth

purpose:
Defines the canonical growth truth record for a persona.

core_fields:
persona_growth_id
persona_id
growth_scope
growth_status
growth_value
growth_version
growth_reason_summary
source_state_version
last_applied_event_id
measured_at
created_at
updated_at

growth_scope_examples:
skill
temperament
relationship
role-maturity
confidence
preference-stability

rules:
Growth truth belongs to PersonaOS.
External systems may request growth-related changes,
but PersonaOS alone decides final truth mutation.
Growth is not identical to current state.
Growth is not identical to memory truth or interpreted experience.
