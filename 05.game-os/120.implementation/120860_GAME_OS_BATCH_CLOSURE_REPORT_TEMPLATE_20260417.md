# ============================================================
# GAME OS BATCH CLOSURE REPORT TEMPLATE
# ============================================================

status: template
system: Civilization System
os: GameOS
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This template is used to close a GameOS implementation batch formally.

usage_rule:
- create one closure report per batch
- do not close a batch without acceptance evidence summary
- unresolved blockers must be listed explicitly

---

## Batch closure template

batch:
- Batch 1 | Batch 2 | Batch 3 | Batch 4

closure_status:
- proposed | accepted | rejected | partial

date:
- YYYY-MM-DD

covered_modules:
- Mxx
- Mxx

target_outcome:
- short batch outcome summary

completed_scope:
- implemented item
- implemented item

not_completed_scope:
- item
- reason

acceptance_summary:
- TC-GAME-xxx : pass | fail | partial
- TC-GAME-xxx : pass | fail | partial

evidence_summary:
- evidence artifact
- evidence artifact

open_blockers:
- BLK-XXX
- or none

open_gaps:
- GAP-XXX
- or none

decision_summary:
- DEC-XXX
- or none

handoff_decision:
- next batch may start | next batch blocked | review required

note:
- optional detail

---

## Closure rule

A batch should be treated as closed only when:
- blocker acceptance anchors are satisfied or explicitly waived by decision
- unresolved blockers are either zero or explicitly contained
- next batch handoff rule is satisfied
