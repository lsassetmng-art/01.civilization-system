# ============================================================
# MODE SESSION BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for mode session binding handling.

# 2. TRIGGER

- session binding create/update
- session reference update
- constraint update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve mode_session_binding
2. bind session_reference set
3. bind session_constraint set
4. validate mode scope, session scope, and constraints
5. persist session_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing mode or session scope -> reject
- invalid reference or constraint binding -> reject
- hidden session-binding mutation -> fail closed

# 5. OUTPUT

- session binding state
- reference/constraint state
- audit record

