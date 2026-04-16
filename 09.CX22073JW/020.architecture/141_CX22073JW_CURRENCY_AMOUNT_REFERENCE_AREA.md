# CX22073JW Currency / Amount Reference Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages currency, rounding, locale-aware amount display, and reference FX handling.

## 2. Main Role
- currency code master
- locale-aware amount display
- rounding rule management
- optional reference FX rates

## 3. Candidate Tables
- `currency_master`
- `currency_display_rule`
- `locale_currency_preference`
- `currency_rounding_rule`
- `fx_reference_rate`

## 4. Main Consumers
- MoneyPlanner
- LifePlanner
- Portal

## 5. Why It Belongs in CX22073JW
Currency/display rules are shared reference logic, not per-user runtime data.

## 6. Priority
High
