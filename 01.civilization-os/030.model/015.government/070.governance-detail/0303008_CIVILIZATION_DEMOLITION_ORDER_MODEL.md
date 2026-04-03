# ============================================================
# CIVILIZATION DEMOLITION ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical demolition order model.

model_type:
- urban enforcement truth model

primary_key:
- demolition_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- demolition_order_id
- order_scope
- order_code
- order_version
- order_status
- target_building_scope
- order_summary
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
Demolition orders must expose explicit version semantics.

truth_boundary:
Demolition-order truth belongs to CivilizationOS urban-governance domain.
