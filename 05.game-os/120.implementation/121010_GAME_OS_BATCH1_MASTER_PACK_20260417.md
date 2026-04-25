# ============================================================
# GAME OS BATCH1 MASTER PACK
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
This file consolidates the Batch 1 implementation-start materials
into one practical reference pack.

batch1_scope:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview

batch1_goal:
Build the first creator-side vertical slice:
- create project
- reopen project
- save immutable revision
- autosave and restore
- register/bind asset
- preview selected revision

---

## 0. Read order for Batch 1 only

1. 120700_GAME_OS_BATCH1_DEVELOPMENT_START_CHECKLIST_20260417.md
2. 120720_GAME_OS_BATCH1_DEVELOPMENT_TODO_PACK_20260417.md
3. 120610_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M01_M04_20260417.md
4. 120660_GAME_OS_M01_BUILDER_FOUNDATION_IMPLEMENTATION_MEMO_20260417.md
5. 120670_GAME_OS_M02_BUILDER_AUTHORING_CORE_IMPLEMENTATION_MEMO_20260417.md
6. 120680_GAME_OS_M03_M14_MODULE_SPECIFIC_IMPLEMENTATION_MEMO_BUNDLE_20260417.md
7. 120840_GAME_OS_ACCEPTANCE_EVIDENCE_TEMPLATE_PACK_20260417.md
8. 120710_GAME_OS_UNRESOLVED_GAP_TRACKING_MEMO_20260417.md

---

## 1. Batch1 module outcome map

### M01
must_finish:
- workspace/profile basis resolution
- project create
- seed revision creation
- idempotent create
- reopen path

### M02
must_finish:
- immutable revision save
- stale-basis conflict
- autosave truth
- restore path

### M03
must_finish:
- asset register
- metadata/checksum preserve
- project bindability

### M04
must_finish:
- revision-based preview request
- preview ready/blocked distinction
- preview trace to chosen revision

---

## 2. Batch1 non-negotiables

- project create without seed revision is forbidden
- revision overwrite is forbidden
- stale save overwrite is forbidden
- autosave outside same project basis is forbidden
- asset reference to unregistered asset is forbidden
- preview must not hide blocking state

---

## 3. Batch1 acceptance anchor map

M01:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

M02:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

M03:
- TC-GAME-013

M04:
- TC-GAME-020
- TC-GAME-021

---

## 4. Batch1 handoff condition

Batch1 is handoff-ready only when:
- creator-side first vertical slice is working
- blocker acceptance anchors are traceable
- no hidden blocker remains in M01 or M02 truth path
- M03 and M04 are no longer depending on guessed semantics

---

## 5. Batch1 escalation rule

If implementation hits ambiguity:
1. stop local improvisation
2. log gap
3. update blocker board if needed
4. record decision if semantics changed
5. resume only when boundary is explicit

