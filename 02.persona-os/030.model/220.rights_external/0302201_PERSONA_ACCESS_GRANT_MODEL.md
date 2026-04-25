# ============================================================
# PERSONA ACCESS GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona access grant model.

model_type:
- persona access truth model

primary_key:
- persona_access_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- persona_access_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- grantee_scope
- access_summary
- source_license_code
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Persona access grants must expose explicit version semantics.

truth_boundary:
Persona access-grant truth belongs to PersonaOS rights-external domain.
