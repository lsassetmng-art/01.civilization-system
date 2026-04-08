# ============================================================
# REWARD GRANT
# POLICY
# ============================================================

status: draft
layer: policy
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for reward grants.

# 2. POLICY RULES

- source and target scope must be explicit
- grant approval must precede application
- unauthorized grants are prohibited
- implicit applied-state mutation is prohibited

# 3. FAILURE RULE

- missing target must reject
- unauthorized grant must reject
- ambiguous approval/applied state must reject

