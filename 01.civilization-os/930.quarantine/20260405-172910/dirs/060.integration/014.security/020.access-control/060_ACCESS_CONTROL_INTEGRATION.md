# ============================================================
# ACCESS CONTROL
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for access control structures.

# 2. INTEGRATION SCOPE

- access-control policies to runtime and authorization consumers
- subjects and permission rules to enforcement consumers
- access-control audit to operations

# 3. INTEGRATION RULES

- access scope, subject set, and permission rules must be explicit before handoff
- blocked access-control state must preserve blocking reason
- hidden access-control mutation must not cross boundary
- ambiguous access-control state must fail closed

