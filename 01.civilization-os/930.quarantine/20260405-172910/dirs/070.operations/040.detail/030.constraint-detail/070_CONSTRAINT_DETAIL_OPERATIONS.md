# ============================================================
# CONSTRAINT DETAIL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for constraint detail structures.

# 2. OPERATIONAL CONTROLS

- constraint-detail review
- item/rule review
- active/blocked state inspection
- constraint-detail audit inspection

# 3. FAILURE OPERATIONS

- missing constraint scope -> reject
- invalid item or rule binding -> block
- hidden constraint-detail mutation -> fail closed

