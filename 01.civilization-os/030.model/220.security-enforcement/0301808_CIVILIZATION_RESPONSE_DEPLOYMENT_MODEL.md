# ============================================================
# CIVILIZATION RESPONSE DEPLOYMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical response deployment model.

model_type:
- response operations truth model

primary_key:
- response_deployment_id

natural_key:
- deployment_scope
- deployment_ref

fields:
- response_deployment_id
- deployment_scope
- deployment_ref
- deployment_status
- assigned_unit_scope
- target_scope
- source_state_version
- correlation_id
- deployed_at
- released_at
- created_at
- updated_at

deployment_status_enum:
- planned
- active
- reinforced
- completed
- failed
- archived

truth_boundary:
Response-deployment truth belongs to CivilizationOS security-enforcement domain.
