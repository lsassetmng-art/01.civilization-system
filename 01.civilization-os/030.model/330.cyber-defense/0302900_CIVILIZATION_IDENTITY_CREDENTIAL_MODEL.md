# ============================================================
# CIVILIZATION IDENTITY CREDENTIAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical identity credential model.

model_type:
- authentication truth model

primary_key:
- identity_credential_id

natural_key:
- credential_scope
- credential_code
- credential_version

fields:
- identity_credential_id
- credential_scope
- credential_code
- credential_version
- credential_status
- holder_scope
- credential_class
- assurance_level
- effective_from
- effective_until
- created_at
- updated_at

credential_status_enum:
- draft
- issued
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Identity credentials must expose explicit version semantics.

truth_boundary:
Identity-credential truth belongs to CivilizationOS cyber-defense domain.
