# ============================================================
# MODE RULE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mode rules.

# 2. POLICY RULES

- rule scope, items, and conditions must be explicit
- active and revised rule state must be explicit
- hidden mode-rule mutation is prohibited
- implicit rule publication without resolved item/condition set is prohibited

# 3. FAILURE RULE

- missing rule scope must reject
- invalid item or condition binding must reject
- hidden mode-rule mutation must reject

