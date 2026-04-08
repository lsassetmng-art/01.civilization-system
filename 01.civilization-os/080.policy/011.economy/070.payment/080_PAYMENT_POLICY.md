# ============================================================
# PAYMENT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 011.economy
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for payments.

# 2. POLICY RULES

- payer and payee scope must be explicit
- one payment request must end in one explicit execution or failure state
- implicit retry without request state is prohibited
- hidden payment mutation is prohibited

# 3. FAILURE RULE

- invalid payer/payee scope must reject
- missing method reference must reject
- ambiguous execution outcome must reject

