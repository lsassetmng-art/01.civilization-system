# ============================================================
# CIVILIZATION SETTLEMENT DUTY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the generic settlement duty model of CivilizationOS.

This model represents cross-domain settlement duties
that are not the canonical detailed repayment source of truth
for banking loans or real-estate loans.

Detailed repayment source of truth belongs to:
- 262.banking
- 260.real-estate-regime


# ============================================================
# 1. ROLE
# ============================================================

A settlement duty may arise from:
- insurance payout execution
- subsidy disbursement execution
- relief program disbursement
- generic payable completion
- generic reimbursement completion

This model exists to unify payable-state semantics
across domains.


# ============================================================
# 2. CORE FIELDS
# ============================================================

core_fields:
- settlement_duty_id
- nation_code
- duty_type
- source_domain
- source_ref
- payer_type
- payer_ref
- payee_type
- payee_ref
- currency_code
- billed_amount
- paid_amount
- outstanding_amount
- settlement_status
- due_rule_summary
- created_at
- updated_at

duty_type examples:
- insurance_payout_settlement
- subsidy_disbursement_settlement
- relief_disbursement_settlement
- reimbursement_settlement
- generic_payable_settlement


# ============================================================
# 3. FINAL RULE
# ============================================================

This model is a generic settlement abstraction.

Core summary:

- it supports cross-domain settlement tracking
- it does not replace banking repayment records
- it does not replace mortgage repayment records
