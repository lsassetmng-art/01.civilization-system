# ============================================================
# LINEAGE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for lineage structures.

# 2. OPERATIONAL CONTROLS

- lineage review
- source/rule review
- active/blocked state inspection
- lineage audit inspection

# 3. FAILURE OPERATIONS

- missing lineage scope -> reject
- invalid source or rule binding -> block
- hidden lineage mutation -> fail closed

