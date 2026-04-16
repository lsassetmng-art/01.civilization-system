# ============================================================
# PROJECT FLOW CODING START BLOCKED TO REOPEN FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked or paused coding-start package
to possible reopen.

flow:
1. identify paused or blocked coding-start package
2. identify pause reason or blocked condition
3. confirm upstream outputs are still usable
4. rerun boundary check if package is boundary-aware
5. reopen only if safe-to-reopen is confirmed
6. update execution record explicitly

important_rules:
- reopening is not automatic
- blocked boundary-aware packages require explicit recheck
- unresolved blocked conditions keep the package blocked
