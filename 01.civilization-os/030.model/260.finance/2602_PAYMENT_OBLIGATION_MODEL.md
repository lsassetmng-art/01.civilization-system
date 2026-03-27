# ============================================================
# PAYMENT OBLIGATION MODEL
# ============================================================

status: canonical
layer: model
scope: finance
component: payment-obligation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for Payment Obligation.

Payment Obligation is an actual payable record
generated for a specific taxpayer, company, user,
site, account, or holder.

It stores the concrete payment facts,
including calculated due timing and current payment state.


# ============================================================
# 2. CORE RULE
# ============================================================

Payment Obligation must store concrete timing values.

It must not rely only on live master lookup
at read time.

This is necessary because:
- rule masters may change later
- past obligations must preserve their original timing basis


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A payment obligation should contain:

- payment_obligation_id
- payment_rule_code
- obligation_type
- obligation_category
- debtor_ref
- creditor_ref
- source_object_ref
- assessed_at
- due_at
- grace_end_at
- overdue_at
- default_at
- amount_due
- currency_code
- amount_paid
- payment_state
- penalty_amount
- forced_action_state
- notes
- created_at
- updated_at


# ============================================================
# 4. PARTY REFERENCES
# ============================================================

debtor_ref:
- who owes payment

creditor_ref:
- who receives payment

source_object_ref:
- what generated the obligation

Examples:
- property_ref
- company_site_ref
- loan_ref
- trading_account_ref
- tenant_unit_ref
- tax_assessment_ref


# ============================================================
# 5. TIMING FIELDS
# ============================================================

assessed_at:
- when the obligation became assessed

due_at:
- actual payment deadline

grace_end_at:
- end of grace period

overdue_at:
- when overdue state begins

default_at:
- when default-level treatment begins

These should be fixed at obligation generation time.


# ============================================================
# 6. PAYMENT STATE
# ============================================================

Recommended payment_state values:
- not_due
- due
- in_grace_period
- overdue
- defaulted
- partially_paid
- paid
- waived
- cancelled

These states should be driven by timing and payment behavior.


# ============================================================
# 7. FORCED ACTION STATE
# ============================================================

Recommended forced_action_state values:
- none
- warning_issued
- penalty_applied
- restriction_applied
- forced_liquidation_started
- termination_started
- eviction_started
- resolved

This should be separate from payment_state.


# ============================================================
# 8. PARTIAL PAYMENT
# ============================================================

amount_paid must be tracked explicitly.

This supports:
- partial payment
- staged settlement
- remaining balance
- progressive penalty application

If partial payment is supported,
remaining balance calculation must remain explicit.


# ============================================================
# 9. PENALTY AMOUNT
# ============================================================

penalty_amount stores assessed late penalty
or similar penalty burden.

It should not be merged invisibly into amount_due.

Keeping it explicit improves transparency.


# ============================================================
# 10. RELATION TO RULE MASTER
# ============================================================

payment_rule_code links the obligation
to the rule master used at generation time.

However, due_at, grace_end_at, overdue_at, and default_at
must still be stored as concrete values.

This allows:
- auditability
- historic stability
- rule-change safety


# ============================================================
# 11. EXAMPLES
# ============================================================

## tenant rent obligation
- debtor_ref: company_site / company
- creditor_ref: landlord / intermediary owner
- source_object_ref: tenant_unit_ref

## property tax obligation
- debtor_ref: land or building owner
- creditor_ref: nation treasury
- source_object_ref: tax_assessment_ref

## margin call obligation
- debtor_ref: company trading account
- creditor_ref: securities_firm or margin authority
- source_object_ref: trading_account_ref


# ============================================================
# 12. FINAL RULE
# ============================================================

Payment Obligation is the authoritative concrete payable record.

It must preserve:
- the source rule
- the concrete due timing
- the payment state
- the escalation state
