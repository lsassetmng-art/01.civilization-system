# ============================================================
# PERSONA PLACEMENT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for persona placement.

# 2. OPERATIONAL CONTROLS

- placement review
- target-scope validation review
- conflict-state monitoring
- placement audit inspection

# 3. FAILURE OPERATIONS

- missing scope -> reject
- conflicting placement -> block
- invalid constraint binding -> fail closed

