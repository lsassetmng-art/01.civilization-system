# ============================================================
# STORY CORE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story core structures.

# 2. POLICY RULES

- story scope, scope binding, and version must be explicit
- active and suspended story state must be explicit
- hidden story-core mutation is prohibited
- implicit story activation without resolved scope/version is prohibited

# 3. FAILURE RULE

- missing story scope must reject
- invalid binding or version state must reject
- hidden story-core mutation must reject

