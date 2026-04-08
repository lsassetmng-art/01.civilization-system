# ============================================================
# COMPOSITION DETAIL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 040.detail
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for composition detail structures.

# 2. OPERATIONAL CONTROLS

- composition-detail review
- item/rule review
- active/revised state inspection
- composition-detail audit inspection

# 3. FAILURE OPERATIONS

- missing composition scope -> reject
- invalid item or rule binding -> block
- hidden composition-detail mutation -> fail closed

