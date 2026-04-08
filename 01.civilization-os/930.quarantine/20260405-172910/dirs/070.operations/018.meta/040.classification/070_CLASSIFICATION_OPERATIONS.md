# ============================================================
# CLASSIFICATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for classification structures.

# 2. OPERATIONAL CONTROLS

- classification review
- target/rule review
- active/revised state inspection
- classification audit inspection

# 3. FAILURE OPERATIONS

- missing classification scope -> reject
- invalid target or rule binding -> block
- hidden classification mutation -> fail closed

