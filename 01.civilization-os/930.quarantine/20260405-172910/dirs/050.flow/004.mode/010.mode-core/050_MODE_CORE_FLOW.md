# ============================================================
# MODE CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mode core handling.

# 2. TRIGGER

- mode creation/update request
- mode version publication
- scope-binding update
- status change request

# 3. MAIN FLOW

1. create or resolve mode_definition
2. bind mode_scope_binding
3. create or update mode_version
4. validate mode scope and version consistency
5. persist mode_status
6. emit audit trace

# 4. FAILURE FLOW

- missing mode scope -> reject
- invalid binding or version state -> reject
- hidden mode-core mutation -> fail closed

# 5. OUTPUT

- mode core state
- scope/version state
- audit record

