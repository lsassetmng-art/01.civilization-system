# ============================================================
# PERSONA SCHEDULE BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona schedule binding handling.

# 2. TRIGGER

- schedule binding create/update
- schedule reference update
- constraint update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve persona_schedule_binding
2. bind schedule_reference set
3. bind schedule_constraint set
4. validate persona scope, schedule scope, and constraints
5. persist schedule_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing persona or schedule scope -> reject
- invalid reference or constraint binding -> reject
- hidden schedule-binding mutation -> fail closed

# 5. OUTPUT

- schedule binding state
- reference/constraint state
- audit record

