# ============================================================
# RECOMMENDATION SYSTEM
# FLOW
# ============================================================

status: draft
layer: flow
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for education recommendation systems.

# 2. TRIGGER

- recommendation profile creation/update
- recommendation refresh
- new candidate item/rule update

# 3. MAIN FLOW

1. create or resolve recommendation_profile
2. bind recommendation_rule set
3. bind candidate recommendation_item set
4. evaluate recommendation logic
5. persist recommendation_result
6. emit audit trace

# 4. FAILURE FLOW

- missing subject scope -> reject
- invalid rule or item binding -> reject
- hidden recommendation mutation -> fail closed

# 5. OUTPUT

- recommendation profile state
- item/result state
- audit record

