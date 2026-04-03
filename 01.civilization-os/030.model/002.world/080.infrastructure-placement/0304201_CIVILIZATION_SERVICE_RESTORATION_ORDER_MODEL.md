# ============================================================
# CIVILIZATION SERVICE RESTORATION ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service restoration order model.

model_type:
- restoration order truth model

primary_key:
- service_restoration_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- service_restoration_order_id
- order_scope
- order_code
- order_version
- order_status
- target_service_scope
- restoration_summary
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
- archived

contract_version_rule:
Service restoration orders must expose explicit version semantics.

truth_boundary:
Service-restoration truth belongs to CivilizationOS infrastructure-resilience domain.
