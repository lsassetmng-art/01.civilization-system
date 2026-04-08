# ============================================================
# ESTIMATE CREATOR RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY RUNTIME STATES
# ============================================================

EstimateCreator runtime must support the following primary states:

- authenticated_online
- authenticated_offline
- editing
- pending_sync
- sharing_pending
- publication_pending
- publication_completed
- publication_failed
- conflict_detected
- premium_active
- premium_inactive

# ============================================================
# 2. ESTIMATE EDITING RUNTIME
# ============================================================

Estimate editing is locally allowed when the user has
valid application access and valid local auth context.

Estimate editing supports:

- header editing
- line item editing
- memo editing
- template application
- QA update when premium is active
- local pricing recalculation
- local queue registration for future sync

# ============================================================
# 3. AUTHORITY BOUNDARY RUNTIME
# ============================================================

Local completion must not be treated as external authority.

Therefore the application must separate:

- local edit completion
- sync completion
- share completion
- ERP publication completion
- inventory freshness confirmation

These must be represented as different runtime states.

# ============================================================
# 4. SHARE RUNTIME
# ============================================================

App-internal sharing uses preconfigured share targets only.

Share runtime steps:

- user selects shareable object
- user selects enabled share target
- local intent is created
- online execution sends share request through common capability
- result updates share state

Offline mode may store share intent,
but must not falsely mark share completion before result confirmation.

# ============================================================
# 5. ERP PUBLICATION RUNTIME
# ============================================================

ERP publication runtime is request-based.

Application behavior:

- prepare publication payload intent
- validate minimum required fields
- validate publication-allowed state
- register publication request
- wait for shared publication path result
- update publication state

Publication execution result is external to local edit completion.

# ============================================================
# 6. INVENTORY RUNTIME
# ============================================================

Inventory lookup is a reference runtime operation.

Inventory runtime must distinguish:

- no_reference
- cached_reference
- fresh_reference
- expired_reference
- reference_failed

Fresh inventory requires online retrieval.
Cached values must be visually marked as non-authoritative.

# ============================================================
# 7. PREMIUM GATE RUNTIME
# ============================================================

Premium-gated features must be evaluated through effective premium state.

Premium gate affects:

- structured meeting memo mode
- QA management access
- reusable template creation/editing
- expanded template library access

When premium is inactive,
the application must fail closed for premium-only actions
while preserving existing records safely.


# ============================================================
# 8. ENTRY RUNTIME
# ============================================================

EstimateCreator runtime supports two equally valid entry paths:

- standalone launch runtime
- deeplink launch runtime

Standalone launch runtime may show login entry.

Deeplink launch runtime reuses authenticated BusinessOS session context
from the calling app when that session is valid.

# ============================================================
# 9. DEEPLINK SHARED SESSION RUNTIME
# ============================================================

Deeplink runtime steps:

1. deeplink received
2. shared auth context resolved
3. session validated
4. launch context validated
5. workspace entered

If shared session is invalid or unavailable:

- fallback to login entry
  or
- fail closed

according to policy and device/session state.

# ============================================================
# 10. RUNTIME SAFETY
# ============================================================

Skipping redundant login UI must not mean
skipping session validation or authorization checks.

