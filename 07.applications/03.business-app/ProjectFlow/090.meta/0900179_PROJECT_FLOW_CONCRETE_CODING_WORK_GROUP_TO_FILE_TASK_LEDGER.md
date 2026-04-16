# ============================================================
# PROJECT FLOW CONCRETE CODING WORK GROUP TO FILE TASK LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps concrete coding work groups
to likely concrete file/task units.

work_group_to_file_task_ledger:

PF-CWG-001:
- unlocks:
  - app entry file unit
  - bootstrap initializer file unit

PF-CWG-002:
- unlocks:
  - root navigation graph file unit
  - route dispatch file unit

PF-CWG-003:
- unlocks:
  - dashboard container file unit
  - dashboard section composition file unit

PF-CWG-004:
- unlocks:
  - dashboard reducer file unit
  - dashboard state mutation file unit

PF-CWG-005:
- unlocks:
  - dashboard viewmodel file unit
  - dashboard action dispatch file unit

PF-CWG-006:
- unlocks:
  - project detail reducer file unit
  - project detail tab state file unit

PF-CWG-007:
- unlocks:
  - material preview file unit
  - material preview state file unit

PF-CWG-008:
- unlocks:
  - material export route file unit
  - review-aware export action file unit

PF-CWG-009:
- unlocks:
  - repository implementation file unit
  - local datasource binding file unit

PF-CWG-010:
- unlocks:
  - gateway implementation file unit
  - mediated request adapter file unit

PF-CWG-011:
- unlocks:
  - sync status UI file unit
  - sync retry UI file unit

PF-CWG-012:
- unlocks:
  - cache refresh trigger file unit
  - refresh coordination file unit

important_rule:
No concrete file/task unit is unlocked
until work-group outputs are reviewed and approved in usable scope.
