# ============================================================
# NAMECARD SYNC CONFLICT META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Captures open design notes around sync conflict handling.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- BusinessOS is canonical
- local deferred changes are preserved
- silent overwrite is prohibited
- explicit resolution path is required for conflict

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field-level merge rule
- exact UI for conflict comparison
- exact administrator intervention path
- exact retry thresholds before conflict promotion

