# ============================================================
# CIVILIZATION LOAN CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical loan contract model.

model_type:
- finance contract model

primary_key:
- loan_contract_id

natural_key:
- contract_scope
- contract_code
- contract_version

fields:
- loan_contract_id
- contract_scope
- contract_code
- contract_version
- contract_status
- lender_scope
- borrower_scope
- principal_value
- repayment_rule
- interest_rule
- effective_from
- effective_until
- created_at
- updated_at

contract_status_enum:
- draft
- approved
- active
- restructured
- closed
- defaulted
- archived

contract_version_rule:
Loan contracts must expose explicit version semantics.

truth_boundary:
Loan contract truth belongs to CivilizationOS finance-credit domain.
