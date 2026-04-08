# ============================================================
# AUDIT SECURITY
# INTEGRATION
# ============================================================

status: draft
layer: integration
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines integration boundaries for audit security structures.

# 2. INTEGRATION SCOPE

- audit policies to audit and compliance consumers
- audit events and retention rules to storage and review consumers
- audit-security audit to operations

# 3. INTEGRATION RULES

- audit scope, event records, and retention rules must be explicit before handoff
- blocked audit-security state must preserve blocking reason
- hidden audit-security mutation must not cross boundary
- ambiguous audit-security state must fail closed

