# ============================================================
# ESTIMATE SYNC CONFLICT RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This runtime defines how EstimateCreator behaves
when local and remote states diverge.

# ============================================================
# 2. CONFLICT TRIGGERS
# ============================================================

Conflict may be triggered when:

- same object changed locally and remotely
- remote version advanced while local pending changes exist
- share state changed remotely while local revoke request exists
- publication-related state returned while local object changed again

# ============================================================
# 3. CONFLICT RULE
# ============================================================

Conflict must be explicit.

The application must never silently discard:
- local changes
- remote changes
- publication results
- share state changes

# ============================================================
# 4. CONFLICT OUTCOME STATES
# ============================================================

- local_wins_manual
- remote_wins_manual
- merged_manual
- retry_required
- blocked_until_review

