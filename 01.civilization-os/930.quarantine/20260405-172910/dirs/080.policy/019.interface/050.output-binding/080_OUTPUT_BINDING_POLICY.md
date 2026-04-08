# ============================================================
# OUTPUT BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for output binding structures.

# 2. POLICY RULES

- output scope, targets, and rules must be explicit
- active and blocked output state must be explicit
- hidden output-binding mutation is prohibited
- implicit output execution while blocked is prohibited

# 3. FAILURE RULE

- missing output scope must reject
- invalid target or rule binding must reject
- hidden output-binding mutation must reject

