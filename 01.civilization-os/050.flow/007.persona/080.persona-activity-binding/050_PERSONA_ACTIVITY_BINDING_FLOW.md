# ============================================================
# PERSONA ACTIVITY BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona activity binding handling.

# 2. TRIGGER

- activity binding create/update
- activity reference update
- activity rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve persona_activity_binding
2. bind activity_reference set
3. bind activity_rule set
4. validate persona scope, activity scope, and rules
5. persist activity_binding_status
6. emit audit trace

# 4. FAILURE FLOW

- missing persona or activity scope -> reject
- invalid reference or rule binding -> reject
- hidden activity-binding mutation -> fail closed

# 5. OUTPUT

- activity binding state
- reference/rule/status state
- audit record

