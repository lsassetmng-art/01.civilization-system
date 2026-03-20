# ============================================================
# INCOME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# TYPES
# ============================================================

- salary_income
- business_income
- dividend_income
- royalty_income

# ============================================================
# RULE
# ============================================================

- salary amount is DB-controlled through evaluation context
- income must come from valid source
- taxes may apply before final payout

