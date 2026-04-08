# ============================================================
# RECOMMENDATION SYSTEM
# POLICY
# ============================================================

status: draft
layer: policy
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for education recommendation systems.

# 2. POLICY RULES

- subject scope, rule set, and candidate items must be explicit
- one explicit result state must exist per evaluation cycle
- hidden recommendation mutation is prohibited
- implicit recommendation publication without resolved profile context is prohibited

# 3. FAILURE RULE

- missing subject scope must reject
- invalid rule or item binding must reject
- hidden recommendation mutation must reject

