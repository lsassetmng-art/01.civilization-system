# ============================================================
# PERSONA PACKAGE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package model.

model_type:
- persona package truth model

primary_key:
- persona_package_id

natural_key:
- package_scope
- package_code
- package_version

fields:
- persona_package_id
- package_scope
- package_code
- package_version
- package_status
- source_persona_id
- package_summary
- package_hash
- effective_from
- effective_until
- created_at
- updated_at

package_status_enum:
- draft
- approved
- published
- superseded
- revoked
- archived

contract_version_rule:
Persona packages must expose explicit version semantics.

truth_boundary:
Persona package truth belongs to PersonaOS rights-external domain.
