# ============================================================
# ESTIMATE SYNC CONFLICT META NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# REVIEW FOCUS
# ============================================================

Sync conflict review must verify:

- local change and remote change are not silently merged
- conflict states are explicit in runtime and interface
- pending operation replay does not erase remote result visibility
- publication result and sync result are not confused
- share result and sync result are not confused

# ============================================================
# CHECKPOINTS
# ============================================================

- runtime conflict states exist
- flow conflict handling exists
- policy forbids silent overwrite
- interface exposes conflict clearly
- operations can track conflict events

