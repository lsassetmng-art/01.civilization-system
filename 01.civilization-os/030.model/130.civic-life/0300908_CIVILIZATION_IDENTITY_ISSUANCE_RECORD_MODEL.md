# ============================================================
# CIVILIZATION IDENTITY ISSUANCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical identity issuance record model.

model_type:
- identity governance model

primary_key:
- identity_issuance_record_id

natural_key:
- identity_scope
- issuance_ref

fields:
- identity_issuance_record_id
- identity_scope
- issuance_ref
- issuance_status
- issued_identity_code
- requester_scope
- governing_basis
- source_state_version
- correlation_id
- issued_at
- created_at
- updated_at

issuance_status_enum:
- pending
- approved
- issued
- revoked
- expired
- cancelled

truth_boundary:
Identity issuance truth belongs to CivilizationOS civic identity domain.
