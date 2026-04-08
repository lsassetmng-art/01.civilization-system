# ============================================================
# LIFE EVENT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona life events.

# 2. OPERATIONAL CONTROLS

- trigger review
- event/effect inspection
- publication review
- life-event audit inspection

# 3. FAILURE OPERATIONS

- missing trigger source -> reject
- ambiguous event scope -> block
- partial publication -> fail closed

