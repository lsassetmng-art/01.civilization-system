# ============================================================
# LEGAL ROLE BINDING
# OPERATIONS
# ============================================================

status: draft
layer: operations
domain: 013.law
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines operations for legal role bindings.

# 2. OPERATIONAL CONTROLS

- role-definition review
- subject/jurisdiction review
- binding-state inspection
- legal-role audit inspection

# 3. FAILURE OPERATIONS

- missing subject or jurisdiction scope -> reject
- invalid binding state -> block
- hidden legal-role mutation -> fail closed

