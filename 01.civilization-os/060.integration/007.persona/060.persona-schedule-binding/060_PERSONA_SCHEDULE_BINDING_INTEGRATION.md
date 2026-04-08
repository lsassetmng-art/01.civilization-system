# ============================================================
# PERSONA SCHEDULE BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona schedule bindings.

# 2. INTEGRATION SCOPE

- schedule bindings to calendar and runtime consumers
- references and constraints to execution-control consumers
- schedule-binding audit to operations

# 3. INTEGRATION RULES

- persona scope, schedule scope, and constraint set must be explicit before handoff
- blocked schedule-binding state must preserve blocking reason
- hidden schedule-binding mutation must not cross boundary
- ambiguous binding or block state must fail closed

