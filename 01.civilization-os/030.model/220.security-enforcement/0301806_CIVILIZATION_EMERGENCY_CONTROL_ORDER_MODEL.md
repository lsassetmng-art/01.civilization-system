# ============================================================
# CIVILIZATION EMERGENCY CONTROL ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical emergency control order model.

model_type:
- emergency governance truth model

primary_key:
- emergency_control_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- emergency_control_order_id
- order_scope
- order_code
- order_version
- order_status
- target_scope
- control_rule_body
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

order_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
Emergency-control orders must expose explicit version semantics.

truth_boundary:
Emergency-control truth belongs to CivilizationOS security-enforcement domain.
