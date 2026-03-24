# ============================================================
# CIVILIZATION UTILITY CONNECTION APPROVAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical utility connection approval model.

model_type:
- infrastructure connection truth model

primary_key:
- utility_connection_approval_id

natural_key:
- approval_scope
- approval_ref
- target_building_scope

fields:
- utility_connection_approval_id
- approval_scope
- approval_ref
- target_building_scope
- approval_status
- utility_type
- approval_basis
- source_state_version
- approved_at
- created_at
- updated_at

approval_status_enum:
- pending
- approved
- activated
- denied
- revoked
- archived

truth_boundary:
Utility-connection approval truth belongs to CivilizationOS urban-governance domain.
