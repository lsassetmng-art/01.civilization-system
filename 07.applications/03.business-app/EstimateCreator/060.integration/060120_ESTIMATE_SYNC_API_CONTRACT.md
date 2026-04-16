# ============================================================
# ESTIMATE SYNC API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Sync API contract must support:

- push local changes
- pull remote changes
- object version comparison
- conflict signaling
- pending operation replay result
- last successful sync marker

Required sync response qualities:

- explicit success/failure
- explicit conflict
- no silent overwrite

