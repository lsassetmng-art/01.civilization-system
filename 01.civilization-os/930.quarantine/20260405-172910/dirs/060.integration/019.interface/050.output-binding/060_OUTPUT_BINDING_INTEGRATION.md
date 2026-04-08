# ============================================================
# OUTPUT BINDING
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for output binding structures.

# 2. INTEGRATION SCOPE

- output bindings to rendering and export consumers
- target references and rules to presentation and delivery consumers
- output-binding audit to operations

# 3. INTEGRATION RULES

- output scope, targets, and rules must be explicit before handoff
- blocked output state must preserve blocking reason
- hidden output-binding mutation must not cross boundary
- ambiguous output state must fail closed

