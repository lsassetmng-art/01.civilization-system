# ============================================================
# ESTIMATE CREATOR IMPLEMENTATION
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. IMPLEMENTATION GOAL
# ============================================================

Implementation must realize a mobile-friendly,
offline-capable estimate workflow
without breaking ERP authority boundaries.

# ============================================================
# 2. IMPLEMENTATION PRIORITIES
# ============================================================

Priority order:

1. login and protected local context
2. estimate core create/edit/list/detail
3. local queue and sync visibility
4. sharing integration reuse
5. ERP publication request integration reuse
6. inventory reference
7. premium feature gate
8. QA and template enhancements

# ============================================================
# 3. SHARED CAPABILITY REUSE
# ============================================================

Sharing, sync, and ERP publication logic
should reuse the same common approach as NameCardManager
rather than introducing app-private incompatible behavior.


# ============================================================
# 4. ENTRY IMPLEMENTATION
# ============================================================

Implementation must support dual-entry behavior.

Standalone launch uses normal login-capable entry.

Deeplink launch must resolve and validate shared BusinessOS session context
before route entry, without requiring redundant login UI when valid.

Implementation must avoid transporting raw credentials
inside deeplink business parameters.

