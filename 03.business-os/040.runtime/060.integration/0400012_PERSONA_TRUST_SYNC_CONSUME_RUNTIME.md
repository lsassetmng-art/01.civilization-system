# ============================================================
# PERSONA TRUST SYNC CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona trust-related sync results inside BusinessOS.

input_event_types:
- persona_to_business_trust_state_synced

reflection_targets:
- BUSINESS_PERSONA_TRUST_REF_MODEL

processing_steps:
1 read inbox event
2 validate trust payload
3 apply idempotent reflection to trust ref
4 re-evaluate business-side persona exposure gates
5 mark inbox event consumed or failed

rule:
Trust reflection must not directly mutate permission state.

usage_rule:
BusinessOS must combine trust ref with permission/access state
before exposing Persona broadly.
