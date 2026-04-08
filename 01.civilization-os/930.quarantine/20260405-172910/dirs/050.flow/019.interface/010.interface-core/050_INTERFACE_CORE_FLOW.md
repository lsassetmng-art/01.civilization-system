# ============================================================
# INTERFACE CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for interface core handling.

# 2. TRIGGER

- interface create/update request
- interface version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve interface_definition
2. bind interface_scope_binding
3. create or update interface_version
4. validate interface scope and version consistency
5. persist interface_status
6. emit audit trace

# 4. FAILURE FLOW

- missing interface scope -> reject
- invalid binding or version state -> reject
- hidden interface-core mutation -> fail closed

# 5. OUTPUT

- interface core state
- scope/version state
- audit record

