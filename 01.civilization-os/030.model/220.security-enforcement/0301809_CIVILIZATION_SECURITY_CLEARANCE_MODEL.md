# ============================================================
# CIVILIZATION SECURITY CLEARANCE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical security clearance model.

model_type:
- access-security truth model

primary_key:
- security_clearance_id

natural_key:
- clearance_scope
- clearance_code

fields:
- security_clearance_id
- clearance_scope
- clearance_code
- clearance_status
- holder_scope
- clearance_level
- governing_basis
- source_state_version
- granted_at
- expires_at
- created_at
- updated_at

clearance_status_enum:
- active
- suspended
- revoked
- expired
- archived

truth_boundary:
Security-clearance truth belongs to CivilizationOS security-enforcement domain.
