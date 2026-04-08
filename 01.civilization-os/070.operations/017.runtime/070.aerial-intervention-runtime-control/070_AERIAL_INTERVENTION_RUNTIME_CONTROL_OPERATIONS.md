# ============================================================
# AERIAL INTERVENTION RUNTIME CONTROL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for Aerial runtime intervention.

# 2. OPERATIONAL CONTROLS

- assistive-context review
- assistive-action review
- escalation review
- intervention audit inspection

# 3. FAILURE OPERATIONS

- missing support context -> reject
- invalid escalation scope -> block
- hidden direct control through assistive path -> fail closed

