# ============================================================
# NAMECARD SYNC CONFLICT RUNTIME
# ============================================================

status: draft
layer: runtime
system: applications
application: NameCardManager
runtime: sync_conflict
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior when local offline changes conflict
with the canonical BusinessOS state.

# ============================================================
# 1. RUNTIME GOAL
# ============================================================

Conflict runtime exists to prevent silent overwrite when
local deferred changes and BusinessOS canonical state differ
in incompatible ways.

# ============================================================
# 2. CONFLICT TRIGGERS
# ============================================================

Conflict may occur when:
- local offline update targets a card changed in BusinessOS
- local offline delete targets a card changed in BusinessOS
- local offline share-related action targets changed share state
- local offline detail fields differ from newer canonical fields
- local replay references record state no longer valid

# ============================================================
# 3. REQUIRED BEHAVIOR
# ============================================================

When conflict is detected:
- do not silently discard local change
- do not silently overwrite canonical BusinessOS state
- mark sync state as conflict
- preserve local pending operation visibility
- preserve canonical record visibility
- require explicit resolution path

# ============================================================
# 4. ALLOWED RUNTIME OUTCOMES
# ============================================================

Allowed outcomes:
- local change accepted and applied
- canonical state kept and local operation dropped with visibility
- manual merge required
- local record refresh from canonical after explicit resolution

# ============================================================
# 5. SHARE-RELATED CONFLICTS
# ============================================================

For app-internal sharing:
- target changes may require re-evaluation
- revoke and add operations must not be silently reordered

For ERP-wide sharing:
- pending or published ERP state must not be overwritten by
  ordinary offline local replay

