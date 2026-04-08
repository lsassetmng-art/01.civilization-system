# ============================================================
# DETAIL CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for detail core handling.

# 2. TRIGGER

- detail create/update request
- detail version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve detail_definition
2. bind detail_scope_binding
3. create or update detail_version
4. validate detail scope and version consistency
5. persist detail_status
6. emit audit trace

# 4. FAILURE FLOW

- missing detail scope -> reject
- invalid binding or version state -> reject
- hidden detail-core mutation -> fail closed

# 5. OUTPUT

- detail core state
- scope/version state
- audit record

