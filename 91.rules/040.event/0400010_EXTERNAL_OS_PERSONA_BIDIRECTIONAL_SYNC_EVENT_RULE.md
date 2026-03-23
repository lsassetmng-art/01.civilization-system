# ============================================================
# EXTERNAL OS PERSONA BIDIRECTIONAL SYNC EVENT RULE
# Civilization System Canonical Standard
# ============================================================

status: canonical
scope: cross-os
layer: 040.event

owner: Boss
prepared_by: Zero

purpose:
Define canonical event directions and event contract expectations
for PersonaOS bidirectional synchronization.

external_to_persona_events:
- <os>_to_persona_growth_event
- <os>_to_persona_growth_request
- <os>_to_persona_context_sync_request

persona_to_external_events:
- persona_to_<os>_usage_permission_synced
- persona_to_<os>_access_state_synced
- persona_to_<os>_release_validity_synced
- persona_to_<os>_usage_binding_synced
- persona_to_<os>_trust_state_synced

rules:
- all events require correlation_id
- all events require causation traceability where applicable
- contracts must be explicit
- retries must be idempotent
