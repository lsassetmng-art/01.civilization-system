# ============================================================
# PROJECT FLOW CONCRETE FILE UNIT TO PATCH TASK LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps concrete file/task units
to likely patch-level coding tasks.

file_unit_to_patch_task_ledger:

PF-FILE-001:
- unlocks:
  - app entry import patch task
  - app entry bootstrap call patch task

PF-FILE-002:
- unlocks:
  - initializer setup patch task
  - startup registration patch task

PF-FILE-003:
- unlocks:
  - navigation graph declaration patch task
  - route mapping patch task

PF-FILE-004:
- unlocks:
  - dashboard container composition patch task
  - dashboard section binding patch task

PF-FILE-005:
- unlocks:
  - reducer state transition patch task
  - reducer action branch patch task

PF-FILE-006:
- unlocks:
  - viewmodel state exposure patch task
  - action dispatch wiring patch task

PF-FILE-007:
- unlocks:
  - project detail reducer branch patch task
  - tab state mutation patch task

PF-FILE-008:
- unlocks:
  - preview rendering patch task
  - preview state binding patch task

PF-FILE-009:
- unlocks:
  - export route wiring patch task
  - review-aware export action patch task

PF-FILE-010:
- unlocks:
  - repository method implementation patch task
  - datasource binding patch task

PF-FILE-011:
- unlocks:
  - gateway request mapping patch task
  - mediated response handling patch task

PF-FILE-012:
- unlocks:
  - sync status rendering patch task
  - retry action visibility patch task

PF-FILE-013:
- unlocks:
  - refresh trigger patch task
  - refresh coordination patch task

important_rule:
No patch-level task is unlocked
until file-unit outputs are reviewed and approved in usable scope.
