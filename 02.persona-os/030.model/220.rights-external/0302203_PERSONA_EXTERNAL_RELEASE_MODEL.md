# ============================================================
# PERSONA EXTERNAL RELEASE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona external release model.

model_type:
- persona release truth model

primary_key:
- persona_external_release_id

natural_key:
- release_scope
- release_code
- release_version

fields:
- persona_external_release_id
- release_scope
- release_code
- release_version
- release_status
- source_persona_id
- release_summary
- release_hash
- effective_from
- effective_until
- created_at
- updated_at

release_status_enum:
- draft
- approved
- published
- suspended
- revoked
- archived

contract_version_rule:
Persona external releases must expose explicit version semantics.

truth_boundary:
Persona external release truth belongs to PersonaOS rights-external domain.
