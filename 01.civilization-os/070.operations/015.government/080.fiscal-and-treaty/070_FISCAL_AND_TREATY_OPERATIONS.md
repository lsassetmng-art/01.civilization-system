# ============================================================
# FISCAL AND TREATY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for fiscal plans and treaties.

# 2. OPERATIONAL CONTROLS

- fiscal-plan review
- fiscal-commitment review
- treaty-state inspection
- fiscal/treaty audit inspection

# 3. FAILURE OPERATIONS

- invalid fiscal scope -> reject
- missing treaty party state -> block
- hidden treaty mutation -> fail closed

