# ============================================================
# CIVILIZATION CONTAINMENT ACTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical containment action model.

model_type:
- cyber response truth model

primary_key:
- containment_action_id

natural_key:
- action_scope
- action_ref
- source_incident_code

fields:
- containment_action_id
- action_scope
- action_ref
- source_incident_code
- action_status
- target_scope
- action_summary
- source_state_version
- correlation_id
- acted_at
- created_at
- updated_at

action_status_enum:
- proposed
- approved
- executed
- failed
- reversed
- archived

idempotency_rule:
action_scope + action_ref must suppress duplicate effective containment action.

truth_boundary:
Containment-action truth belongs to CivilizationOS cyber-defense domain.
