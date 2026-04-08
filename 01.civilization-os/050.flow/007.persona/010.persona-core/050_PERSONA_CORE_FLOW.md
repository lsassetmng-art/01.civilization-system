# ============================================================
# PERSONA CORE
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona core handling.

# 2. TRIGGER

- persona creation/update request
- identity update
- origin update
- status change request

# 3. MAIN FLOW

1. create or resolve persona_definition
2. bind persona_identity
3. bind persona_origin
4. validate persona scope and identity consistency
5. persist persona_status
6. emit audit trace

# 4. FAILURE FLOW

- missing persona scope -> reject
- invalid identity or origin binding -> reject
- hidden persona-core mutation -> fail closed

# 5. OUTPUT

- persona core state
- identity/origin state
- audit record

