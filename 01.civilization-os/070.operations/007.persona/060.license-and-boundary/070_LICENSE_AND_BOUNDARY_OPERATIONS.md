# ============================================================
# LICENSE AND BOUNDARY
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for license and boundary control.

# 2. OPERATIONAL CONTROLS

- license-window review
- grant/rule review
- boundary decision inspection
- boundary audit review

# 3. FAILURE OPERATIONS

- missing valid license -> reject
- missing grant/rule -> block
- ambiguous validity window -> fail closed

