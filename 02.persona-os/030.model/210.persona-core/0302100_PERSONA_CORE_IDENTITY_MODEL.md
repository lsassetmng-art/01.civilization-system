# ============================================================
# PERSONA CORE IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical core identity model for PersonaOS.

model_type:
- persona identity truth model

primary_key:
- persona_core_identity_id

natural_key:
- persona_id
- persona_code
- identity_version

fields:
- persona_core_identity_id
- persona_id
- persona_code
- identity_version
- identity_status
- canonical_name
- origin_scope
- lifecycle_class
- effective_from
- effective_until
- created_at
- updated_at

identity_status_enum:
- draft
- active
- suspended
- archived

contract_version_rule:
Persona core identity must expose explicit version semantics.

truth_boundary:
Persona core identity truth belongs to PersonaOS persona-core domain.
