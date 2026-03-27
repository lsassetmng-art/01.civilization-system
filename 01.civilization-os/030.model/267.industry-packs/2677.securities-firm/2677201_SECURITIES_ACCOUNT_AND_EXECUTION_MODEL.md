# ============================================================
# SECURITIES ACCOUNT AND EXECUTION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: securities-account-and-execution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SUPPORTED OBJECTS
# ============================================================

- securities_account
- order_intent
- tob_tender_intent
- block_trade_intent
- subscription_intent
- execution_record
- settlement_record


# ============================================================
# 2. FINAL RULE
# ============================================================

Execution, tender, and subscription are distinct object families.
