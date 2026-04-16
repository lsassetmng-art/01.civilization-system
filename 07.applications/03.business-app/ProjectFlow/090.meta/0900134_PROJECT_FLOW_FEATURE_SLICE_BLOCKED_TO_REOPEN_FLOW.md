# ============================================================
# PROJECT FLOW FEATURE SLICE BLOCKED TO REOPEN FLOW
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the basic flow from blocked or paused feature slice
to possible reopen.

flow:
1. identify paused or blocked slice
2. identify pause reason or blocked condition
3. confirm upstream deliverables are still usable
4. rerun boundary check if slice is boundary-aware
5. reopen only if safe-to-reopen is confirmed
6. update execution record explicitly

important_rules:
- reopening is not automatic
- blocked boundary-aware slices require explicit recheck
- unresolved blocked conditions keep the slice blocked
