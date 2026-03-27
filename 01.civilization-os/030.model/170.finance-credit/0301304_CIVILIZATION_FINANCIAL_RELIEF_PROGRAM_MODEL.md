# ============================================================
# CIVILIZATION FINANCIAL RELIEF PROGRAM MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the financial relief program model of CivilizationOS.

This model supports:
- disaster relief
- emergency liquidity relief
- reconstruction support
- rent relief
- enterprise recovery support


# ============================================================
# 1. CORE FIELDS
# ============================================================

core_fields:
- financial_relief_program_id
- nation_code
- relief_type
- target_scope
- funding_currency_code
- relief_rule_ref
- program_status
- effective_from
- effective_to
- created_at
- updated_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Relief remains a generic finance-credit support domain,
distinct from ordinary banking products.
