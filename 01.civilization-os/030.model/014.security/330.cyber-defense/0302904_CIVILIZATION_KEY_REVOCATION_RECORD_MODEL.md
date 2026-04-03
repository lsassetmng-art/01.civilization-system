# ============================================================
# CIVILIZATION KEY REVOCATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical key revocation record model.

model_type:
- key control truth model

primary_key:
- key_revocation_record_id

natural_key:
- revocation_scope
- revocation_ref
- source_secret_code

fields:
- key_revocation_record_id
- revocation_scope
- revocation_ref
- source_secret_code
- revocation_status
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
Key-revocation truth belongs to CivilizationOS cyber-defense domain.
