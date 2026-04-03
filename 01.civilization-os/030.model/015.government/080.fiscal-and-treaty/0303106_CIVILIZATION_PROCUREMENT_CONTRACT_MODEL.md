# ============================================================
# CIVILIZATION PROCUREMENT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical procurement contract model.

model_type:
- procurement agreement truth model

primary_key:
- procurement_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- procurement_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- buyer_scope
- supplier_scope
- obligation_summary
- effective_from
- effective_until
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- suspended
- completed
- terminated
- archived

contract_version_rule:
Procurement contracts must expose explicit version semantics.

truth_boundary:
Procurement-contract truth belongs to CivilizationOS public-procurement domain.
