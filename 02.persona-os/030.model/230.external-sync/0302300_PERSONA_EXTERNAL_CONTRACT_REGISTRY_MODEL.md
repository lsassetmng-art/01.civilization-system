# ============================================================
# PERSONA EXTERNAL CONTRACT REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external contract registry model.

model_type:
- external contract truth model

primary_key:
- persona_external_contract_registry_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- persona_external_contract_registry_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- schema_hash
- compatibility_status
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

contract_version_rule:
Persona external contracts must expose explicit version semantics.

truth_boundary:
Persona external contract truth belongs to PersonaOS external-sync domain.
