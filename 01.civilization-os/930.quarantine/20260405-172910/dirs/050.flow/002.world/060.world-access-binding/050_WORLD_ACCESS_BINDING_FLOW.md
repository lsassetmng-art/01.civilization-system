# ============================================================
# WORLD ACCESS BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for world access binding handling.

# 2. TRIGGER

- access binding create/update
- subject reference update
- access rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve world_access_binding
2. bind access_subject_reference set
3. bind access_rule set
4. validate world scope, subject scope, and rule consistency
5. persist access_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing world or subject scope -> reject
- invalid reference or rule binding -> reject
- hidden access-binding mutation -> fail closed

# 5. OUTPUT

- access binding state
- subject/rule/status
- audit record

