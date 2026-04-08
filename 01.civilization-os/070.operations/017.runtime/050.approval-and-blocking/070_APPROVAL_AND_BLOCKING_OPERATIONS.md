# ============================================================
# APPROVAL AND BLOCKING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 017.runtime
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for approval and blocking.

# 2. OPERATIONAL CONTROLS

- request review
- block-rule review
- decision outcome inspection
- approval/block audit inspection

# 3. FAILURE OPERATIONS

- missing request scope -> reject
- hidden block without record -> block
- ambiguous approval/block state -> fail closed

