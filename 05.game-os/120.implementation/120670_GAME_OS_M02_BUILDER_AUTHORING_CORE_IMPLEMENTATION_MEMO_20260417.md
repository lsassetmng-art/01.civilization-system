# ============================================================
# GAME OS M02 BUILDER AUTHORING CORE IMPLEMENTATION MEMO
# ============================================================

status: active
system: Civilization System
os: GameOS
module: M02 Builder Authoring Core
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This memo fixes the implementation-start boundary for M02 Builder Authoring Core.
It is the module execution memo for immutable revision save, autosave, and restore behavior.

scope:
- game_project_revision complete save path
- game_autosave_snapshot
- latest_revision linkage update
- latest_autosave_snapshot linkage update
- Main Editor minimum edit shell
- Project Overview revision strip refresh
- Revision / Autosave Restore Panel
- revision save conflict handling
- autosave restore basis

out_of_scope:
- asset upload/register
- preview
- validation
- export/submission/release
- runtime play loop
- collaboration richness beyond minimum lock/read basis

---

## 0. M02 objective

M02 objective:
- establish the first stable Builder editing loop after project creation
- persist immutable revisions
- persist autosave snapshots
- expose restore path from latest autosave
- prevent destructive overwrite of earlier revision truth

M02 success definition:
- creator can edit and save a new revision
- stale basis save returns conflict instead of destructive overwrite
- autosave snapshot is created with project-linked basis
- latest revision and latest autosave pointers remain coherent
- editor and project summary reflect the latest canonical basis

---

## 1. Canonical dependencies

Primary design dependencies:
- 120500_GAME_OS_IMPLEMENTATION_READY_PACKAGE_ROUND2_20260416.md
- 090100_GAME_OS_SCREEN_EXACT_DESIGN_SET.md
- 030200_GAME_OS_DB_COLUMN_EXACT_DESIGN_SET.md
- 050300_GAME_OS_STATEFLOW_EXACT_DESIGN_SET.md
- 090400_GAME_OS_REQUEST_RESPONSE_EXACT_JSON_EXAMPLES.md
- 120600_GAME_OS_IMPLEMENTATION_TASK_BREAKDOWN_BY_MODULE_20260417.md
- 120610_GAME_OS_IMPLEMENTATION_RUNNER_PACK_M01_M04_20260417.md
- 120520_GAME_OS_ACCEPTANCE_TEST_CASE_SET.md
- 120660_GAME_OS_M01_BUILDER_FOUNDATION_IMPLEMENTATION_MEMO_20260417.md

Acceptance anchors:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

Entry requirement from M01:
- project identity is stable
- initial revision exists
- latest revision pointer exists
- project can be reopened correctly

---

## 2. Truth to implement first

### 2.1 game_project_revision
Minimum M02 truth needs:
- immutable revision identity
- project linkage
- basis revision linkage
- revision_no increment rule
- scene/route/map/system/asset payload storage
- revision hash
- inline validation state placeholder
- created_by and created_at trace

M02 done_when for project revision:
- each successful save produces a new immutable revision row
- earlier revisions remain unchanged
- basis revision trace is preserved

### 2.2 latest revision linkage in game_project
Minimum M02 truth needs:
- latest_revision_id update only after successful new revision creation
- project summary refresh basis

M02 done_when for latest revision linkage:
- project always points to newest successful immutable revision
- failed save never advances latest_revision_id

### 2.3 game_autosave_snapshot
Minimum M02 truth needs:
- autosave snapshot identity
- project linkage
- basis revision linkage
- autosave payload
- unsaved change count
- conflict state
- captured_at and optional expiry
- actor trace where applicable

M02 done_when for autosave snapshot:
- autosave snapshot is restorable
- autosave basis belongs to same project
- latest autosave pointer is refreshable on project summary

### 2.4 latest autosave linkage in game_project
Minimum M02 truth needs:
- latest_autosave_snapshot_id update after successful autosave
- restore panel can resolve latest snapshot quickly

M02 done_when for latest autosave linkage:
- latest autosave is visible without manual lookup
- failed autosave never advances latest_autosave_snapshot_id

---

## 3. API to implement in M02

### 3.1 POST /game/builder/revisions/save
M02 owns this endpoint completely.

Must support:
- valid immutable revision save
- stale basis conflict return
- idempotent save command semantics where required
- new latest revision pointer update
- save state refresh

Minimum request basis:
- payloadVersion
- commandId
- idempotencyKey
- projectCode
- basisRevisionRef
- changeSet with sceneDiffs/routeDiffs/mapDiffs/assetRefs

Minimum success basis:
- projectCode
- basisRevisionRef
- newRevisionRef
- revisionNo
- latestRevisionRef
- saveState
- conflictState
- inlineValidationState

Minimum failure basis:
- explicit errorCode
- explicit errorState
- currentLatestRevisionRef where stale-basis conflict exists

M02 API done_when:
- valid save produces a new immutable revision
- stale save returns conflict explicitly
- duplicate replay does not corrupt revision chain

### 3.2 POST /game/builder/autosaves
M02 also owns autosave snapshot creation.

Must support:
- valid autosave snapshot
- latest autosave linkage update
- autosave restore basis visibility

Minimum request basis:
- payloadVersion
- commandId
- idempotencyKey
- projectCode
- basisRevisionRef
- autosavePayload
- unsavedChangeCount

Minimum success basis:
- projectCode
- basisRevisionRef
- autosaveSnapshotRef
- unsavedChangeCount
- saveState
- conflictState

Minimum failure basis:
- explicit errorCode
- explicit errorState

M02 autosave done_when:
- autosave snapshot is persistable
- autosave basis is project-consistent
- latest autosave pointer is refreshable

### 3.3 minimum revision/autosave read basis
M02 also needs minimum reopen/read support for:
- Main Editor latest basis load
- Project Overview revision strip
- Autosave restore panel latest snapshot read

M02 read basis done_when:
- editor can reopen latest revision
- restore panel can inspect latest autosave snapshot

---

## 4. Screens to implement in M02

### 4.1 Main Editor
Minimum M02 screen scope:
- editor shell
- structure navigator placeholder
- save button
- unsaved indicator
- conflict feedback
- latest basis identity visibility

Not needed yet:
- deep preview embedding
- heavy validation interaction
- deep collaboration richness
- asset-heavy workflow beyond reference awareness

Done_when:
- creator can edit, save, and see latest revision state

### 4.2 Project Overview revision strip
Minimum M02 screen scope:
- latest revision ref
- save state
- autosave summary
- restore entry

Done_when:
- creator can see whether latest revision and autosave are coherent

### 4.3 Revision / Autosave Restore Panel
Minimum M02 screen scope:
- latest autosave identity
- basis revision identity
- restore action
- restore result feedback

Done_when:
- creator can restore latest autosave basis explicitly

---

## 5. Stateflow to implement in M02

Primary flow:
- Revision Save and Autosave flow

Required transitions:
- save_request_received
- save_authority_checked
- save_basis_loaded
- save_conflict_detected
- save_payload_validating
- revision_persisting
- autosave_persisting
- revision_saved
- autosave_saved
- save_conflict
- save_denied
- save_failed

Critical guard rules:
- actor has edit authority
- project exists and editable
- basis revision belongs to same project
- optimistic concurrency check where applicable
- autosave basis belongs to same project
- failed save/autosave does not update latest pointers

Done_when:
- save and autosave paths are explainable end-to-end in logs and response semantics

---

## 6. Ordered implementation steps

### Step 1
Implement immutable revision truth contract

Exit condition:
- new revision row can be created with stable project linkage and revision_no

### Step 2
Implement basis revision validation and conflict rule

Exit condition:
- stale basis is detectable before destructive write

### Step 3
Implement latest revision pointer update rule

Exit condition:
- project.latest_revision_id updates only after successful revision creation

### Step 4
Implement POST /game/builder/revisions/save write path

Exit condition:
- valid save creates new revision and refreshes project latest pointer

### Step 5
Implement idempotency handling for revision save

Exit condition:
- duplicate replay does not corrupt revision chain

### Step 6
Implement autosave snapshot truth contract

Exit condition:
- autosave snapshot row can be created with project-consistent basis

### Step 7
Implement latest autosave pointer update rule

Exit condition:
- project.latest_autosave_snapshot_id resolves latest autosave correctly

### Step 8
Implement POST /game/builder/autosaves write path

Exit condition:
- autosave request persists latest snapshot coherently

### Step 9
Implement Main Editor minimum screen shell

Exit condition:
- creator can load latest basis and initiate save/autosave

### Step 10
Implement Project Overview revision strip and restore panel

Exit condition:
- latest revision and latest autosave are visible and restorable

---

## 7. Blocking risks in M02

risk_01:
- revision save overwrites prior revision instead of appending immutable truth

risk_02:
- latest revision pointer advances even when save fails

risk_03:
- stale basis save silently overwrites newer work

risk_04:
- autosave snapshot references wrong project or wrong basis revision

risk_05:
- restore path uses autosave without showing basis identity

risk_06:
- editor shell hides whether current state is saved, conflicted, or draft

Required prevention:
- revision chain, pointer updates, and restore basis must remain explicit and auditable

---

## 8. Minimum M02 acceptance gate

Blocker tests:
- TC-GAME-010
- TC-GAME-011

Major test:
- TC-GAME-012

M02 may be considered closed only if:
- blocker tests pass
- autosave restore remains explicit and project-consistent
- editor and project summary reflect latest canonical basis correctly

---

## 9. Handoff rule to M03 and M04

M03 may start only when M02 confirms:
- revision save path is stable
- latest revision pointer is stable
- editor can reference current canonical basis safely

M04 may start only when M02 confirms:
- selected revision basis is stable enough for preview request
- conflict state does not leave preview basis ambiguous

Without those, asset integration and preview work should not proceed deeply.

---

## 10. Final decision for M02

M02 is the foundation of the Builder authoring loop.

Correct implementation priority:
1. immutable revision truth
2. conflict handling
3. latest revision pointer
4. autosave truth
5. latest autosave pointer
6. editor shell and restore panel

Anything that reverses this order increases rework and data-corruption risk.
