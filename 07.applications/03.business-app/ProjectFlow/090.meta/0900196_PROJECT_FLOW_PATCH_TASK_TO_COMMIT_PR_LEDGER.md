# ============================================================
# PROJECT FLOW PATCH TASK TO COMMIT PR LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps patch-level coding tasks
to likely commit or PR-sized units.

patch_task_to_commit_pr_ledger:

PF-PATCH-001:
- unlocks:
  - app entry import commit unit

PF-PATCH-002:
- unlocks:
  - bootstrap call wiring commit unit

PF-PATCH-003:
- unlocks:
  - navigation graph declaration commit unit

PF-PATCH-004:
- unlocks:
  - dashboard container composition commit unit

PF-PATCH-005:
- unlocks:
  - reducer state transition commit unit

PF-PATCH-006:
- unlocks:
  - viewmodel state exposure commit unit

PF-PATCH-007:
- unlocks:
  - project detail reducer branch commit unit

PF-PATCH-008:
- unlocks:
  - preview rendering commit unit

PF-PATCH-009:
- unlocks:
  - export route wiring commit unit

PF-PATCH-010:
- unlocks:
  - repository method implementation commit unit

PF-PATCH-011:
- unlocks:
  - gateway request mapping commit unit

PF-PATCH-012:
- unlocks:
  - sync status rendering commit unit

PF-PATCH-013:
- unlocks:
  - refresh trigger commit unit

important_rule:
No commit or PR-sized unit is unlocked
until patch-task outputs are reviewed and approved in usable scope.
