# ============================================================
# CIVILIZATION NEGOTIATION MANDATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical negotiation mandate model.

model_type:
- diplomatic authority truth model

primary_key:
- negotiation_mandate_id

natural_key:
- mandate_scope
- mandate_code
- mandate_version

fields:
- negotiation_mandate_id
- mandate_scope
- mandate_code
- mandate_version
- mandate_status
- issuing_scope
- recipient_scope
- mandate_summary
- effective_from
- effective_until
- created_at
- updated_at

mandate_status_enum:
- draft
- approved
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
Negotiation mandates must expose explicit version semantics.

truth_boundary:
Negotiation-mandate truth belongs to CivilizationOS diplomatic-operations domain.
