# ============================================================
# BANK ACCOUNT AND LOAN MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: bank-account-and-loan

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED OBJECTS
# ============================================================

- bank_account
- loan_account
- repayment_schedule
- collateral_binding
- delinquency_state


# ============================================================
# 2. FINAL RULE
# ============================================================

Bank account and loan structures are first-class
and must not be collapsed into generic payment records only.
