# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for Aerial runtime intervention.

# 2. INTEGRATION SCOPE

- Aerial runtime context to assistive evaluators
- assistive actions to runtime support consumers
- escalation records to stronger control/review systems
- intervention audit to operations

# 3. INTEGRATION RULES

- assistive identity and escalation scope must be explicit before handoff
- hidden direct control must not cross assistive boundary
- escalation handoff must preserve reason and scope
- ambiguous support/escalation state must fail closed

