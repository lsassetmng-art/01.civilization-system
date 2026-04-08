# ============================================================
# STORY SCENE
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story scenes.

# 2. POLICY RULES

- scene scope, participant set, and trigger set must be explicit
- active and completed scene state must be explicit
- hidden scene mutation is prohibited
- implicit scene completion without explicit participants/triggers is prohibited

# 3. FAILURE RULE

- missing scene scope must reject
- invalid participant or trigger binding must reject
- hidden scene mutation must reject

