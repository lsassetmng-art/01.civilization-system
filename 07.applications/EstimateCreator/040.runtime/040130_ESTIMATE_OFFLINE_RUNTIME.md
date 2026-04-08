# ============================================================
# ESTIMATE OFFLINE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OFFLINE ENTRY CONDITION
# ============================================================

Offline runtime is allowed only when:

- user previously authenticated successfully
- local auth context remains valid
- protected local storage is available
- application policy allows offline usage for the user/device context

# ============================================================
# 2. OFFLINE-ALLOWED OPERATIONS
# ============================================================

Offline mode allows:

- estimate create
- estimate edit
- memo edit
- line edit
- local pricing recalculation
- template apply from local cache
- QA draft edit where premium state is cached as active
- pending operation queue registration

# ============================================================
# 3. OFFLINE-DISALLOWED OPERATIONS
# ============================================================

Offline mode must not complete:

- live ERP publication execution
- live inventory truth retrieval
- live approval confirmation requiring server truth
- premium entitlement refresh
- share completion confirmation requiring server result

# ============================================================
# 4. OFFLINE STATUS DISPLAY
# ============================================================

The UI must clearly indicate:

- offline mode active
- local draft state
- pending sync count
- pending share requests
- pending publication requests
- cached inventory state
- freshness warnings

