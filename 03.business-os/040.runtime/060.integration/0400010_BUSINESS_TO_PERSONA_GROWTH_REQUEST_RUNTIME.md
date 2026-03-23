# ============================================================
# BUSINESS TO PERSONA GROWTH REQUEST RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Transform Business growth triggers into Persona growth requests.

runtime_scope:
- accept business growth triggers
- project allowed context
- build growth request object
- enqueue outbox event
- update growth tracking ref

input_sources:
- business milestone events
- business achievement triggers
- continuity triggers
- approved behavioral growth triggers

output_models:
- BUSINESS_PERSONA_GROWTH_REQUEST_MODEL
- BUSINESS_EVENT_OUTBOX_MODEL
- BUSINESS_PERSONA_GROWTH_REF_MODEL

projection_rule:
Only allowed Business-side projection data may be included.

idempotency_rule:
request_idempotency_key must suppress duplicate growth request generation.

truth_boundary:
This runtime generates requests only.
Persona truth changes only inside PersonaOS.
