# ============================================================
# PROJECT FLOW MERGE RELEASE UNIT TO RC HANDOFF LEDGER
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps merge / release-prep units
to likely release-candidate or handoff units.

merge_release_to_rc_handoff_ledger:

PF-MRG-001:
- unlocks:
  - app entry release-candidate check unit

PF-MRG-002:
- unlocks:
  - bootstrap startup release-candidate check unit

PF-MRG-003:
- unlocks:
  - navigation release-candidate check unit

PF-MRG-004:
- unlocks:
  - dashboard release-candidate check unit

PF-MRG-005:
- unlocks:
  - project detail release-candidate check unit

PF-MRG-006:
- unlocks:
  - preview release-candidate check unit

PF-MRG-007:
- unlocks:
  - export route release-candidate check unit

PF-MRG-008:
- unlocks:
  - repository release-candidate check unit

PF-MRG-009:
- unlocks:
  - gateway release-candidate check unit

PF-MRG-010:
- unlocks:
  - sync ui release-candidate check unit

PF-MRG-011:
- unlocks:
  - refresh release-candidate check unit

PF-MRG-012:
- unlocks:
  - release-candidate packaging unit
  - implementation handoff summary unit

important_rule:
No release-candidate or handoff unit is unlocked
until merge / release-prep outputs are reviewed and approved in usable scope.
