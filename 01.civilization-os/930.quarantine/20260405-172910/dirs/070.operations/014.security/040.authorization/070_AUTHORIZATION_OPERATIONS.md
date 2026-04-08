# ============================================================
# AUTHORIZATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for authorization structures.

# 2. OPERATIONAL CONTROLS

- authorization-policy review
- subject/rule review
- active/blocked state inspection
- authorization audit inspection

# 3. FAILURE OPERATIONS

- missing authorization or subject scope -> reject
- invalid subject or rule binding -> block
- hidden authorization mutation -> fail closed

