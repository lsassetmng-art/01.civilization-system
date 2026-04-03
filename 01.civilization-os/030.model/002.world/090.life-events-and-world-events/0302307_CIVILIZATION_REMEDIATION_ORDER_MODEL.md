# ============================================================
# CIVILIZATION REMEDIATION ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical remediation order model.

model_type:
- environmental enforcement truth model

primary_key:
- remediation_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- remediation_order_id
- order_scope
- order_code
- order_version
- order_status
- target_scope
- remediation_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

order_status_enum:
- draft
- approved
- active
- fulfilled
- revoked
- expired
- archived

contract_version_rule:
Remediation orders must expose explicit version semantics.

truth_boundary:
Remediation-order truth belongs to CivilizationOS environment-circularity domain.
