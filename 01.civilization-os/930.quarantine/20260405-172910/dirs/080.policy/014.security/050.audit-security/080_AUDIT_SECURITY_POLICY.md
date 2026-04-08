# ============================================================
# AUDIT SECURITY
# POLICY
# ============================================================

status: draft
layer: policy
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines policy rules for audit security structures.

# 2. POLICY RULES

- audit scope, event records, and retention rules must be explicit
- active and blocked audit-security state must be explicit
- hidden audit-security mutation is prohibited
- implicit audit execution while blocked is prohibited

# 3. FAILURE RULE

- missing audit scope must reject
- invalid event or retention binding must reject
- hidden audit-security mutation must reject

