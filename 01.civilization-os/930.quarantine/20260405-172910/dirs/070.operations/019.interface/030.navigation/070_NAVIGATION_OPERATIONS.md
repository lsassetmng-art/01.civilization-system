# ============================================================
# NAVIGATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 019.interface
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for navigation structures.

# 2. OPERATIONAL CONTROLS

- navigation review
- target/rule review
- active/blocked state inspection
- navigation audit inspection

# 3. FAILURE OPERATIONS

- missing navigation scope -> reject
- invalid target or rule binding -> block
- hidden navigation mutation -> fail closed

