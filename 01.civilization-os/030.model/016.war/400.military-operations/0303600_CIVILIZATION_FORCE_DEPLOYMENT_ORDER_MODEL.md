# ============================================================
# CIVILIZATION FORCE DEPLOYMENT ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical force deployment order model.

model_type:
- military command truth model

primary_key:
- force_deployment_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- force_deployment_order_id
- order_scope
- order_code
- order_version
- order_status
- issuing_scope
- target_theater_scope
- deployment_summary
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
Force deployment orders must expose explicit version semantics.

truth_boundary:
Force-deployment truth belongs to CivilizationOS military-operations domain.
