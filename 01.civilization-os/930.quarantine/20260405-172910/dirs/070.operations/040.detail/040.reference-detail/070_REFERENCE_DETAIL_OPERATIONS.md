# ============================================================
# REFERENCE DETAIL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for reference detail structures.

# 2. OPERATIONAL CONTROLS

- reference-detail review
- target/rule review
- active/revised state inspection
- reference-detail audit inspection

# 3. FAILURE OPERATIONS

- missing reference scope -> reject
- invalid target or rule binding -> block
- hidden reference-detail mutation -> fail closed

