# ============================================================
# GAME OS BATCH1 DEPENDENCY MATRIX
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
This file makes Batch1 module dependency order explicit.

---

## 0. Dependency rule

Use these dependency meanings:
- hard_dependency: downstream module should not proceed without upstream completion
- soft_dependency: downstream module may prepare, but not finalize semantics yet
- shared_dependency: both depend on same exact-design source

---

## 1. Module dependency map

### M01 -> M02
type:
- hard_dependency

reason:
- M02 requires stable project identity
- M02 requires first revision seed
- M02 requires latest_revision pointer to exist

### M02 -> M03
type:
- hard_dependency

reason:
- asset binding ultimately lands in revision payload context
- M03 should not finalize editor integration before immutable revision basis is stable

### M02 -> M04
type:
- hard_dependency

reason:
- preview needs chosen stable basis revision
- preview cannot be correct if revision identity is ambiguous

### M01 -> M03
type:
- soft_dependency

reason:
- M03 can prepare asset registry shape, but project binding semantics still rely on M02

### M01 -> M04
type:
- soft_dependency

reason:
- M04 can prepare shell, but chosen revision preview depends on M02

---

## 2. Shared exact-design dependencies

All Batch1 modules share:
- 030200_GAME_OS_DB_COLUMN_EXACT_DESIGN_SET.md
- 050300_GAME_OS_STATEFLOW_EXACT_DESIGN_SET.md
- 090100_GAME_OS_SCREEN_EXACT_DESIGN_SET.md
- 090400_GAME_OS_REQUEST_RESPONSE_EXACT_JSON_EXAMPLES.md

---

## 3. Practical execution matrix

M01:
- may start immediately

M02:
- may start only after M01 create/seed/reopen path is stable

M03:
- may prepare truth/API shell after M02 truth stabilizes
- should not finalize editor-binding semantics before M02 is stable

M04:
- may prepare preview shell after M02 stabilizes
- should not claim completion before chosen revision trace is stable

---

## 4. Completion gating

Batch1 completion gate:
- M01 complete
- M02 complete
- M03 complete enough to bind safely
- M04 complete enough to preview safely

If M01 or M02 is incomplete, Batch1 remains open even if M03/M04 look visually ready.
