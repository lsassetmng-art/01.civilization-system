# ============================================================
# NAME CARD MANAGER OPERATIONS
# ============================================================

status: draft
layer: operations
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling, support procedures, and runtime
administrative rules for NameCardManager.

# ============================================================
# 1. OPERATIONAL PRINCIPLES
# ============================================================

- BusinessOS is the operational truth source.
- Local state is recoverable working state.
- Sync failures must remain visible.
- Publication failures must remain visible.
- App-internal sharing changes must be traceable.
- ERP-wide publication must follow controlled handling.

# ============================================================
# 2. STANDARD OPERATIONAL STATES
# ============================================================

Supported operational states include:
- normal
- offline_working
- pending_sync
- sync_error
- publication_pending
- publication_error
- maintenance

# ============================================================
# 3. SUPPORT ACTIONS
# ============================================================

Support or administrator actions may include:
- inspect sync failure
- retry pending replay
- inspect publication failure
- confirm app share state
- confirm ERP publication state
- inspect relationship visibility issue

# ============================================================
# 4. USER SUPPORT GUIDANCE
# ============================================================

When user reports missing local data:
- verify BusinessOS canonical record first
- verify sync history
- verify device-local cache state
- restore local state from BusinessOS where possible

When user reports share issue:
- verify share target setting
- verify app-internal share state
- verify target authorization

When user reports ERP publication issue:
- verify ERP use setting
- verify approval requirement
- verify publication result and failure cause

# ============================================================
# 5. AUDIT-RELEVANT OPERATIONS
# ============================================================

Operationally important actions:
- create
- update
- delete
- app-internal share
- app-internal share revoke
- ERP publication request
- ERP publication success/failure
- sync replay success/failure

