# ============================================================
# MEASUREMENT DETAIL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for measurement detail structures.

# 2. OPERATIONAL CONTROLS

- measurement-detail review
- item/rule review
- active/revised state inspection
- measurement-detail audit inspection

# 3. FAILURE OPERATIONS

- missing measurement scope -> reject
- invalid item or rule binding -> block
- hidden measurement-detail mutation -> fail closed

