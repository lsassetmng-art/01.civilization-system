# ============================================================
# CIVILIZATION FINANCIAL OBLIGATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic financial obligation model of CivilizationOS.

This model is a cross-domain abstraction for financial duties,
claims, and settlement obligations.

It is not the canonical detail model for:
- bank lending
- mortgage lending
- enterprise lending
- real-estate repayment

Those belong to:
- 262.banking
- 260.real-estate-regime


# ============================================================
# 1. ROLE
# ============================================================

This model represents a generic obligation relation such as:
- payable obligation
- receivable claim
- settlement duty
- reimbursement duty
- insurance payout duty
- subsidy disbursement duty

It exists to support cross-domain financial consistency.


# ============================================================
# 2. CORE FIELDS
# ============================================================

core_fields:
- financial_obligation_id
- nation_code
- obligation_type
- debtor_type
- debtor_ref
- creditor_type
- creditor_ref
- source_domain
- source_ref
- obligation_currency_code
- principal_amount
- outstanding_amount
- obligation_status
- due_rule_summary
- created_at
- updated_at

obligation_type examples:
- reimbursement
- insurance_payout
- subsidy_payment
- relief_payment
- generic_settlement_obligation


# ============================================================
# 3. FINAL RULE
# ============================================================

This model is a generic financial abstraction.

Core summary:

- it supports cross-domain obligation tracking
- it is not the detailed source of truth for banking loans
- it is not the detailed source of truth for mortgage repayment
