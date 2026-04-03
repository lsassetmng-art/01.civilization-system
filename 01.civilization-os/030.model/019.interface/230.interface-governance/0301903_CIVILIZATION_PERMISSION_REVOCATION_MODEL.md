# ============================================================
# CIVILIZATION PERMISSION REVOCATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical permission revocation model.

model_type:
- permission control truth model

primary_key:
- permission_revocation_id

natural_key:
- revocation_scope
- revocation_ref
- source_permission_code

fields:
- permission_revocation_id
- revocation_scope
- revocation_ref
- revocation_status
- source_permission_code
- revocation_reason
- source_state_version
- correlation_id
- revoked_at
- created_at
- updated_at

revocation_status_enum:
- proposed
- approved
- executed
- cancelled
- archived

truth_boundary:
Permission-revocation truth belongs to CivilizationOS interface-governance domain.
