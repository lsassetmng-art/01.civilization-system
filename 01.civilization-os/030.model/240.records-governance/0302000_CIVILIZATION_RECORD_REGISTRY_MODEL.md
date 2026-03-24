# ============================================================
# CIVILIZATION RECORD REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical record registry model.

model_type:
- records registry truth model

primary_key:
- record_registry_id

natural_key:
- record_scope
- record_code
- record_version

fields:
- record_registry_id
- record_scope
- record_code
- record_version
- record_status
- record_class
- source_of_truth_domain
- source_state_version
- created_at
- updated_at

record_status_enum:
- active
- superseded
- archived
- invalidated

contract_version_rule:
Registered records must expose explicit version semantics where applicable.

truth_boundary:
Record-registry truth belongs to CivilizationOS records-governance domain.
