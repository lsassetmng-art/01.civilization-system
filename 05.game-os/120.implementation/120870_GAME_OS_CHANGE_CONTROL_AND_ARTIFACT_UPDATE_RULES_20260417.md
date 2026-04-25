# ============================================================
# GAME OS CHANGE CONTROL AND ARTIFACT UPDATE RULES
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
This file defines how GameOS implementation-time changes must update artifacts.

---

## 0. Change control principle

Implementation is allowed to discover better internal structure.
Implementation is not allowed to silently change canonical semantics.

If a change affects canonical semantics, update artifacts explicitly.

---

## 1. When artifact update is mandatory

Artifact update is mandatory when a change affects:
- truth semantics
- request/response contract
- screen behavior that changes exact design meaning
- stateflow/guard semantics
- acceptance interpretation
- batch handoff condition
- blocker classification
- policy or authority boundary

---

## 2. Which artifact to update

If change affects:
- DB/model exactness -> update 030.model artifacts
- flow/guard/transition -> update 050.flow artifacts
- screen/API exactness -> update 090.interface artifacts
- phase/order/task/runner/acceptance -> update 120.implementation artifacts
- structural or audit context -> update 900.meta artifacts

Operational logs additionally update:
- worklog
- decision register
- blocker triage board
- unresolved gap memo
when relevant.

---

## 3. Change classification

Classify every meaningful change as:
- local implementation detail only
- canonical behavior clarification
- canonical behavior correction
- blocker workaround proposal
- scope expansion proposal

Only the first may remain local without canonical document change.

---

## 4. Forbidden update behavior

Forbidden:
- changing canonical behavior in code without artifact update
- hiding unresolved ambiguity in implementation detail
- marking blocker resolved without note/evidence
- widening scope casually beyond current batch without decision

---

## 5. Minimum update trail

For any canonical behavior change, record:
1. worklog entry
2. decision register entry
3. affected artifact update
4. blocker/gap link if applicable

---

## 6. Change control success meaning

Change control is working when:
- implementation and design do not drift silently
- later readers can see why a behavior changed
- acceptance evidence still maps to current semantics
