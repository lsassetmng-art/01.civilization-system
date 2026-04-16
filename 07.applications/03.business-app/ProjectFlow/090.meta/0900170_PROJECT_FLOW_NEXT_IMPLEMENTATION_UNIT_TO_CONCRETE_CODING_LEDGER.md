# ============================================================
# PROJECT FLOW NEXT IMPLEMENTATION UNIT TO CONCRETE CODING LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps next implementation units
to likely concrete coding work groups.

unit_to_concrete_coding_ledger:

PF-UNIT-001:
- unlocks:
  - app entry file task group
  - root bootstrap wiring task group

PF-UNIT-002:
- unlocks:
  - root navigation graph task group
  - entry route dispatch task group

PF-UNIT-003:
- unlocks:
  - dashboard container composable task group
  - dashboard screen assembly task group

PF-UNIT-004:
- unlocks:
  - dashboard reducer implementation task group
  - dashboard state mutation task group

PF-UNIT-005:
- unlocks:
  - dashboard viewmodel implementation task group
  - dashboard action dispatch task group

PF-UNIT-006:
- unlocks:
  - project detail reducer implementation task group
  - project detail tab state task group

PF-UNIT-007:
- unlocks:
  - material preview composable task group
  - material preview state task group

PF-UNIT-008:
- unlocks:
  - material export route task group
  - review-aware export action task group

PF-UNIT-009:
- unlocks:
  - repository implementation task group
  - local datasource binding task group

PF-UNIT-010:
- unlocks:
  - gateway implementation task group
  - mediated request adapter task group

PF-UNIT-011:
- unlocks:
  - sync status UI task group
  - sync retry UI task group

PF-UNIT-012:
- unlocks:
  - cache refresh trigger task group
  - refresh coordination task group

important_rule:
No concrete coding work group is unlocked
until unit outputs are reviewed and approved in usable scope.
