# ============================================================
# BUSINESS SYNC CONSUMER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Define the runtime behavior for consuming Persona-originated
sync events inside BusinessOS.

runtime_scope:
- read pending inbox events
- classify sync event type
- validate payload integrity
- enforce idempotent consume
- route to specialized reflect handlers
- update consume status

input_model:
- BUSINESS_SYNC_EVENT_INBOX_MODEL

handled_event_types:
- persona_to_business_usage_permission_synced
- persona_to_business_access_state_synced
- persona_to_business_release_validity_synced
- persona_to_business_usage_binding_synced
- persona_to_business_trust_state_synced

processing_steps:
1 select pending inbox event
2 validate source identity and payload shape
3 check source_event_id duplicate status
4 derive target reflection model
5 apply business-side reflection
6 mark event consumed or failed
7 emit audit or operational log

idempotency_rule:
The same source_event_id must not cause duplicate reflection.

failure_rule:
Failure must not corrupt existing reflected state.
Failed events remain retryable unless dead-lettered by policy.
