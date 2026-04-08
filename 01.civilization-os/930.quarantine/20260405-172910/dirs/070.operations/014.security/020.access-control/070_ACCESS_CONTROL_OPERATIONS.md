# ============================================================
# ACCESS CONTROL
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for access control structures.

# 2. OPERATIONAL CONTROLS

- access-control review
- subject/rule review
- active/blocked state inspection
- access-control audit inspection

# 3. FAILURE OPERATIONS

- missing access or subject scope -> reject
- invalid subject or permission binding -> block
- hidden access-control mutation -> fail closed

