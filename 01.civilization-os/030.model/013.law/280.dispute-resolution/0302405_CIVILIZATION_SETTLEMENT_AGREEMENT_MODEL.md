# ============================================================
# CIVILIZATION SETTLEMENT AGREEMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical settlement agreement model.

model_type:
- negotiated settlement truth model

primary_key:
- settlement_agreement_id

natural_key:
- agreement_scope
- agreement_code
- agreement_version

fields:
- settlement_agreement_id
- agreement_scope
- agreement_code
- agreement_version
- agreement_status
- source_case_ref
- party_summary
- obligation_summary
- effective_from
- effective_until
- created_at
- updated_at

agreement_status_enum:
- draft
- approved
- active
- breached
- fulfilled
- revoked
- archived

contract_version_rule:
Settlement agreements must expose explicit version semantics.

truth_boundary:
Settlement-agreement truth belongs to CivilizationOS dispute-resolution domain.
