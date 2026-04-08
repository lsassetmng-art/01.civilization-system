# ============================================================
# AUTHORIZATION
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for authorization structures.

# 2. INTEGRATION SCOPE

- authorization policies to runtime and execution consumers
- subjects and rules to control consumers
- authorization audit to operations

# 3. INTEGRATION RULES

- authorization scope, subject set, and rules must be explicit before handoff
- blocked authorization state must preserve blocking reason
- hidden authorization mutation must not cross boundary
- ambiguous authorization state must fail closed

