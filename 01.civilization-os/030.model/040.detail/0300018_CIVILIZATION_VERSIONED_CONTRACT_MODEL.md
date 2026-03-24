# ============================================================
# CIVILIZATION VERSIONED CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical versioned contract model pattern.

model_type:
- contract model

primary_key:
- contract_record_id

natural_key:
- contract_domain
- contract_code
- contract_version

fields:
- contract_record_id
- contract_domain
- contract_code
- contract_version
- source_state_version
- compatibility_status
- contract_payload
- contract_status
- created_at
- updated_at

compatibility_status_enum:
- compatible
- limited
- incompatible

contract_status_enum:
- active
- superseded
- deprecated
- revoked

versioning_rule:
Consumers must not guess compatibility when compatibility_status is absent.
