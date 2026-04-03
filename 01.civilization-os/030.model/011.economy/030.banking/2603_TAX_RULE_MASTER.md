# ============================================================
# TAX RULE MASTER
# ============================================================

status: canonical
layer: model
scope: finance
component: tax-rule-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official model
for Tax Rule Master.

Tax Rule Master is the nation-authoritative rule set
for tax timing, grace, default, and escalation.

It is a specialization of payment rule logic
for tax obligations.


# ============================================================
# 2. CORE RULE
# ============================================================

Tax timing must be master-defined.

A tax obligation must not define its due timing
without reference to tax rule master
or a structurally compatible derived rule.


# ============================================================
# 3. OFFICIAL FIELD SET
# ============================================================

A tax rule master should contain:

- tax_rule_code
- nation_id
- tax_type
- tax_category
- assessment_timing
- due_rule_type
- due_days_from_assessment
- grace_period_days
- overdue_days_from_due
- default_days_from_due
- penalty_policy_code
- forced_action_policy_code
- settlement_currency_scope
- exemption_policy_code
- notes
- updated_at


# ============================================================
# 4. TAX TYPE
# ============================================================

Examples of tax_type:
- acquisition_tax
- property_holding_tax
- land_holding_tax
- building_holding_tax
- transfer_tax
- rental_withholding_tax if later needed

Tax type must be explicit and stable.


# ============================================================
# 5. TAX CATEGORY
# ============================================================

Recommended tax_category values:
- acquisition
- holding
- transfer
- periodic
- transaction


# ============================================================
# 6. NATION BINDING
# ============================================================

tax_rule_master is nation-bound.

This means:
- different nations may define different due timing
- different nations may define different grace periods
- different nations may define different default timing
- different nations may define different forced action paths

Tax rule master belongs under nation tax regime authority.


# ============================================================
# 7. TAX TIMING EXAMPLES
# ============================================================

## acquisition_tax
Recommended example:
- assessment_timing: immediate_on_event
- due_rule_type: fixed_days_from_assessment
- due_days_from_assessment: 30
- grace_period_days: 7
- default_days_from_due: 30

## property_holding_tax
Recommended example:
- assessment_timing: monthly
- due_rule_type: next_month_fixed_day
- due_days_from_assessment: 10
- grace_period_days: 7
- default_days_from_due: 30

## building_holding_tax
Recommended example:
- assessment_timing: monthly
- due_rule_type: next_month_fixed_day
- due_days_from_assessment: 10
- grace_period_days: 7
- default_days_from_due: 30


# ============================================================
# 8. EXEMPTION POLICY
# ============================================================

exemption_policy_code may define relief or exemption behavior.

Examples:
- none
- first_time_foundation_relief
- special_public_entity_relief
- temple_property_partial_relief
- strategic_infrastructure_relief

This allows tax timing to stay master-driven
while exemptions remain structured.


# ============================================================
# 9. SETTLEMENT CURRENCY
# ============================================================

Tax obligations should normally be settled in:
- nation_currency_only

This matches the internal fiscal logic of the nation.


# ============================================================
# 10. FORCED ACTION CONNECTION
# ============================================================

Tax forced action policy may define escalation paths such as:
- warning notice
- penalty accumulation
- asset restriction
- site operation restriction
- transfer restriction
- forced recovery procedure

These must be tax-rule-aware and nation-aware.


# ============================================================
# 11. RELATION TO TAX OBLIGATION
# ============================================================

Tax Rule Master defines the rule.

Tax Obligation stores:
- actual assessed_at
- actual due_at
- actual grace_end_at
- actual default_at

This separation is mandatory.


# ============================================================
# 12. FINAL RULE
# ============================================================

Tax Rule Master is the authoritative source
for tax due timing and grace timing.

Each nation must manage tax timing through master-defined rules,
not only ad hoc tax records.
