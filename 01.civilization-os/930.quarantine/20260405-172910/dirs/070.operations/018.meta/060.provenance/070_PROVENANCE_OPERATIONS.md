# ============================================================
# PROVENANCE
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 018.meta
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for provenance structures.

# 2. OPERATIONAL CONTROLS

- provenance review
- actor/rule review
- active/blocked state inspection
- provenance audit inspection

# 3. FAILURE OPERATIONS

- missing provenance scope -> reject
- invalid actor or rule binding -> block
- hidden provenance mutation -> fail closed

