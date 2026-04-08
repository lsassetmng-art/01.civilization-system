# ============================================================
# CIVILIZATION PLANNING BASELINE
# IMPLEMENTATION
# ============================================================

status: draft
layer: implementation
domain: 017.runtime

# 1. PURPOSE

Defines baseline snapshot used for forecast and simulation.

# 2. STORAGE

- baseline_id
- scope_type
- scope_id
- snapshot_ref
- baseline_version
- created_at

# 3. EXECUTION

1. freeze baseline snapshot
2. assign baseline version
3. expose read-only reference to planning runs

# 4. FAILURE HANDLING

Fail closed on mutable baseline or missing snapshot integrity.
