# ============================================================
# PAYMENT RULE MODEL
# ============================================================

status: canonical
layer: model
scope: daily-necessities-and-self-sufficiency
component: payment-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL RULE
# ============================================================

canonical_rule:
- ordinary auto-purchase uses national_currency
- minimum survival purchase uses national_currency
- CIV_CASH is not default ordinary auto-purchase currency


# ============================================================
# 2. USER SUPPORT RULE
# ============================================================

user_support_rule:
- CIV_CASH may be used for explicit user support
- CIV_CASH support may cover shortage relief
- CIV_CASH support may fund emergency essentials
- CIV_CASH support must remain separate from ordinary domestic auto-purchase flow


# ============================================================
# 3. FINAL RULE
# ============================================================

Ordinary life purchase
and user support funding
must remain structurally distinct.
