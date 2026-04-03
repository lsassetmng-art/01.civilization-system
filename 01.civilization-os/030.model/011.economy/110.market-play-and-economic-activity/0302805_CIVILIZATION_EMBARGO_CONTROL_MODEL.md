# ============================================================
# CIVILIZATION EMBARGO CONTROL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical embargo control model.

model_type:
- external restriction truth model

primary_key:
- embargo_control_id

natural_key:
- embargo_scope
- embargo_code
- embargo_version

fields:
- embargo_control_id
- embargo_scope
- embargo_code
- embargo_version
- embargo_status
- target_scope
- restriction_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

embargo_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Embargo controls must expose explicit version semantics.

truth_boundary:
Embargo-control truth belongs to CivilizationOS external-trade-aid domain.
