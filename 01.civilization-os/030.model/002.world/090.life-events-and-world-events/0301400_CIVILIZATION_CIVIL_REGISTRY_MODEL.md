# ============================================================
# CIVILIZATION CIVIL REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical civil registry model.

model_type:
- civil truth model

primary_key:
- civil_registry_id

natural_key:
- nation_id
- civil_code

fields:
- civil_registry_id
- nation_id
- civil_code
- registry_status
- registered_identity_scope
- registry_class
- source_state_version
- created_at
- updated_at

registry_status_enum:
- active
- suspended
- revoked
- archived

truth_boundary:
Civil registry truth belongs to CivilizationOS civil-status domain.
