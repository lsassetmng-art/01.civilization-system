# ============================================================
# MODE REWARD BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mode reward binding handling.

# 2. TRIGGER

- reward binding create/update
- reward reference update
- reward rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve mode_reward_binding
2. bind reward_reference set
3. bind reward_rule set
4. validate reward scope and binding rules
5. persist reward_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing reward scope -> reject
- invalid reference or rule binding -> reject
- hidden reward-binding mutation -> fail closed

# 5. OUTPUT

- reward binding state
- reference/rule/status
- audit record

