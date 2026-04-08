# ============================================================
# WORLD TRANSITION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for world transitions.

# 2. INTEGRATION SCOPE

- transitions to runtime and execution consumers
- triggers and guards to validation and control consumers
- world-transition audit to operations

# 3. INTEGRATION RULES

- from/to state, triggers, and guards must be explicit before handoff
- blocked transition state must preserve blocking reason
- hidden world-transition mutation must not cross boundary
- ambiguous world-transition state must fail closed

