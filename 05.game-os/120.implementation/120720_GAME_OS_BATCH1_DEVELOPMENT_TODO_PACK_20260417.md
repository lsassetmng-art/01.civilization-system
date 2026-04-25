# ============================================================
# GAME OS BATCH1 DEVELOPMENT TODO PACK
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
This file is the immediate development todo pack for Batch 1.
It is intended to be used directly before real implementation work starts.

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

## 0. Batch1 execution order

fixed_order:
1. M01 Builder Foundation
2. M02 Builder Authoring Core
3. M03 Asset Studio
4. M04 Preview

rule:
- Do not start M02 until M01 handoff conditions are satisfied
- Do not go deep into M03 and M04 until M02 immutable revision basis is stable

---

## 1. M01 todo list

module:
- M01 Builder Foundation

todo_truth:
- define workspace lookup basis
- define runtime profile compatibility basis
- define optional template profile basis
- create game_project persistence contract
- create initial game_project_revision seed contract
- ensure latest_revision pointer is filled on successful create

todo_api:
- implement POST /game/builder/projects request validation
- implement create write path
- implement create idempotency behavior
- implement create failure semantics for incompatible basis

todo_ui:
- Builder Home create entry
- Template Gallery selection entry
- Project Overview initial reopen summary

done_check:
- project create works
- duplicate create is idempotent
- incompatible create fails explicitly
- created project can be reopened immediately

linked_acceptance:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

---

## 2. M02 todo list

module:
- M02 Builder Authoring Core

todo_truth:
- implement immutable game_project_revision write contract
- implement basis revision linkage
- implement revision_no increment rule
- implement latest_revision pointer update rule
- implement game_autosave_snapshot truth
- implement latest_autosave pointer update rule

todo_api:
- implement POST /game/builder/revisions/save
- implement stale basis conflict handling
- implement save idempotency behavior where needed
- implement POST /game/builder/autosaves

todo_ui:
- Main Editor minimum shell
- unsaved/saved/conflict indicator
- Project Overview revision strip
- Revision / Autosave Restore Panel

done_check:
- valid save appends immutable revision
- stale save returns explicit conflict
- autosave snapshot is created
- latest autosave is restorable explicitly

linked_acceptance:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

---

## 3. M03 todo list

module:
- M03 Asset Studio

todo_truth:
- implement game_asset_ref
- implement checksum preservation
- implement metadata preservation
- implement project linkage
- implement asset usage mapping or equivalent basis

todo_api:
- implement asset upload/register contract
- implement asset bind/update contract as needed

todo_ui:
- Asset Studio minimum list/detail surface
- asset upload entry
- asset bind entry

done_check:
- asset can be uploaded/registered
- asset metadata is visible
- asset can be bound to project basis
- revision payload can safely reference asset_ref

linked_acceptance:
- TC-GAME-013

---

## 4. M04 todo list

module:
- M04 Preview

todo_truth:
- implement preview session identity basis
- preserve chosen basis revision
- distinguish ready / blocked / failed states

todo_api:
- implement POST /game/builder/preview-sessions

todo_jobs_and_flow:
- implement preview_session_build_job shell
- implement Preview Session Build flow semantics

todo_ui:
- Preview Studio revision selector
- preview pane
- finding summary pane
- jump-back path to source context

done_check:
- preview request returns stable session identity
- Preview Studio shows ready or blocked state explicitly
- preview result preserves chosen revision basis

linked_acceptance:
- TC-GAME-020
- TC-GAME-021

---

## 5. Batch1 hard blockers

These must be treated as hard blockers:
- project create without seed revision
- destructive overwrite of previous revision
- stale save silently overwriting newer revision
- autosave bound to wrong project basis
- asset reference to unregistered asset
- preview hiding blocking state

If one of the above occurs:
- stop the affected module
- record the issue in unresolved gap tracking memo
- do not move the issue silently into later modules

---

## 6. Batch1 exit condition

Batch1 is complete only when:
- creator can create project
- creator can reopen project
- creator can save immutable revision
- creator can autosave and restore
- creator can register and bind asset
- creator can create preview from chosen revision

