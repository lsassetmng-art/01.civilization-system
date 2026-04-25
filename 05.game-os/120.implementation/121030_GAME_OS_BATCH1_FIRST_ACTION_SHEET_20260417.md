# ============================================================
# GAME OS BATCH1 FIRST ACTION SHEET
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
This sheet defines the first concrete actions for starting Batch1 work.

---

## 0. First action order

first_actions:
1. confirm M01 start checklist
2. confirm M01 truth contract
3. confirm project create request/response contract
4. confirm seed revision rule
5. confirm idempotency rule
6. only then begin M02 truth contract

---

## 1. First action for M01

do_first:
- resolve workspace lookup rule
- resolve runtime profile compatibility rule
- resolve optional template rule

first_exit_condition:
- create flow basis can be validated without guessing

---

## 2. Second action for M01

do_second:
- define game_project persistence contract
- define initial game_project_revision seed contract
- define latest_revision pointer fill rule

second_exit_condition:
- project create can end with coherent project + first revision

---

## 3. Third action for M01

do_third:
- fix POST /game/builder/projects semantics
- fix idempotent replay behavior
- fix explicit incompatible-basis failure behavior

third_exit_condition:
- create path semantics are safe enough for implementation start

---

## 4. First action for M02

do_after_M01:
- define immutable revision append rule
- define stale-basis conflict rule
- define latest_revision pointer update rule

exit_condition:
- no save path can overwrite previous revision truth

---

## 5. Immediate do-not-do list

do_not_do_yet:
- do not jump to Batch2
- do not build polish-first screens
- do not finalize preview semantics before chosen revision stability
- do not bind assets deeply before M02 truth is stable
- do not hide blockers in local code choices

---

## 6. First status update target

After first meaningful work starts, update:
- 120740_GAME_OS_DEVELOPMENT_STATUS_BOARD_20260417.md
- 120780_GAME_OS_BATCH1_WORKLOG_TEMPLATE_20260417.md
- 120800_GAME_OS_BATCH1_BLOCKER_TRIAGE_BOARD_20260417.md
- 120710_GAME_OS_UNRESOLVED_GAP_TRACKING_MEMO_20260417.md

