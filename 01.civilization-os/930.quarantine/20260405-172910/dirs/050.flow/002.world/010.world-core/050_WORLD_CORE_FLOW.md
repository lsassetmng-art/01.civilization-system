# ============================================================
# WORLD CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world core handling.

# 2. TRIGGER

- world creation/update request
- world version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve world_definition
2. bind world_scope_binding
3. create or update world_version
4. validate world scope and version consistency
5. persist world_status
6. emit audit trace

# 4. FAILURE FLOW

- missing world scope -> reject
- invalid binding or version state -> reject
- hidden world-core mutation -> fail closed

# 5. OUTPUT

- world core state
- scope/version state
- audit record

