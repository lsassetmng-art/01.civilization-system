# ============================================================
# PERSONA ACTIVITY BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona activity bindings.

# 2. INTEGRATION SCOPE

- activity bindings to activity/runtime consumers
- activity references and rules to behavior and approval consumers
- activity-binding audit to operations

# 3. INTEGRATION RULES

- persona scope, activity scope, and rule set must be explicit before handoff
- blocked activity-binding state must preserve blocking reason
- hidden activity-binding mutation must not cross boundary
- ambiguous activity-binding state must fail closed

