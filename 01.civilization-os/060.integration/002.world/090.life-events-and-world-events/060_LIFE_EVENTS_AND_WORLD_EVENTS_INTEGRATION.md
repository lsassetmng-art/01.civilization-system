# ============================================================
# LIFE EVENTS AND WORLD EVENTS
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for life and world events.

# 2. INTEGRATION SCOPE

- trigger source to event creation
- event records to effect publication
- event effects to population/economy/persona consumers
- event audit to operations

# 3. INTEGRATION RULES

- trigger source must be explicit
- event publication must preserve scope identity
- effect publication requires validated target scope
- ambiguous effect routing must not cross boundary

