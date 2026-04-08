# ============================================================
# SYNC BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 012.integration
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for sync binding handling.

# 2. TRIGGER

- sync binding create/update
- target reference update
- sync rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve sync_binding
2. bind sync_target_reference set
3. bind sync_rule set
4. validate sync scope and target/rule consistency
5. persist sync_status
6. emit audit trace

# 4. FAILURE FLOW

- missing sync scope -> reject
- invalid target or rule binding -> reject
- hidden sync mutation -> fail closed

# 5. OUTPUT

- sync binding state
- target/rule/status
- audit record

