# ============================================================
# INCOME SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Income represents compensation for work or value creation.

# ============================================================
# TYPES
# ============================================================

- salary_income
- business_income
- dividend_income
- royalty_income

# ============================================================
# SALARY
# ============================================================

salary = base_salary × performance + bonus

# ============================================================
# TAX
# ============================================================

income must be taxed before final payout

# ============================================================
# RULE
# ============================================================

- income must originate from valid source
- currency types must not mix
- revenue and expense must balance

# ============================================================
# PURPOSE
# ============================================================

- simulate economy
- connect work to reward
- enable financial gameplay

