# ============================================================
# EXTERNAL GROWTH REQUEST CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Consume inbound growth requests received from external OS domains.

runtime_scope:
- read pending inbox requests
- validate source OS and payload shape
- enforce idempotent consume
- classify growth request
- hand off to Persona growth decision/apply boundary
- persist consume result

input_model:
- PERSONA_EXTERNAL_GROWTH_REQUEST_INBOX_MODEL

processing_steps:
1 select pending inbox request
2 validate source_os, persona_id, and payload structure
3 verify request_idempotency_key and duplicate source_event_id
4 classify growth_event_type and source_os domain
5 pass allowed projection to Persona growth decision/apply boundary
6 persist consumed, rejected, failed, or dead-lettered result
7 emit operational trace

success_condition:
- request handled once effectively
- Persona growth decision boundary invoked safely
- inbox state persisted with audit trace

failure_condition:
- invalid projection
- unsupported source_os contract
- Persona target not resolvable
- downstream growth apply failure

dead_letter_conditions:
- permanently invalid contract
- unauthorized source
- incompatible projection schema after retry budget exhaustion

truth_boundary:
External OS sends projection only.
Persona truth changes only inside PersonaOS.
