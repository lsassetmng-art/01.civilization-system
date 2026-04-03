# ============================================================
# SECURITIES FIRM OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: securities-firm-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- securities_account_open
- order_intent_received
- execution_routed
- tender_processed
- settlement_reflected
- holding_updated
- corporate_action_reflected


# ============================================================
# 2. FINAL RULE
# ============================================================

Securities firm operation is intermediary-centric,
not issuer-centric or buyer-direct.
