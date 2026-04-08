# ============================================================
# META CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for meta core handling.

# 2. TRIGGER

- meta create/update request
- meta version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve meta_definition
2. bind meta_scope_binding
3. create or update meta_version
4. validate meta scope and version consistency
5. persist meta_status
6. emit audit trace

# 4. FAILURE FLOW

- missing meta scope -> reject
- invalid binding or version state -> reject
- hidden meta-core mutation -> fail closed

# 5. OUTPUT

- meta core state
- scope/version state
- audit record

