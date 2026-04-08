# ============================================================
# GENERAL LAW
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for general law structures.

# 2. OPERATIONAL CONTROLS

- law-code review
- article/scope review
- revision-state inspection
- law audit inspection

# 3. FAILURE OPERATIONS

- missing jurisdiction scope -> reject
- invalid article binding -> block
- hidden law mutation without revision state -> fail closed

