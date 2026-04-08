# ============================================================
# PERSONA GROWTH REQUEST INBOX MODEL
# ============================================================

status: canonical
layer: model
domain: integration
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_growth_request_inbox

purpose:
Defines the canonical inbound growth request model
consumed by PersonaOS from external systems.

core_fields:
persona_growth_request_inbox_id
source_system_code
request_id
event_type
persona_id
growth_dimension
delta_value
payload_json
consume_state
received_at
consumed_at
created_at
updated_at

rules:
Inbound growth requests are integration-side requests only.
Final growth truth remains owned by PersonaOS growth domain.
