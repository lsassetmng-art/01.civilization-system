# ============================================================
# STATE MACHINE DETAIL
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for detailed runtime state machines.

# 2. POLICY RULES

- current state, target state, and transition rule must be explicit
- transition guards must fully validate before transition
- hidden transition paths are prohibited
- implicit bypass of guard conditions is prohibited

# 3. FAILURE RULE

- missing transition rule must reject
- guard validation failure must reject
- hidden transition path must reject

