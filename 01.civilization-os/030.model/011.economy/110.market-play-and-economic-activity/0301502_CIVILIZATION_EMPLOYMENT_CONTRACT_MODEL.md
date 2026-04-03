# ============================================================
# CIVILIZATION EMPLOYMENT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical employment contract model.

model_type:
- employment contract truth model

primary_key:
- employment_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- employment_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- employer_scope
- worker_scope
- compensation_basis
- labor_scope
- effective_from
- effective_until
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- suspended
- terminated
- expired
- archived

contract_version_rule:
Employment contracts must expose explicit version semantics.

truth_boundary:
Employment contract truth belongs to CivilizationOS organization-economy domain.
