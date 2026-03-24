# ============================================================
# LIFE INTERVENTION REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life intervention request model.

model_type:
- intervention request truth model

primary_key:
- life_intervention_request_id

natural_key:
- request_scope
- request_ref
- correlation_id

fields:
- life_intervention_request_id
- request_scope
- request_ref
- correlation_id
- request_status
- persona_id
- intervention_summary
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
Life intervention request truth belongs to LifeOS persona-integration domain.
