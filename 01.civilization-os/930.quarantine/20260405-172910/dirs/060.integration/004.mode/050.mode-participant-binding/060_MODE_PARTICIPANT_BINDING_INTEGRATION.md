# ============================================================
# MODE PARTICIPANT BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 004.mode
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for mode participant bindings.

# 2. INTEGRATION SCOPE

- participant bindings to runtime and matchmaking consumers
- references and rules to approval and eligibility consumers
- mode-participant-binding audit to operations

# 3. INTEGRATION RULES

- participant scope, references, and rules must be explicit before handoff
- blocked participant-binding state must preserve blocking reason
- hidden participant-binding mutation must not cross boundary
- ambiguous participant-binding state must fail closed

