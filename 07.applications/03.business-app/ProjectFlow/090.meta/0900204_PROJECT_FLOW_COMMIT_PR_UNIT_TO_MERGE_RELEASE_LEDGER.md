# ============================================================
# PROJECT FLOW COMMIT PR UNIT TO MERGE RELEASE LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps commit / PR-sized units
to likely merge or release-prep units.

commit_pr_to_merge_release_ledger:

PF-CPR-001:
- unlocks:
  - app entry merge candidate unit

PF-CPR-002:
- unlocks:
  - bootstrap startup merge candidate unit

PF-CPR-003:
- unlocks:
  - navigation foundation merge candidate unit

PF-CPR-004:
- unlocks:
  - dashboard container merge candidate unit

PF-CPR-005:
- unlocks:
  - dashboard reducer merge candidate unit

PF-CPR-006:
- unlocks:
  - dashboard viewmodel merge candidate unit

PF-CPR-007:
- unlocks:
  - project detail reducer merge candidate unit

PF-CPR-008:
- unlocks:
  - preview rendering merge candidate unit

PF-CPR-009:
- unlocks:
  - export route merge candidate unit

PF-CPR-010:
- unlocks:
  - repository implementation merge candidate unit

PF-CPR-011:
- unlocks:
  - gateway mapping merge candidate unit

PF-CPR-012:
- unlocks:
  - sync status ui merge candidate unit

PF-CPR-013:
- unlocks:
  - refresh trigger merge candidate unit

important_rule:
No merge or release-prep unit is unlocked
until commit / PR-sized outputs are reviewed and approved in usable scope.
