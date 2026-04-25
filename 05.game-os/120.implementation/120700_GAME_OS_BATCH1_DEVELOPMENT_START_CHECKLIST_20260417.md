# ============================================================
# GAME OS BATCH1 DEVELOPMENT START CHECKLIST
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
This checklist is the immediate start gate for Batch 1.
It focuses on M01 through M04 only.

batch1_scope:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview

---

## 0. Batch1 start gate

Batch1 may start only if all of the following are true:

- canonical root files exist
- 030.model / 050.flow / 090.interface / 120.implementation indexes exist
- implementation-start pack exists
- task breakdown exists
- runner pack M01_M04 exists
- acceptance set exists

---

## 1. M01 readiness checklist

- workspace identity rule is clear
- runtime profile compatibility rule is clear
- optional template usage rule is clear
- project_code uniqueness rule is clear
- first revision seed is required
- create idempotency rule is clear
- Builder Home create-entry path is identified
- Template Gallery selection path is identified
- Project Overview initial summary path is identified

Batch1 should not start M02 until all M01 items above are satisfied.

---

## 2. M02 readiness checklist

- immutable revision rule is clear
- revision_no increment rule is clear
- latest_revision pointer update rule is clear
- stale basis conflict rule is clear
- autosave snapshot basis rule is clear
- latest_autosave pointer update rule is clear
- Main Editor minimum shell is defined
- restore panel minimum behavior is defined

Batch1 should not start M03 or M04 deeply until all M02 items above are satisfied.

---

## 3. M03 readiness checklist

- asset identity rule is clear
- checksum preservation rule is clear
- metadata preservation rule is clear
- project linkage rule is clear
- asset bind/use rule is clear
- revision payload may reference registered asset only

---

## 4. M04 readiness checklist

- selected revision must be stable
- preview session identity rule is clear
- ready / blocked / failed distinction is clear
- preview must preserve basis revision
- Preview Studio minimum sections are defined

---

## 5. Batch1 blocker checklist

All of the following are blocker-level for Batch1:

- project create without first revision is forbidden
- save must append immutable revision instead of overwriting
- stale basis save must not overwrite newer work
- autosave basis must stay within same project
- preview must not hide blocking state
- asset reference must not point to unregistered asset silently

---

## 6. Batch1 acceptance anchor

Primary linked acceptance cases:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012
- TC-GAME-013
- TC-GAME-020
- TC-GAME-021

Batch1 should not be declared complete without these anchors being traceable.

---

## 7. Batch1 end condition

Batch1 end condition:
- creator-side first vertical slice is working
- project create works
- immutable save works
- autosave/restore works
- asset registration/bind works
- revision-based preview works

If any of these fail, Batch1 remains open.
