# ============================================================
# RELATIONSHIP
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona relationships.

# 2. OPERATIONAL CONTROLS

- party review
- status-window inspection
- relationship-event review
- relationship audit inspection

# 3. FAILURE OPERATIONS

- missing party -> reject
- incompatible status overlap -> block
- hidden relationship mutation -> fail closed

