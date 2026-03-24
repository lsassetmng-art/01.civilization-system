# ============================================================
# CIVILIZATION ENVOY ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical envoy assignment model.

model_type:
- diplomatic staffing truth model

primary_key:
- envoy_assignment_id

natural_key:
- assignment_scope
- assignment_ref
- envoy_scope

fields:
- envoy_assignment_id
- assignment_scope
- assignment_ref
- envoy_scope
- assignment_status
- source_mission_code
- assignment_role
- effective_from
- effective_until
- created_at
- updated_at

assignment_status_enum:
- assigned
- accredited
- active
- suspended
- recalled
- archived

truth_boundary:
Envoy-assignment truth belongs to CivilizationOS diplomatic-operations domain.
