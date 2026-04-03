# ============================================================
# CIVILIZATION EXTERNAL CONTRACT REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical external contract registry model.

model_type:
- registry truth model

primary_key:
- external_contract_registry_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- external_contract_registry_id
- contract_scope
- contract_code
- contract_version
- contract_status
- producer_scope
- consumer_scope
- compatibility_status
- schema_hash
- created_at
- updated_at

contract_status_enum:
- active
- limited
- incompatible
- superseded
- revoked
- archived

compatibility_status_enum:
- compatible
- limited
- incompatible

contract_version_rule:
External contracts must expose explicit version semantics.

truth_boundary:
External-contract registry truth belongs to CivilizationOS interface-governance domain.
