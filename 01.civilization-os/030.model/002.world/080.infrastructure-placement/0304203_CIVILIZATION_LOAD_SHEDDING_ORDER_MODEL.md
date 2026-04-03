# ============================================================
# CIVILIZATION LOAD SHEDDING ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical load shedding order model.

model_type:
- capacity control truth model

primary_key:
- load_shedding_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- load_shedding_order_id
- order_scope
- order_code
- order_version
- order_status
- target_service_scope
- shedding_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

order_status_enum:
- draft
- approved
- active
- lifted
- revoked
- archived

contract_version_rule:
Load shedding orders must expose explicit version semantics.

truth_boundary:
Load-shedding truth belongs to CivilizationOS infrastructure-resilience domain.
