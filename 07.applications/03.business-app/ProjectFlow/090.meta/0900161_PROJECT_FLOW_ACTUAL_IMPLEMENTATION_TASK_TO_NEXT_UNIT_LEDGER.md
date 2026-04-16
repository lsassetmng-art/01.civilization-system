# ============================================================
# PROJECT FLOW ACTUAL IMPLEMENTATION TASK TO NEXT UNIT LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps first-wave actual implementation tasks
to likely next implementation units.

task_to_next_unit_ledger:

PF-TASK-001:
- unlocks:
  - app entry wiring unit
  - root navigation unit

PF-TASK-002:
- unlocks:
  - dashboard UI container unit
  - dashboard action routing unit

PF-TASK-003:
- unlocks:
  - dashboard state reducer unit
  - dashboard viewmodel unit

PF-TASK-004:
- unlocks:
  - project detail state reducer unit
  - project detail tab routing unit

PF-TASK-005:
- unlocks:
  - customer material preview unit
  - customer material export routing unit

PF-TASK-006:
- unlocks:
  - local repository implementation unit
  - local data-source binding unit

PF-TASK-007:
- unlocks:
  - BusinessOS gateway implementation unit
  - mediated request adapter unit

PF-TASK-008:
- unlocks:
  - sync visibility unit
  - cache refresh unit

important_rule:
No next unit is unlocked until task outputs are reviewed
and approved in usable scope.
