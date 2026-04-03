# ============================================================
# CIVILIZATION STOCKPILE RELEASE ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical stockpile release order model.

model_type:
- emergency release truth model

primary_key:
- stockpile_release_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- stockpile_release_order_id
- order_scope
- order_code
- order_version
- order_status
- target_scope
- release_summary
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
Stockpile release orders must expose explicit version semantics.

truth_boundary:
Stockpile-release truth belongs to CivilizationOS disaster-relief-stockpile domain.
