# ============================================================
# GAME OS DAILY EXECUTION CADENCE MEMO
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
This memo defines the daily operating cadence for GameOS implementation work.

cadence_scope:
- day-start confirmation
- work-in-progress discipline
- day-end recording
- blocker escalation timing

---

## 0. Day-start routine

Every implementation day should begin with:
1. confirm current active batch
2. confirm active module
3. check unresolved gap tracking memo
4. check blocker triage board
5. confirm today's target acceptance anchor
6. update development status board if state changed

do_not_start_day_with:
- unsorted blocker state
- unknown active module
- unlogged gap from previous day
- jumping ahead to later batch without closure of active handoff condition

---

## 1. Midday discipline

During active work:
- keep module focus narrow
- log meaningful progress in worklog
- if a rule is missing, record a gap before inventing behavior
- if a blocker appears, update triage board immediately
- if a design decision is made, record it in decision register

midday check questions:
- is active module still within canonical scope
- did we change truth, API, screen, or flow semantics
- did we touch any blocker rule
- did we create any new unresolved ambiguity

---

## 2. Day-end routine

Every implementation day should end with:
1. append worklog entry
2. update module status in status board
3. record blocker change if any
4. record decision if any implementation-time decision became canonical
5. confirm next concrete step
6. confirm whether active batch remains valid or needs pause

---

## 3. Escalation timing

Escalate immediately when:
- a blocker affects acceptance anchor
- a truth contract contradicts exact design
- a flow/state rule is ambiguous enough to split behavior
- launcher/publish/save/outbox/policy semantics are at risk

Escalate by:
- unresolved gap tracking memo
- blocker triage board
- decision register if a formal decision is taken

---

## 4. Cadence success meaning

Daily cadence is healthy when:
- progress is visible
- blockers are explicit
- decisions are recorded
- no silent local rule drift occurs
