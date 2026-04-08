# ============================================================
# WORLD CORE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for world core structures.

# 2. OPERATIONAL CONTROLS

- world-definition review
- scope/version review
- active/suspended state inspection
- world-core audit inspection

# 3. FAILURE OPERATIONS

- missing world scope -> reject
- invalid binding or version state -> block
- hidden world-core mutation -> fail closed

