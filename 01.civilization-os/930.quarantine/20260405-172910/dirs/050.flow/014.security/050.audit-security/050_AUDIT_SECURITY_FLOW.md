# ============================================================
# AUDIT SECURITY
# FLOW
# ============================================================

status: draft
layer: flow
domain: 014.security
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical flow for audit security handling.

# 2. TRIGGER

- audit policy create/update
- audit event ingest
- retention-rule update
- block/unblock request

# 3. MAIN FLOW

1. create or resolve security_audit_policy
2. create or bind audit_event_record set
3. bind audit_retention_rule set
4. validate audit scope, event, and retention consistency
5. persist audit_security_status
6. emit audit trace

# 4. FAILURE FLOW

- missing audit scope -> reject
- invalid event or retention binding -> reject
- hidden audit-security mutation -> fail closed

# 5. OUTPUT

- audit-security state
- event/rule/status
- audit record

