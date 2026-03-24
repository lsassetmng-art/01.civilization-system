# ============================================================
# CIVILIZATION WORKPLACE SAFETY ORDER MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical workplace safety order model.

model_type:
- safety enforcement truth model

primary_key:
- workplace_safety_order_id

natural_key:
- order_scope
- order_code
- order_version

fields:
- workplace_safety_order_id
- order_scope
- order_code
- order_version
- order_status
- employer_scope
- safety_summary
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
Workplace safety orders must expose explicit version semantics.

truth_boundary:
Workplace-safety truth belongs to CivilizationOS labor-administration domain.
