# ============================================================
# PAYMENT RULE MASTER
# ============================================================

status: canonical
layer: model
scope: finance
component: payment-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for Payment Rule Master.

Payment Rule Master defines the shared rule set
for payment obligations inside Civilization.

It is the master definition used to determine:

- assessment timing
- due timing
- grace period
- overdue timing
- default timing
- penalty behavior
- forced action behavior

This is a master-level structure,
not an individual payable record.


# ============================================================
# 2. CORE RULE
# ============================================================

All significant payment obligations
should be governed by a payment rule master.

Payment obligations must not rely only
on ad hoc direct per-record due settings.

Rule master and actual obligation must be separated.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A payment rule master should contain:

- payment_rule_code
- obligation_type
- obligation_category
- assessment_timing
- due_rule_type
- due_days_from_assessment
- grace_period_days
- overdue_days_from_due
- default_days_from_due
- penalty_policy_code
- forced_action_policy_code
- settlement_currency_scope
- is_high_urgency
- notes
- updated_at


# ============================================================
# 4. OBLIGATION TYPE
# ============================================================

obligation_type identifies the concrete payment family.

Examples:
- property_acquisition_tax
- property_holding_tax
- land_lease_fee
- building_lease_fee
- tenant_rent
- loan_repayment
- interest_payment
- insurance_premium
- maintenance_fee
- margin_call_payment
- fx_margin_deficiency_payment
- offering_subscription_payment


# ============================================================
# 5. OBLIGATION CATEGORY
# ============================================================

Recommended obligation_category values:
- tax
- lease
- rent
- finance
- insurance
- maintenance
- margin
- offering
- penalty
- settlement


# ============================================================
# 6. ASSESSMENT TIMING
# ============================================================

assessment_timing defines when the obligation is generated.

Examples:
- immediate_on_event
- monthly
- quarterly
- annual
- on_contract_cycle
- on_margin_trigger
- on_settlement_shortfall


# ============================================================
# 7. DUE RULE
# ============================================================

due_rule_type defines how due timing is calculated.

Examples:
- fixed_days_from_assessment
- end_of_month_plus_days
- next_month_fixed_day
- same_day
- next_business_day
- contract_defined

due_days_from_assessment is used when applicable.


# ============================================================
# 8. GRACE / OVERDUE / DEFAULT
# ============================================================

grace_period_days:
- number of days after due date
  before overdue handling begins

overdue_days_from_due:
- optional explicit threshold for overdue transition

default_days_from_due:
- threshold for default-level treatment

Recommended principle:
- most obligations should have grace
- high urgency obligations may have short grace or zero grace


# ============================================================
# 9. HIGH URGENCY RULE
# ============================================================

is_high_urgency should be true for obligations such as:
- margin_call_payment
- fx_margin_deficiency_payment
- urgent settlement shortfall

These obligations may have:
- same-day due
- next-business-day due
- zero or one-day grace
- early forced action


# ============================================================
# 10. SETTLEMENT CURRENCY SCOPE
# ============================================================

settlement_currency_scope defines the allowed payment currency context.

Examples:
- nation_currency_only
- account_currency_only
- instrument_currency_only

For most domestic obligations inside a nation,
nation_currency_only is the natural default.


# ============================================================
# 11. POLICY REFERENCES
# ============================================================

penalty_policy_code references the rule
for late fee, penalty interest, or similar penalty behavior.

forced_action_policy_code references the rule
for escalation behavior such as:
- trading restriction
- site restriction
- service suspension
- contract termination
- forced liquidation
- eviction procedure


# ============================================================
# 12. EXAMPLE MASTER PATTERNS
# ============================================================

## property acquisition tax
- obligation_category: tax
- assessment_timing: immediate_on_event
- due_rule_type: fixed_days_from_assessment
- due_days_from_assessment: 30
- grace_period_days: 7
- default_days_from_due: 30

## property holding tax
- obligation_category: tax
- assessment_timing: monthly
- due_rule_type: next_month_fixed_day
- due_days_from_assessment: 10
- grace_period_days: 7
- default_days_from_due: 30

## tenant rent
- obligation_category: rent
- assessment_timing: monthly
- due_rule_type: next_month_fixed_day
- due_days_from_assessment: 0
- grace_period_days: 7
- default_days_from_due: 30

## margin call payment
- obligation_category: margin
- assessment_timing: on_margin_trigger
- due_rule_type: next_business_day
- due_days_from_assessment: 1
- grace_period_days: 0
- default_days_from_due: 1


# ============================================================
# 13. FINAL RULE
# ============================================================

Payment Rule Master is the authoritative source
for due timing, grace timing, overdue timing,
and default timing of payment obligations.

Individual obligations must derive their timing
from this master or a structurally compatible rule set.
