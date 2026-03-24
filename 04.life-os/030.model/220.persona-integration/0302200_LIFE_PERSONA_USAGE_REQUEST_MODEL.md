# ============================================================
# LIFE PERSONA USAGE REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life persona usage request model.

model_type:
- usage request truth model

primary_key:
- life_persona_usage_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- life_persona_usage_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- persona_id
- usage_summary
- source_state_version
- requested_at
- created_at
- updated_at

request_status_enum:
- created
- approved
- active
- completed
- rejected
- archived

truth_boundary:
Life persona usage request truth belongs to LifeOS persona-integration domain.
