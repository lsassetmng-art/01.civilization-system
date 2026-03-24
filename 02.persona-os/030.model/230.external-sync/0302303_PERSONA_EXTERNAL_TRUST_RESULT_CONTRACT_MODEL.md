# ============================================================
# PERSONA EXTERNAL TRUST RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external trust result contract model.

model_type:
- trust contract truth model

primary_key:
- persona_external_trust_result_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- persona_external_trust_result_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- required_field_summary
- schema_hash
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
External trust result contracts must expose explicit version semantics.

truth_boundary:
Trust result contract truth belongs to PersonaOS external-sync domain.
