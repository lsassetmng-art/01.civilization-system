# ============================================================
# AUTHENTICATION
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for authentication structures.

# 2. OPERATIONAL CONTROLS

- authentication-profile review
- factor/session review
- active/blocked state inspection
- authentication audit inspection

# 3. FAILURE OPERATIONS

- missing auth scope -> reject
- invalid factor or session binding -> block
- hidden authentication mutation -> fail closed

