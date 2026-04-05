# ============================================================
# NAMECARD ERROR CODE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: error_code
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for canonical error code usage.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- emit canonical error codes from API and service boundaries
- preserve canonical error code through client handling where possible
- distinguish validation, authorization, conflict, approval,
  and publication failures

# ============================================================
# 2. UI DIRECTION
# ============================================================

UI should:
- map canonical codes to readable text
- show actionable guidance where relevant
- preserve special handling for:
  - sync conflict
  - approval required
  - approval rejected
  - returned for fix
  - publication failed

# ============================================================
# 3. LOGGING DIRECTION
# ============================================================

Audit and operational logs should store:
- canonical error code
- operation context
- related request or publication id where available

