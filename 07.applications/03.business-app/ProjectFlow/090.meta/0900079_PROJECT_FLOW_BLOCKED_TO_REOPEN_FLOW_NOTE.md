# ============================================================
# PROJECT FLOW BLOCKED TO REOPEN FLOW NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked state to possible reopen.

flow:
1. identify blocked or paused package
2. identify blocking reason or pause reason
3. check whether higher-priority conflict or uncertainty is resolved
4. rerun gate review if boundary-sensitive
5. reopen only if safe-to-reopen is confirmed
6. record new execution status explicitly

important_rules:
- reopening is not automatic
- conflict-sensitive areas require explicit re-check
- unresolved ownership or mediation conflict keeps package blocked
