# ============================================================
# LIFE EVENT
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for persona life events.

# 2. INTEGRATION SCOPE

- trigger source to event creation
- life-event records to relationship/evolution/expectancy consumers
- effect records to downstream systems
- life-event audit to operations

# 3. INTEGRATION RULES

- trigger source must be explicit before event handoff
- event/effect handoff must preserve persona scope
- partial effect publication must not cross boundary
- rejected event creation must preserve reason state

