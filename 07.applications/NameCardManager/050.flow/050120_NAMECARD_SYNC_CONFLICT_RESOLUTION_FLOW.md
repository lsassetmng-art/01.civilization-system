# ============================================================
# NAMECARD SYNC CONFLICT RESOLUTION FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
flow: sync_conflict_resolution
owner: Boss
prepared_by: Zero

purpose:
Defines the operational flow for handling sync conflict.

# ============================================================
# 1. FLOW GOAL
# ============================================================

The conflict resolution flow provides a safe path for handling
differences between deferred local operations and BusinessOS
canonical state.

# ============================================================
# 2. ENTRY CONDITIONS
# ============================================================

This flow begins when:
- replay starts after offline work
- system compares pending operations with canonical state
- conflict is detected

# ============================================================
# 3. FLOW
# ============================================================

1. System loads pending local operation.
2. System loads latest canonical BusinessOS state.
3. System compares affected fields and operational context.
4. If no conflict exists:
   - apply local operation
   - mark sync as synced
5. If conflict exists:
   - mark sync state as conflict
   - preserve pending operation
   - expose conflict visibility to user or administrator
   - wait for explicit resolution

# ============================================================
# 4. RESOLUTION PATHS
# ============================================================

Possible resolution paths:
- keep BusinessOS canonical state
- apply local version over canonical where policy allows
- manually merge selected fields
- cancel local pending operation

# ============================================================
# 5. POST-RESOLUTION FLOW
# ============================================================

After resolution:
- update canonical state where required
- clear or update pending operation
- refresh local state from BusinessOS
- remove conflict state if resolved successfully

