# ============================================================
# UNIT DEPLOYMENT
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 016.war
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for unit deployment structures.

# 2. OPERATIONAL CONTROLS

- deployment review
- unit/rule review
- active/blocked state inspection
- unit-deployment audit inspection

# 3. FAILURE OPERATIONS

- missing deployment or unit scope -> reject
- invalid unit or rule binding -> block
- hidden unit-deployment mutation -> fail closed

