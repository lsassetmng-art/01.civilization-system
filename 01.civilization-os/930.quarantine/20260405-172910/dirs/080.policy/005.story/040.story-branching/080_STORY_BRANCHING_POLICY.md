# ============================================================
# STORY BRANCHING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story branching.

# 2. POLICY RULES

- branch scope, conditions, and targets must be explicit
- active and closed branch state must be explicit
- hidden branch mutation is prohibited
- implicit branch publication without explicit target is prohibited

# 3. FAILURE RULE

- missing branch scope must reject
- invalid condition or target binding must reject
- hidden branch mutation must reject

