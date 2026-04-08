# ============================================================
# SYNC BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for sync bindings.

# 2. POLICY RULES

- sync scope, target set, and rule set must be explicit
- active and blocked sync state must be explicit
- hidden sync mutation is prohibited
- implicit sync execution while blocked is prohibited

# 3. FAILURE RULE

- missing sync scope must reject
- invalid target or rule binding must reject
- hidden sync mutation must reject

