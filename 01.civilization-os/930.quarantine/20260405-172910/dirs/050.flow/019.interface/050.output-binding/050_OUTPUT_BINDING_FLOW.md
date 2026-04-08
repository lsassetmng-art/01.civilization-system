# ============================================================
# OUTPUT BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for output binding handling.

# 2. TRIGGER

- output binding create/update
- output target update
- output rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve output_binding
2. bind output_target_reference set
3. bind output_rule set
4. validate output scope and target/rule consistency
5. persist output_status
6. emit audit trace

# 4. FAILURE FLOW

- missing output scope -> reject
- invalid target or rule binding -> reject
- hidden output-binding mutation -> fail closed

# 5. OUTPUT

- output binding state
- target/rule/status
- audit record

