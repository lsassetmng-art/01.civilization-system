# ============================================================
# PERSONA BEHAVIOR BINDING
# FLOW
# ============================================================

status: draft
layer: flow
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for persona behavior binding.

# 2. TRIGGER

- behavior profile assignment
- context binding update
- behavior rule review request

# 3. MAIN FLOW

1. resolve active behavior_profile
2. resolve target behavior_context
3. validate behavior_binding mode
4. validate behavior_rule set
5. persist binding and active rules
6. emit audit trace

# 4. FAILURE FLOW

- missing active behavior profile -> reject
- invalid context binding -> reject
- conflicting active bindings -> fail closed

# 5. OUTPUT

- behavior binding state
- active rule set
- audit record

