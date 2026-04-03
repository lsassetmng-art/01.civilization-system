# ============================================================
# CIVILIZATION PERMIT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical permit record model.

model_type:
- permit governance model

primary_key:
- permit_record_id

natural_key:
- permit_scope
- permit_code
- permit_version

fields:
- permit_record_id
- permit_scope
- permit_code
- permit_version
- permit_status
- permit_type
- target_scope
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

permit_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

truth_boundary:
Permit truth belongs to CivilizationOS civic governance domain.
