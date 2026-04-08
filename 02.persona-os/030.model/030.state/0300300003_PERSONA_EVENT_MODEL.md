# ============================================================
# PERSONA EVENT MODEL
# ============================================================

status: canonical
layer: model
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_event

purpose:
Defines the canonical model
for significant occurrences experienced by a persona.

core_fields:
persona_event_id
persona_id
event_scope
event_type
event_summary
event_status
occurred_at
recorded_at
created_at
updated_at

event_scope_examples:
interaction
decision
environmental_change
state_transition_trigger

rules:
Persona event is not raw memory truth itself.
Persona event may contribute to memory, history, and state transition tracking.
Persona event must remain traceable to canonical persona state context.
