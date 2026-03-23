# ============================================================
# PERSONA USAGE PERMISSION CONSUME RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Consume Persona usage permission related results inside BusinessOS.

input_event_types:
- persona_to_business_usage_permission_synced
- persona_to_business_access_state_synced
- persona_to_business_release_validity_synced
- persona_to_business_usage_binding_synced

reflection_targets:
- BUSINESS_PERSONA_ACCESS_REF_MODEL
- BUSINESS_PERSONA_LICENSE_REF_MODEL
- BUSINESS_PERSONA_RELEASE_REF_MODEL
- BUSINESS_PERSONA_USAGE_BINDING_MODEL

processing_steps:
1 read inbox event
2 verify event type belongs to usage domain
3 map payload to target ref model
4 apply idempotent upsert
5 update inbox consume state

rule:
Permission-related reflection must complete before any trust-gated
business exposure is expanded.
