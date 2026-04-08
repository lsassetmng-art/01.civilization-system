# ============================================================
# MODE SESSION BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mode session bindings.

# 2. INTEGRATION SCOPE

- session bindings to session/runtime consumers
- references and constraints to execution-control consumers
- mode-session-binding audit to operations

# 3. INTEGRATION RULES

- mode scope, session scope, and constraints must be explicit before handoff
- blocked binding state must preserve blocking reason
- hidden session-binding mutation must not cross boundary
- ambiguous session-binding state must fail closed

