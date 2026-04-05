# ============================================================
# NAMECARD API IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: api_guide
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for NameCardManager API endpoints
and client integration.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Recommended separation:
- namecard command endpoints
- namecard query endpoints
- sync endpoints
- app share endpoints
- ERP publication endpoints
- relationship query endpoints

# ============================================================
# 2. VALIDATION DIRECTION
# ============================================================

Validate:
- requester authorization
- required identifiers
- allowed state transition
- share target eligibility
- ERP publication eligibility
- canonical version context where needed

# ============================================================
# 3. FAILURE DIRECTION
# ============================================================

Return explicit failures for:
- invalid payload
- unauthorized action
- state conflict
- missing ERP setting
- approval boundary stop
- protected access violation

# ============================================================
# 4. CLIENT DIRECTION
# ============================================================

Client implementation should:
- keep pending operations explicit
- treat conflict separately from generic failure
- treat approval-required separately from published
- refresh canonical state after successful mutation
- preserve failure visibility in UI

