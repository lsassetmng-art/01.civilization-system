# ============================================================
# CIVILIZATION SYNC REFLECTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical reflected-sync model pattern for CivilizationOS.

model_type:
- reflected sync model

primary_key:
- sync_reflection_id

natural_key:
- source_domain
- source_entity_id
- target_domain
- reflection_type

fields:
- sync_reflection_id
- source_domain
- source_entity_id
- target_domain
- target_entity_id
- reflection_type
- reflected_payload
- source_event_id
- source_state_version
- reflection_status
- correlation_id
- causation_id
- reflected_at
- created_at
- updated_at

reflection_status_enum:
- pending
- active
- stale
- invalid
- superseded

truth_boundary:
This is reflected state only.
Truth remains in source_domain unless explicitly constitutionalized otherwise.

idempotency_rule:
The same source_event_id plus target reflection basis
must not create duplicate effective reflection.
