# ============================================================
# GAME OS ACCEPTANCE TEST CASE SET
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: acceptance test case set
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the first canonical acceptance test case set for GameOS.

Covered areas:
- Builder project creation
- Builder authoring and autosave
- Preview and validation
- Export, manifest, and submission
- Publish activation and launcher
- VN runtime vertical slice
- RPG runtime vertical slice
- Save/load and recovery
- Persona growth outbox
- Gambling policy review
- Cross-flow invariants

Severity convention:
- blocker: implementation cannot be accepted if failed
- major: core behavior incomplete if failed
- minor: quality issue, does not alone block phase close

Evidence rule:
Each test case should be provable by:
- API response evidence
- UI/screen evidence
- DB truth evidence
- audit/log evidence
as applicable.

---

## 1. Builder foundation acceptance

### TC-GAME-001
title: Creator can create a Builder project from valid workspace and compatible template/runtime basis
severity: blocker

preconditions:
- active workspace exists
- creator has Builder create authority
- compatible runtime profile and template profile exist

action:
- submit create project request with valid workspaceCode, projectCode, runtimeFamilyCode, runtimeProfileCode, and templateProfileCode

expected_result:
- project is created
- project_code is unique
- initial revision ref is issued
- latest revision link is stored
- save state is draft
- export readiness state is not_ready

evidence_points:
- POST /game/builder/projects success response
- Builder Home shows new project
- game_project row exists
- game_project_revision seed row exists

### TC-GAME-002
title: Project creation is idempotent under duplicate replay with same idempotency key
severity: blocker

preconditions:
- valid create payload prepared

action:
- submit same create request twice with same idempotencyKey

expected_result:
- second response does not create duplicate project
- same project identity is returned or semantically referenced
- only one canonical project row exists

evidence_points:
- API response comparison
- game_project uniqueness check
- create audit trace

### TC-GAME-003
title: Project creation is denied for incompatible template/runtime basis
severity: major

preconditions:
- incompatible runtime profile and template profile prepared

action:
- submit create project request with incompatible basis

expected_result:
- request fails with explicit basis invalid reason
- no project row is created
- failure is explainable

evidence_points:
- failure response body
- absence of new project row
- validation/audit log entry

---

## 2. Builder authoring acceptance

### TC-GAME-010
title: Creator can save a new immutable revision from Main Editor
severity: blocker

preconditions:
- editable project exists
- latest revision exists
- creator has edit authority

action:
- submit revision save with changeSet

expected_result:
- new revision ref is created
- revision number increments
- prior revision remains unchanged
- latest revision pointer moves to new revision

evidence_points:
- POST /game/builder/revisions/save success response
- Main Editor shows saved state
- game_project_revision old and new rows
- game_project.latest_revision_id updated

### TC-GAME-011
title: Save conflict is detected when basis revision is stale
severity: blocker

preconditions:
- project has newer revision than client basis

action:
- submit revision save using stale basisRevisionRef

expected_result:
- request returns conflict state
- no unintended overwrite occurs
- current latest revision remains unchanged

evidence_points:
- conflict response body
- no destructive revision change
- save conflict audit record

### TC-GAME-012
title: Autosave snapshot is persisted and restorable
severity: major

preconditions:
- editable project exists
- unsaved changes exist

action:
- submit autosave request then restore latest autosave from UI flow

expected_result:
- autosave snapshot ref is created
- latest autosave pointer is updated
- restore basis is visible
- restored content matches autosave payload basis

evidence_points:
- POST /game/builder/autosaves response
- Project Overview autosave status
- game_autosave_snapshot row
- restore event trace

### TC-GAME-013
title: Asset can be uploaded, registered, and bound to project
severity: major

preconditions:
- project exists
- creator has edit authority

action:
- upload valid asset and bind it in Asset Studio

expected_result:
- asset_ref is created
- checksum is stored
- asset usage mapping updates
- editor can reference the asset

evidence_points:
- Asset Studio visible asset row
- game_asset_ref row
- revision save payload references asset_ref

---

## 3. Preview and validation acceptance

### TC-GAME-020
title: Preview session can be created from selected revision
severity: blocker

preconditions:
- project exists
- selected revision exists
- preview service available

action:
- submit preview session create request

expected_result:
- preview session ref is returned
- preview becomes ready
- basis revision is preserved
- preview screen loads content for selected runtime family

evidence_points:
- POST /game/builder/preview-sessions response
- Preview Studio ready state
- preview job log
- preview basis trace

### TC-GAME-021
title: Preview is blocked when unresolved blocking findings exist
severity: major

preconditions:
- selected revision has known blocking issues

action:
- attempt preview creation

expected_result:
- preview enters blocked state
- blocking findings count is returned
- user can navigate toward source/finding context

evidence_points:
- blocked response
- Preview Studio blocked state
- linked validation finding evidence

### TC-GAME-022
title: Validation run produces blocking and warning findings with severity split
severity: blocker

preconditions:
- selected revision contains both blocking and warning issues

action:
- submit validation run

expected_result:
- validation run ref is created
- validation completes
- findings are categorized by severity
- counts match finding records

evidence_points:
- POST /game/builder/validation-runs response
- Validation Center severity summary
- game_validation_run row
- game_validation_finding rows

### TC-GAME-023
title: Validation rerun preserves historical run records
severity: major

preconditions:
- at least one prior validation run exists

action:
- rerun validation on same revision

expected_result:
- new validation run identity is created
- old run remains intact
- historical comparison remains possible

evidence_points:
- multiple validation_run refs
- validation history UI
- preserved DB rows

---

## 4. Export and submission acceptance

### TC-GAME-030
title: Export package and manifest can be built from eligible validated revision
severity: blocker

preconditions:
- revision exists
- latest validation result is non-blocking
- target platforms/stores are supported

action:
- submit export package build request

expected_result:
- export package ref is created
- manifest ref is created
- export state is built
- submissionEligible becomes true

evidence_points:
- POST /game/builder/export-packages response
- Export / Publish Center built state
- game_export_package row
- game_manifest row

### TC-GAME-031
title: Export is blocked when revision is not export eligible
severity: blocker

preconditions:
- revision has blocked export readiness

action:
- attempt export build

expected_result:
- request returns blocked state
- no export package is created
- user sees explainable blocking reason

evidence_points:
- blocked response
- Export / Publish Center blocked message
- no new export row

### TC-GAME-032
title: Submission request can be created from eligible export package
severity: blocker

preconditions:
- export package exists
- manifest exists
- submission target store is allowed

action:
- submit submission request

expected_result:
- submission request ref is created
- submission status is submitted
- validation acceptance and publish activation remain split
- submission detail can be opened

evidence_points:
- POST /game/builder/submission-requests response
- Submission Request Detail screen
- game_submission_request row

### TC-GAME-033
title: Submission creation fails when manifest is missing
severity: major

preconditions:
- export package exists without valid manifest linkage

action:
- attempt submission creation

expected_result:
- request fails explicitly
- no broken submission record is created

evidence_points:
- failure response
- absence of invalid submission row
- audit evidence

---

## 5. Publish activation and launcher acceptance

### TC-GAME-040
title: Reviewer can approve activation for eligible release
severity: blocker

preconditions:
- submission eligible for publish activation exists
- reviewer has publish authority
- no policy gate blocks release

action:
- reviewer approves activation

expected_result:
- activation status becomes activated
- release row is created or updated correctly
- launcher basis becomes available

evidence_points:
- Publish Activation Review decision evidence
- game_release row
- game_release_store_link row
- Runtime Launcher visible release

### TC-GAME-041
title: Reviewer can hold activation without activating release
severity: blocker

preconditions:
- eligible submission exists

action:
- reviewer chooses hold

expected_result:
- publish activation status becomes held
- release is not launchable
- held reason is visible

evidence_points:
- hold decision response or log
- submission status view
- absence of activation allowed state in launcher

### TC-GAME-042
title: Non-activated release is not launchable
severity: blocker

preconditions:
- release exists in non-activated state

action:
- player attempts launch

expected_result:
- launch is denied
- no runtime session is created
- denial reason is visible

evidence_points:
- POST /game/runtime/sessions denied response
- no runtime session row
- launcher denial trace

---

## 6. VN runtime acceptance

### TC-GAME-050
title: Player can start VN runtime session from activated release
severity: blocker

preconditions:
- activated VN release exists
- player has entitlement

action:
- launch VN runtime session

expected_result:
- runtime session ref is created
- runtime state becomes active
- current scene and route state initialize properly

evidence_points:
- POST /game/runtime/sessions success response
- VN Runtime Session screen
- game_runtime_session row

### TC-GAME-051
title: VN choice progression updates route and affection basis correctly
severity: blocker

preconditions:
- active VN runtime session exists
- choice point exists

action:
- player chooses branching option

expected_result:
- route state updates correctly
- affection or flag change is applied
- next scene loads correctly

evidence_points:
- runtime UI progression
- runtime session state evidence
- save payload after checkpoint

### TC-GAME-052
title: VN ending can be reached and result screen shown
severity: major

preconditions:
- VN session near route ending

action:
- continue progression to ending

expected_result:
- ending resolution occurs
- Ending / Result Screen is shown
- ending basis is recordable for signal emission or result history

evidence_points:
- ending screen evidence
- runtime ended state or ending state trace
- optional result summary record

---

## 7. RPG runtime acceptance

### TC-GAME-060
title: Player can start RPG runtime session from activated release
severity: blocker

preconditions:
- activated RPG release exists
- player has entitlement

action:
- launch RPG runtime session

expected_result:
- runtime session is created
- current map and party state initialize properly

evidence_points:
- runtime launch response
- RPG Runtime Session screen
- game_runtime_session row

### TC-GAME-061
title: RPG map traversal and quest progression update predictably
severity: blocker

preconditions:
- active RPG runtime session exists
- traversable map and quest exist

action:
- move through map and trigger quest advancement

expected_result:
- current map basis changes correctly
- quest state updates
- transition is visible and recoverable

evidence_points:
- runtime screen evidence
- runtime state/log evidence
- save payload inspection

### TC-GAME-062
title: RPG inventory or equipment update remains consistent after saveable checkpoint
severity: major

preconditions:
- active RPG runtime session exists

action:
- change inventory/equipment and reach checkpoint

expected_result:
- inventory/equipment state is preserved in runtime basis
- saveable checkpoint reflects changed state

evidence_points:
- runtime screen evidence
- save payload evidence
- reloaded state consistency

---

## 8. Save, load, and recovery acceptance

### TC-GAME-070
title: Player can save progress and continue from same save slot
severity: blocker

preconditions:
- active runtime session exists

action:
- save to slot, exit or pause, then continue from same slot

expected_result:
- save slot is written
- last saved timestamp updates
- continued session restores same basis

evidence_points:
- POST /game/runtime/save-slots response
- Runtime Launcher continue state
- game_save_slot row

### TC-GAME-071
title: Save slot ownership is enforced by player and release scope
severity: blocker

preconditions:
- save slot exists for player A and release X

action:
- player B or mismatched release attempts load

expected_result:
- load is denied
- no data leak occurs
- mismatch reason is explainable

evidence_points:
- denied load response
- no unauthorized state hydration
- audit evidence

### TC-GAME-072
title: Interrupted runtime enters recovery flow with logged recovery attempts
severity: blocker

preconditions:
- runtime interruption can be simulated

action:
- trigger runtime interruption and invoke recovery

expected_result:
- runtime error log is created
- recovery attempt rows are created
- recovery screen is shown
- recovery either succeeds explicitly or fails explicitly

evidence_points:
- game_runtime_error_log row
- game_runtime_recovery_attempt rows
- Runtime Error / Recovery Screen evidence

### TC-GAME-073
title: Recovery stops after retry threshold and surfaces unrecoverable state
severity: major

preconditions:
- repeated recovery failure scenario exists

action:
- trigger recovery until threshold is exceeded

expected_result:
- recovery terminates in explicit failure state
- no silent endless retry occurs

evidence_points:
- recovery attempt count
- terminal recovery state
- failure UI/log evidence

---

## 9. Persona growth outbox acceptance

### TC-GAME-080
title: Save or ending event can queue Persona growth outbox safely
severity: blocker

preconditions:
- qualifying runtime signal exists

action:
- queue Persona growth outbox event

expected_result:
- outbox ref is created
- delivery state is queued
- overwrite permission remains false

evidence_points:
- POST /game/runtime/persona-growth-outbox response
- game_persona_growth_outbox row

### TC-GAME-081
title: Duplicate outbox queue attempt does not create duplicate semantic event
severity: blocker

preconditions:
- equivalent outbox event already queued with same idempotency key

action:
- submit duplicate queue request

expected_result:
- duplicate creation is prevented
- semantic duplication does not occur

evidence_points:
- duplicate/conflict response
- unique outbox row count
- idempotency evidence

### TC-GAME-082
title: Delivery attempts are recorded and retryable failure transitions correctly
severity: major

preconditions:
- outbox queued
- Persona destination temporarily unavailable

action:
- execute delivery job and force retryable failure

expected_result:
- delivery attempt record is created
- outbox remains retryable
- next retry timing is set or retry path is explicit

evidence_points:
- game_persona_growth_delivery_attempt row
- outbox delivery_state evidence
- retry schedule evidence

### TC-GAME-083
title: Terminal delivery failure transitions to dead letter predictably
severity: major

preconditions:
- outbox repeatedly fails until threshold exceeded

action:
- continue delivery attempts until terminal threshold

expected_result:
- outbox becomes dead_letter
- failure remains inspectable
- no infinite retry occurs

evidence_points:
- outbox final state
- delivery attempt history
- operational log evidence

---

## 10. Gambling policy control acceptance

### TC-GAME-090
title: Regulated runtime family cannot activate without policy allow
severity: blocker

preconditions:
- gambling family release exists
- policy allow not yet granted

action:
- attempt activation

expected_result:
- activation is blocked or denied
- launch remains unavailable

evidence_points:
- gambling control response
- publish review evidence
- absence of activated release state

### TC-GAME-091
title: Policy hold prevents activation while preserving reviewability
severity: blocker

preconditions:
- regulated runtime family release exists

action:
- operator records hold decision

expected_result:
- policy state becomes hold
- activation is not completed
- review can be resumed later under same identity

evidence_points:
- game_policy_review_record row
- publish activation held evidence
- preserved policy review reference

### TC-GAME-092
title: Policy deny prevents activation with explicit evidence
severity: blocker

preconditions:
- regulated runtime family release exists

action:
- operator records deny decision

expected_result:
- activationAllowed remains false
- release cannot activate
- decision reason and evidence are preserved

evidence_points:
- game_policy_review_record row
- denial evidence bundle
- no activated release state

---

## 11. Cross-flow invariant acceptance

### TC-GAME-100
title: Runtime session cannot mutate Builder draft truth directly
severity: blocker

preconditions:
- active runtime session exists
- Builder project exists for source title

action:
- perform runtime actions only

expected_result:
- no Builder draft/revision truth is mutated by runtime activity
- any emitted signals go only through allowed outbox/integration path

evidence_points:
- unchanged Builder revision state
- runtime/outbox evidence separation

### TC-GAME-101
title: Export cannot proceed from blocking validation result
severity: blocker

preconditions:
- blocking validation result exists

action:
- attempt export build

expected_result:
- export is blocked
- no submission-eligible package is produced

evidence_points:
- blocked export response
- absence of eligible export package
- validation linkage evidence

### TC-GAME-102
title: Publish activation and validation acceptance remain separate decisions
severity: blocker

preconditions:
- submission exists

action:
- inspect review path and execute validation/publish steps

expected_result:
- validation acceptance state and publish activation state are not collapsed into one field or one decision
- independent evidence exists for each decision

evidence_points:
- submission detail evidence
- publish review evidence
- DB state separation

### TC-GAME-103
title: Marketplace/runtime access alignment remains consistent after activation
severity: major

preconditions:
- release activated
- store link exists

action:
- inspect store listing alignment and runtime launcher accessibility

expected_result:
- entitled activated release is launchable
- misaligned state is detectable if present
- release/store link truth is readable

evidence_points:
- game_release_store_link row
- Runtime Launcher evidence
- alignment status read model

---

## 12. Minimum acceptance gate by phase

Phase 1 minimum gate:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

Phase 2 minimum gate:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012
- TC-GAME-013

Phase 3 minimum gate:
- TC-GAME-020
- TC-GAME-022
- TC-GAME-023

Phase 4 minimum gate:
- TC-GAME-030
- TC-GAME-031
- TC-GAME-032

Phase 5 minimum gate:
- TC-GAME-040
- TC-GAME-041
- TC-GAME-042

Phase 6 minimum gate:
- TC-GAME-050
- TC-GAME-051

Phase 7 minimum gate:
- TC-GAME-060
- TC-GAME-061

Phase 8 minimum gate:
- TC-GAME-070
- TC-GAME-071
- TC-GAME-072

Phase 9 minimum gate:
- TC-GAME-080
- TC-GAME-081
- TC-GAME-082

Phase 10 minimum gate:
- TC-GAME-090
- TC-GAME-091
- TC-GAME-092

Phase 11 minimum gate:
- TC-GAME-100
- TC-GAME-101
- TC-GAME-102
- TC-GAME-103

---

## 13. Final acceptance decision rule

GameOS implementation-start pack is operationally acceptable only if:
- all blocker tests pass
- no unresolved major defect remains in phase-closing gates
- evidence exists for Builder, runtime, release, outbox, and policy boundaries
- cross-flow invariants remain true

---

## 14. Next package

The next package after this acceptance set should be:
- integrated implementation-start pack
- final GameOS completion memo
