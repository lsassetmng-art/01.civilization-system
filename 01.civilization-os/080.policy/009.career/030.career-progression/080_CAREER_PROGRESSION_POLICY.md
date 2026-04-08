# ============================================================
# CAREER PROGRESSION
# POLICY
# ============================================================

status: draft
layer: policy
domain: 009.career
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for career progression structures.

# 2. POLICY RULES

- subject scope, progression scope, and state transition must be explicit
- attributable level change must be preserved
- hidden progression mutation is prohibited
- implicit result publication without explicit event/state progression is prohibited

# 3. FAILURE RULE

- missing subject or progression scope must reject
- invalid event or state binding must reject
- hidden progression mutation must reject

