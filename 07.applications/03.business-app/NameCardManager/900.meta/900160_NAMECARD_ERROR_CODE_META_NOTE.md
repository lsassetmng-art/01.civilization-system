# ============================================================
# NAMECARD ERROR CODE META NOTE
# ============================================================

status: draft
layer: meta
system: applications
application: NameCardManager
meta_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Captures meta notes for canonical error code design.

# ============================================================
# 1. CURRENT DECISION
# ============================================================

Current design decision:
- error codes are canonical identifiers
- approval and publication failures remain separated
- conflict and protection failures remain separated
- fail-closed behavior should have explicit error representation

# ============================================================
# 2. OPEN DETAIL AREAS
# ============================================================

May be detailed later:
- exact HTTP/status mapping
- exact user-facing text catalog
- exact localization rules
- exact retryability flags by code

