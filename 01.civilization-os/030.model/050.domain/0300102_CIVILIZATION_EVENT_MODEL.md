# ============================================================
# CIVILIZATION EVENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civilization event model.

model_type:
- event truth model

primary_key:
- civilization_event_id

natural_key:
- event_domain
- event_code
- correlation_id

fields:
- civilization_event_id
- event_domain
- event_code
- event_type
- source_domain
- source_entity_id
- target_domain
- target_entity_id
- event_payload
- payload_hash
- source_state_version
- correlation_id
- causation_id
- occurred_at
- recorded_at
- created_at

truth_boundary:
This model stores event truth for civilization-level events.
Reflected subordinate events must declare source truth explicitly.

idempotency_rule:
event_domain + event_code + correlation_id must prevent duplicate effective event registration where applicable.
