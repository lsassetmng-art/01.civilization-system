# ============================================================
# MAPPING RULE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for mapping rules.

# 2. POLICY RULES

- mapping scope, field rules, and transform rules must be explicit
- active and revised mapping state must be explicit
- hidden mapping mutation is prohibited
- implicit mapping publication without resolved field/transform set is prohibited

# 3. FAILURE RULE

- missing mapping scope must reject
- invalid field or transform binding must reject
- hidden mapping mutation must reject

