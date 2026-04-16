# ============================================================
# PROJECT FLOW REOPEN IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance for reopening paused or blocked work.

implementation_rules:
- reopen decisions should reference prior execution record
- reopen decisions should reference prior gate review when available
- blocked-to-reopen transitions should record what changed
- safe reopen should still respect scope type:
  local_safe,
  boundary_sensitive,
  or blocked
