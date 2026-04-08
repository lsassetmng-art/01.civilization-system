# ============================================================
# MODE PARTICIPANT BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode participant bindings.

# 2. POLICY RULES

- participant scope, references, and rules must be explicit
- active and blocked participant-binding state must be explicit
- hidden participant-binding mutation is prohibited
- implicit participant execution while blocked is prohibited

# 3. FAILURE RULE

- missing participant scope must reject
- invalid reference or rule binding must reject
- hidden participant-binding mutation must reject

