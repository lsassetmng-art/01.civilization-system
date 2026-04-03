# ============================================================
# PAYMENT CURRENCY RULE MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: payment-currency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PAYMENT RULES
# ============================================================

payment_rules:
- national_currency is allowed
- civ_cash is allowed
- civ_cash is universally applicable
- national currency is the domestic baseline
- nation-specific price tables may be defined in national currency
- civ_cash conversion-compatible payment must remain possible


# ============================================================
# 2. FINAL RULE
# ============================================================

Education and qualification costs
must support both national currency
and CIV_CASH.
