# ============================================================
# STORY EVENT BINDING
# POLICY
# ============================================================

status: draft
layer: policy
domain: 005.story
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for story event bindings.

# 2. POLICY RULES

- event scope, references, and rules must be explicit
- active and blocked binding state must be explicit
- hidden event-binding mutation is prohibited
- implicit event execution while blocked is prohibited

# 3. FAILURE RULE

- missing event scope must reject
- invalid reference or rule binding must reject
- hidden event-binding mutation must reject

