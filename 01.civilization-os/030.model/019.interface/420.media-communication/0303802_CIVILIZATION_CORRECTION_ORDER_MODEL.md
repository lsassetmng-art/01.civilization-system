# ============================================================
# CIVILIZATION CORRECTION ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical correction order model.

model_type:
- media enforcement truth model

primary_key:
- correction_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- correction_order_id
- order_scope
- order_code
- order_version
- order_status
- target_publication_ref
- correction_summary
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
Correction orders must expose explicit version semantics.

truth_boundary:
Correction-order truth belongs to CivilizationOS media-communication domain.
