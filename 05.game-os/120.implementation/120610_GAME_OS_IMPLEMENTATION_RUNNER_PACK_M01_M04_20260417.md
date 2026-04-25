# ============================================================
# GAME OS IMPLEMENTATION RUNNER PACK M01 M04
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
This document is the practical runner pack for the first GameOS implementation batch.
It fixes the execution order and completion checkpoints for M01 through M04.

scope:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview

out_of_scope:
- M05 Validation and later modules
- real code or SQL in this document
- build runner scripts
- DB execution blocks

---

## 0. Execution principle

This runner pack is for implementation order control.

execution rules:
- do truth before convenience UI
- do create/save correctness before secondary read optimization
- do immutable basis before preview behavior
- do asset registration before deep editor dependency on assets
- do not start M04 Preview before M02 revision save path is stable

handoff rule:
Each module may hand off only when:
- truth is stable enough for next module
- API contract is callable
- screen minimum is navigable
- blocker acceptance linkage is clear

---

## 1. Batch definition

first_batch_modules:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview

batch_goal:
Create the first end-to-end creator-side path:

1. create project
2. open project
3. edit and save revision
4. autosave and restore
5. register and bind asset
6. create revision-based preview

---

## 2. M01 Builder Foundation runner

module_code: M01
module_name: Builder Foundation

objective:
- establish workspace, project, runtime/template basis, and initial revision seed

required_truth:
- game_workspace
- game_project
- game_template_profile
- game_runtime_profile
- seed path into game_project_revision

required_api:
- POST /game/builder/projects
- project summary read basis

required_screens:
- Builder Home
- Template Gallery
- Project Overview create-entry path

required_flow:
- Builder Project Creation flow

implementation_order:
1. truth: workspace/project/profile identity
2. create project API contract
3. create project write path
4. seed initial revision
5. Builder Home recent project read path
6. Template Gallery selection path
7. Project Overview create-entry path

blocking_checks:
- project_code uniqueness
- runtime/template compatibility validation
- idempotent create command
- latest_revision linkage created at project seed time

done_when:
- creator can create a project
- creator can reopen same project
- project has stable identity and initial revision
- incompatible basis is rejected explicitly

acceptance_link:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

handoff_to:
- M02 Builder Authoring Core

---

## 3. M02 Builder Authoring Core runner

module_code: M02
module_name: Builder Authoring Core

objective:
- establish the main immutable revision save loop

required_truth:
- game_project_revision
- game_autosave_snapshot
- project latest_revision_id update rule
- project latest_autosave_snapshot_id update rule

required_api:
- POST /game/builder/revisions/save
- POST /game/builder/autosaves

required_screens:
- Main Editor
- Project Overview revision strip
- Revision / Autosave Restore Panel

required_flow:
- Revision Save and Autosave flow

implementation_order:
1. immutable revision truth contract
2. revision number increment rule
3. latest revision pointer update
4. save API write path
5. conflict detection rule
6. autosave snapshot truth
7. autosave API write path
8. Main Editor minimum edit shell
9. save state and autosave restore surface
10. Project Overview revision summary refresh path

blocking_checks:
- previous revision never overwritten
- stale basis save returns conflict
- autosave basis belongs to same project
- restore path is explainable and traceable

done_when:
- creator can edit and save a new revision
- creator can detect save conflict
- creator can create autosave snapshot
- creator can restore latest autosave basis

acceptance_link:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

handoff_to:
- M03 Asset Studio
- M04 Preview

---

## 4. M03 Asset Studio runner

module_code: M03
module_name: Asset Studio

objective:
- establish asset registration and project binding needed by Builder authoring

required_truth:
- game_asset_ref
- checksum storage
- asset metadata storage
- usage count or usage mapping basis

required_api:
- asset upload/register contract
- asset bind/update contract where needed by editor flow

required_screens:
- Asset Studio

required_integration:
- asset reference usable from revision save path

implementation_order:
1. game_asset_ref truth
2. checksum and metadata rule
3. upload/register write contract
4. asset listing read basis
5. Asset Studio minimum screen
6. bind asset into project/editor reference path
7. revision payload reference validation

blocking_checks:
- asset_ref uniqueness
- checksum preserved
- asset type and metadata preserved
- bound asset is available to editor save path

done_when:
- creator can upload/register asset
- creator can see asset in Asset Studio
- creator can bind asset to project basis
- revision save can safely refer to registered asset

acceptance_link:
- TC-GAME-013

handoff_to:
- M04 Preview
- M05 Validation later

---

## 5. M04 Preview runner

module_code: M04
module_name: Preview

objective:
- establish revision-based preview execution for creator-side feedback

required_truth:
- preview session basis
- preview result trace to basis revision
- preview blocked/ready result basis

required_api:
- POST /game/builder/preview-sessions

required_screens:
- Preview Studio

required_jobs:
- preview_session_build_job

required_flow:
- Preview Session Build flow

implementation_order:
1. preview session identity and basis revision trace
2. preview session API contract
3. async preview build job shell
4. ready/blocked/failed state classification
5. Preview Studio revision selector
6. preview runtime pane
7. findings summary pane
8. jump-back path to editor context

blocking_checks:
- preview basis revision must exist
- preview cannot silently ignore blocking state
- ready/blocked/failed states must be distinguishable
- preview result must preserve revision basis

done_when:
- creator can request preview from selected revision
- preview returns stable session identity
- preview shows ready or blocked state explicitly
- preview screen remains tied to chosen revision

acceptance_link:
- TC-GAME-020
- TC-GAME-021

handoff_to:
- M05 Validation later

---

## 6. Recommended execution sequence across M01 to M04

strict_sequence:
1. M01 truth
2. M01 API
3. M01 screens
4. M01 flow
5. M02 truth
6. M02 API
7. M02 screens
8. M02 flow
9. M03 truth
10. M03 API
11. M03 screens
12. M03 integration
13. M04 truth
14. M04 API
15. M04 jobs
16. M04 screens
17. M04 flow polish

parallelization_limits:
- M03 may begin after M02 truth is stable
- M04 may begin only after M02 revision save basis is stable
- M01 screen polish may run after M02 truth begins
- no parallel shortcut should break immutable revision contract

---

## 7. First coding milestone

milestone_name:
- Creator-side first vertical slice

must_be_true:
- project create works
- project open works
- revision save works
- autosave works
- asset register/bind works
- preview request works

milestone_exit_evidence:
- project created from UI and API
- at least two immutable revisions preserved
- autosave snapshot exists and restore works
- asset appears in registry and can be referenced
- preview session exists with revision trace

---

## 8. Common failure traps for M01 to M04

trap_01:
- creating project without stable seed revision

trap_02:
- mutating latest revision in place instead of appending immutable revision

trap_03:
- allowing autosave to drift from project basis without trace

trap_04:
- registering assets without checksum or project linkage

trap_05:
- previewing without preserving exact basis revision

trap_06:
- building screen shells before truth and API semantics are stable

prevention_rule:
Every module must close truth and write-path correctness before UI convenience expansion.

---

## 9. Runner checklist

before_starting_M01:
- root and implementation entry files exist
- exact design pack exists
- implementation start pack exists

before_starting_M02:
- M01 done_when fully satisfied

before_starting_M03:
- M02 immutable revision path satisfied

before_starting_M04:
- M02 revision basis stable
- M03 asset registry minimally usable when preview depends on assets

before_closing_batch:
- M01 through M04 blocker acceptance linkage is traceable
- no known contract gap remains inside first creator-side vertical slice

---

## 10. Next runner pack

The next runner pack after this document should be:
- M05 to M08 implementation runner pack
