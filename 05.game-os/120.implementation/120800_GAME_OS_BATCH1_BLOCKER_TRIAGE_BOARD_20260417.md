# ============================================================
# GAME OS BATCH1 BLOCKER TRIAGE BOARD
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This board is the operational triage surface for Batch 1 blockers.

usage_rule:
- only real blockers belong here
- each blocker should point to module and acceptance anchor
- if a blocker is resolved, keep the record and mark status resolved

board_status_values:
- open
- investigating
- resolved
- deferred

---

## Blocker entry template

### BLK-XXX
status:
- open

module:
- M01 | M02 | M03 | M04

title:
- short blocker title

symptom:
- what is broken, missing, or contradictory

impact:
- what cannot proceed because of this blocker

linked_acceptance:
- TC-GAME-xxx
- or none

linked_gap:
- GAP-XXX
- or none

owner:
- Boss | Zero | implementation team

next_action:
- next concrete step

resolution_note:
- fill when resolved

---

## Initial known-critical blocker categories

### BLK-CAT-01
status:
- open

module:
- M01

title:
- create path without first revision seed

symptom:
- project create may complete without stable seed revision

impact:
- M02 cannot safely begin

linked_acceptance:
- TC-GAME-001

linked_gap:
- none

owner:
- implementation team

next_action:
- verify create path always materializes revision_no=1

resolution_note:
-

### BLK-CAT-02
status:
- open

module:
- M02

title:
- stale save conflict not explicit

symptom:
- stale basis save behavior is ambiguous or destructive

impact:
- immutable authoring loop is unsafe

linked_acceptance:
- TC-GAME-011

linked_gap:
- none

owner:
- implementation team

next_action:
- verify conflict response path and latest_revision preservation

resolution_note:
-
