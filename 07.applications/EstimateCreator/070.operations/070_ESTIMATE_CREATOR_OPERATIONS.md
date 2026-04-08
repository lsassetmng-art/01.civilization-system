# ============================================================
# ESTIMATE CREATOR OPERATIONS
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OPERATIONS PURPOSE
# ============================================================

EstimateCreator operational handling must keep the application usable,
auditable,
and recoverable across:

- normal online usage
- offline usage
- sync recovery
- share execution
- ERP publication execution
- premium feature access checks

# ============================================================
# 2. OPERATIONAL TRACKING TARGETS
# ============================================================

The following must be operationally trackable:

- login context state
- estimate creation/update
- memo creation/update
- share request / revoke
- sync attempt / result
- publication request / result
- inventory lookup
- premium entitlement gate outcome
- template application
- QA update

# ============================================================
# 3. OPERATIONAL SAFETY
# ============================================================

Operations must preserve explicit state separation.

In particular, operations must not confuse:

- local save success
- sync success
- share success
- publication success
- inventory freshness success
- premium entitlement verification success

# ============================================================
# 4. DAILY OPERATIONAL VIEW
# ============================================================

At minimum, operations should allow review of:

- pending sync count
- failed operations
- unresolved conflicts
- pending publication requests
- failed publication requests
- recent share actions
- offline backlog state

