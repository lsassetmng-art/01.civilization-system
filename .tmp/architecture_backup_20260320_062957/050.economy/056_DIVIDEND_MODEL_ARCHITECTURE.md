# ============================================================
# DIVIDEND MODEL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: economy

# ============================================================
# DEFINITION
# ============================================================

Dividends are distributed from company profit
to shareholders.

# ============================================================
# CURRENCY
# ============================================================

Dividends must be paid in national_currency.

# ============================================================
# FORMULA
# ============================================================

dividend = company_profit × payout_ratio

shareholder_amount = dividend × (shares / total_shares)

# ============================================================
# RULES
# ============================================================

- dividends can only be generated from profit
- no artificial minting is allowed
- distribution must be proportional to ownership

# ============================================================
# COMPANY SETTINGS
# ============================================================

- dividend_enabled (true/false)
- payout_ratio (0.0 - 1.0)

# ============================================================
# LEDGER
# ============================================================

All dividend distributions must be recorded.

change_type = dividend

# ============================================================
# PROHIBITIONS
# ============================================================

- conversion to real_money is forbidden
- dividend without profit is forbidden

