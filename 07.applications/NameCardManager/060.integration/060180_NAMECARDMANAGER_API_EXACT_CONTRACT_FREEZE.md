# ============================================================
# NAMECARDMANAGER API EXACT CONTRACT FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Freezes the exact API boundary direction before implementation.

# ============================================================
# 1. CONTRACT PRINCIPLES
# ============================================================

- sync API is separate from ERP publication API
- validation_code is separate from error_code
- canonical_version is used for update/sync safety
- request/response naming must remain stable
- UI state, error code, and validation code remain distinct layers

# ============================================================
# 2. REQUEST/RESPONSE NAMING
# ============================================================

Recommended naming:
- snake_case
- stable JSON keys
- explicit required vs optional distinction

# ============================================================
# 3. UPDATE / SYNC SAFETY
# ============================================================

- update-oriented requests may carry canonical_version
- sync push carries local_known_version where applicable
- conflict must not be collapsed into generic failure

# ============================================================
# 4. ERP PUBLICATION BOUNDARY
# ============================================================

- ERP publication request targets shared BusinessOS capability
- this is not direct application-to-ERP transmission
- approval_required is distinct from publication_submitted
- approved is distinct from published

# ============================================================
# 5. RESPONSE RULES
# ============================================================

Responses should:
- always include success
- include canonical identifiers where applicable
- include validation_code for prerequisite failure
- include error_code for execution/path failure
- preserve approval/publication distinction

# ============================================================
# 6. IMPLEMENTATION ENTRY CONDITION
# ============================================================

Implementation may proceed after:
- field-level schema is accepted
- enum values are frozen
- shared BusinessOS publication connection spec is frozen

