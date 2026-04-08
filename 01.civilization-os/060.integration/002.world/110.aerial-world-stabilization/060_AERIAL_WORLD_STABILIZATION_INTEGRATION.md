# ============================================================
# AERIAL WORLD STABILIZATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for Aerial world stabilization.

# 2. INTEGRATION SCOPE

- support signals to assistive context
- assistive action to user/operator-visible channels
- escalation records to stronger intervention path
- stabilization audit to operations

# 3. INTEGRATION RULES

- assistive action must preserve support identity
- escalation requires explicit target and reason
- hidden direct control must not cross support boundary
- ambiguous support routing must fail closed

