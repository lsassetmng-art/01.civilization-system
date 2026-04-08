# ============================================================
# CAREER PATH
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for career path structures.

# 2. POLICY RULES

- path scope, deterministic step order, and requirement set must be explicit
- active and revised path state must be explicit
- hidden path mutation is prohibited
- implicit path publication without resolved steps/requirements is prohibited

# 3. FAILURE RULE

- missing path scope must reject
- invalid step or requirement binding must reject
- hidden path mutation must reject

