# ============================================================
# PERSONA LICENSE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona license model.

model_type:
- persona rights truth model

primary_key:
- persona_license_id

natural_key:
- license_scope
- license_code
- license_version

fields:
- persona_license_id
- license_scope
- license_code
- license_version
- license_status
- licensor_scope
- licensee_scope
- rights_summary
- effective_from
- effective_until
- created_at
- updated_at

license_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Persona licenses must expose explicit version semantics.

truth_boundary:
Persona license truth belongs to PersonaOS rights-external domain.
