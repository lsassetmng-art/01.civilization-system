# ============================================================
# POCKET SECRETARY SYNC POLICY
# ============================================================

status: canonical
layer: 080.policy
system: pocket-secretary
owner: Boss
prepared_by: Zero

policy:
Synchronization must remain explicit, bounded, and state-honest.

rules:
- local_only, pending, confirmed, failed, and conflicted must remain distinct
- timeout or delivery success is not confirmation
- reconnect must not silently overwrite user intent
- conflict should surface review paths where applicable
