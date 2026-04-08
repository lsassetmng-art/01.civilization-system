# ============================================================
# REWARD DEFINITION
# FLOW
# ============================================================

status: draft
layer: flow
domain: 010.reward
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for reward definition control.

# 2. TRIGGER

- reward definition create/update request
- reward source update
- reward condition/value review

# 3. MAIN FLOW

1. create or resolve reward_definition
2. bind reward_source set
3. bind reward_condition set
4. bind reward_value_set
5. validate version compatibility
6. persist and emit audit trace

# 4. FAILURE FLOW

- missing source -> reject
- invalid condition/value compatibility -> reject
- ambiguous version state -> fail closed

# 5. OUTPUT

- reward definition state
- source/condition/value state
- audit record

