# ============================================================
# ESTIMATE LOCAL STORE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules for local persistence.

# ============================================================
# 2. LOCAL STORE RULE
# ============================================================

Implementation must persist canonical local objects separately.

Do not collapse:
- estimate header
- estimate lines
- memos
- sync state
- pending operations
- inventory cache
- premium entitlement cache

into one ambiguous storage blob.

# ============================================================
# 3. FIELD RULE
# ============================================================

Local store field names should remain aligned
with exact contract field names.

Avoid introducing parallel local aliases
unless unavoidable at storage layer,
and preserve clear mapping if so.

# ============================================================
# 4. RESTART SAFETY RULE
# ============================================================

Local persistence must survive restart without losing:

- local drafts
- pending operations
- sync state
- launch context where applicable
- cached entitlement state

# ============================================================
# 5. OFFLINE SAFETY RULE
# ============================================================

Local store must not create fake external completion.

Persist:
- local_only
- pending_push
- queued
- cached
- unknown

exactly as-is when those are the true local states.

