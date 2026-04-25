# ============================================================
# GAME OS DECISION REGISTER TEMPLATE
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
This template records implementation-time decisions that affect module behavior,
without allowing them to drift into undocumented local assumptions.

usage_rule:
- only record decisions that materially affect implementation behavior
- do not use this for routine progress notes
- cross-reference the unresolved gap memo when a decision resolves a gap

---

## Decision entry template

### DEC-XXX
date:
- YYYY-MM-DD

module:
- Mxx

decision_status:
- proposed | accepted | rejected | superseded

topic:
- short topic

decision:
- exact decision text

reason:
- why this decision was needed

affected_artifacts:
- file or artifact list

affected_acceptance:
- TC-GAME-xxx
- or none

linked_gap:
- GAP-XXX
- or none

owner:
- Boss | Zero | implementation team

note:
- optional detail

---

## Initial seed rule

First decisions that should be recorded when needed:
- create path atomically requires first revision seed or not
- save idempotency interpretation
- autosave expiry or retention interpretation
- preview blocked-state handling if ambiguity is found
