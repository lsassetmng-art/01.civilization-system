# ============================================================
# INPUT BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for input binding handling.

# 2. TRIGGER

- input binding create/update
- input target update
- input rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve input_binding
2. bind input_target_reference set
3. bind input_rule set
4. validate input scope and target/rule consistency
5. persist input_status
6. emit audit trace

# 4. FAILURE FLOW

- missing input scope -> reject
- invalid target or rule binding -> reject
- hidden input-binding mutation -> fail closed

# 5. OUTPUT

- input binding state
- target/rule/status
- audit record

