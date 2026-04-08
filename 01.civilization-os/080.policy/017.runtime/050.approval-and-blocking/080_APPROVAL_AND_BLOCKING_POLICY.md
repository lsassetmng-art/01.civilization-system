# ============================================================
# APPROVAL AND BLOCKING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for approval and blocking.

# 2. POLICY RULES

- request scope, decision, and block rule must be explicit
- hidden blocking without record is prohibited
- approval and block states must not coexist ambiguously
- implicit unblock without decision path is prohibited

# 3. FAILURE RULE

- missing request scope must reject
- hidden block without record must reject
- ambiguous approval/block state must reject

