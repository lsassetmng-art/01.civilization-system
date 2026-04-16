# ============================================================
# NAMECARD API META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: api_contract
owner: Boss
prepared_by: Zero

purpose:
Captures open design notes around API contract detail.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- API boundaries are explicit
- sync, share, and ERP publication are separated
- approval-required is distinct from published
- conflict is distinct from generic failure

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact field schema
- exact error code catalog
- exact pagination/query rules
- exact batch request boundaries
- exact idempotency behavior

