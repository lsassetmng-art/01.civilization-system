# ============================================================
# NAMECARD AUDIT APPROVAL META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: audit_approval
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for audit, history, approval events,
and shared ERP publication usage.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- ERP-wide publication uses shared BusinessOS capability
- application-local direct ERP transmission is not the design
- audit, history, approval event, and publication result are separated

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact audit action code catalog
- exact history summary wording rules
- exact approval event mapping from shared capability
- exact retention rules for audit/history records

