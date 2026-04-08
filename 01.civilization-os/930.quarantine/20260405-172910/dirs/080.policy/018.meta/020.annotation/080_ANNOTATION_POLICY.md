# ============================================================
# ANNOTATION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for annotation structures.

# 2. POLICY RULES

- annotation scope, target references, and rules must be explicit
- active and revised annotation state must be explicit
- hidden annotation mutation is prohibited
- implicit annotation publication without resolved target/rule is prohibited

# 3. FAILURE RULE

- missing annotation scope must reject
- invalid target or rule binding must reject
- hidden annotation mutation must reject

