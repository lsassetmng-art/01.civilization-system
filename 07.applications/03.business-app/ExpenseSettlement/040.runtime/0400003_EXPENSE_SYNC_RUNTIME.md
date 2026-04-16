# ============================================================
# EXPENSE SYNC RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

sync_states:
- local_only
- pending
- confirmed
- failed
- conflicted

runtime_rule:
local drafts must remain usable even when sync is delayed or unavailable.
