# ============================================================
# NAMECARD AUDIT APPROVAL IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: audit_approval
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for audit logging, history entries,
approval events, and shared ERP publication integration.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended separation:
- audit writer
- history writer
- approval event adapter
- shared ERP publication adapter

# ============================================================
# 2. LOGGING DIRECTION
# ============================================================

Implementation should separately capture:
- technical/audit event
- user-visible history summary
- approval workflow event
- ERP publication result event

# ============================================================
# 3. SHARED PUBLICATION DIRECTION
# ============================================================

Implementation should:
- call shared BusinessOS publication capability
- avoid direct ERP connector logic inside NameCardManager
- map shared capability result into NameCardManager states
- preserve approval-required vs published distinction

