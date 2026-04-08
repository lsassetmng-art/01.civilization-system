# ============================================================
# MODE REWARD BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode reward bindings.

# 2. POLICY RULES

- reward scope, references, and rules must be explicit
- active and blocked reward-binding state must be explicit
- hidden reward-binding mutation is prohibited
- implicit reward execution while blocked is prohibited

# 3. FAILURE RULE

- missing reward scope must reject
- invalid reference or rule binding must reject
- hidden reward-binding mutation must reject

