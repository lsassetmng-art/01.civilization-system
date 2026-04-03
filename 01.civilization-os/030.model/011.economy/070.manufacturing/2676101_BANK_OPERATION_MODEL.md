# ============================================================
# BANK OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: bank-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- account_open
- deposit
- withdrawal
- loan_issue
- repayment_cycle
- delinquency_detection
- recovery_action_if_needed


# ============================================================
# 2. FINAL RULE
# ============================================================

Bank operation must be payment-rule-aware and collateral-aware.
