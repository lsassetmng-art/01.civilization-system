# ============================================================
# GAME OS IMPLEMENTATION PHASE BY MODULE
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: implementation phase by module
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the canonical implementation phase order for GameOS.

Primary execution target:
- move GameOS from implementation-ready design into implementation-start order

Primary modules covered:
- Builder foundation
- Builder authoring
- Preview
- Validation
- Export and manifest
- Submission and governance
- Release activation and launcher
- VN runtime
- RPG runtime
- Save/load and recovery
- Persona growth outbox
- Gambling policy control

---

## 1. Execution rules

### 1.1 Phase rule
Each phase must produce implementation-usable output.
Do not start a later phase by assuming missing truth, screen, or contract from an earlier phase.

### 1.2 Do-not-skip rule
The following may not be skipped:
- project and revision truth
- validation truth
- export package and manifest truth
- governance split between validation and publish
- runtime save/load and recovery
- Persona outbox idempotency
- policy gate for gambling family

### 1.3 Completion rule
A phase is complete only when:
- truth is buildable
- API contract is buildable
- core screen behavior is buildable
- main stateflow is buildable
- acceptance criteria for that phase are checkable

---

## 2. Phase summary

### Phase 1
name: Builder Foundation and Project Truth

### Phase 2
name: Builder Authoring Core

### Phase 3
name: Preview and Validation

### Phase 4
name: Export, Manifest, and Submission

### Phase 5
name: Publish Activation and Runtime Launcher

### Phase 6
name: VN Runtime Vertical Slice

### Phase 7
name: RPG Runtime Vertical Slice

### Phase 8
name: Save, Load, and Recovery

### Phase 9
name: Persona Growth Outbox

### Phase 10
name: Gambling Policy Control Boundary

### Phase 11
name: Final Integration Sweep

---

## 3. Phase 1
name: Builder Foundation and Project Truth

objective:
- establish the minimum Builder truth and create/open lifecycle

scope:
- game_workspace
- game_project
- game_project_revision
- game_autosave_snapshot
- game_template_profile
- game_runtime_profile
- Builder Home
- Template Gallery
- Project Overview project-create entry

dependencies:
- none beyond GameOS shared foundation

must_build:
- project create endpoint
- project create validation
- template/runtime profile compatibility check
- initial revision seed creation
- recent project listing basis
- latest revision and latest autosave linkage

do_not_skip:
- immutable revision truth
- compatibility validation between runtime and template basis
- idempotent create command

completion_criteria:
- creator can create a project
- creator can reopen the project
- latest revision identity is stable
- project summary loads without manual patching

handoff_target:
- Phase 2 Builder Authoring Core

---

## 4. Phase 2
name: Builder Authoring Core

objective:
- establish editable authoring loop for scenes, routes, maps, and assets

scope:
- Main Editor
- Asset Studio
- revision save
- autosave
- asset registration and binding
- collaboration lock basis

dependencies:
- Phase 1 complete

must_build:
- revision save endpoint
- autosave endpoint
- revision compare basis
- editor visible state
- asset registration truth
- asset usage mapping
- collaboration lock state read

do_not_skip:
- save conflict handling
- autosave restore basis
- asset checksum and validation state
- latest revision update consistency

completion_criteria:
- creator can edit and save
- creator can autosave and restore
- asset can be uploaded and bound
- save conflict is detectable and explainable

handoff_target:
- Phase 3 Preview and Validation

---

## 5. Phase 3
name: Preview and Validation

objective:
- establish the creator feedback loop before export

scope:
- Preview Studio
- Validation Center
- preview session build job
- validation run job
- finding list and severity model

dependencies:
- Phase 2 complete

must_build:
- preview session endpoint
- validation run endpoint
- blocking/warning finding model
- preview job async path
- validation job async path
- source jump basis from finding to editor context

do_not_skip:
- preview blocked state
- validation severity split
- revision-basis trace
- repeatable rerun behavior

completion_criteria:
- creator can build preview from chosen revision
- validation produces blocking and warning findings
- preview and validation both preserve basis revision identity
- blocked state is visible and actionable

handoff_target:
- Phase 4 Export, Manifest, and Submission

---

## 6. Phase 4
name: Export, Manifest, and Submission

objective:
- turn a validated revision into a governed submission artifact

scope:
- Export / Publish Center
- game_export_package
- game_manifest
- game_submission_request
- submission detail flow

dependencies:
- Phase 3 complete

must_build:
- export package build endpoint
- manifest generation
- export eligibility rule
- submission request create endpoint
- submission detail read model
- history/audit visibility

do_not_skip:
- export blocked state
- manifest identity and versioning
- submission eligibility check
- governance evidence visibility

completion_criteria:
- creator can build export package
- manifest is generated and visible
- submission request is creatable from eligible export
- submission status is readable from UI

handoff_target:
- Phase 5 Publish Activation and Runtime Launcher

---

## 7. Phase 5
name: Publish Activation and Runtime Launcher

objective:
- activate a release and make it launchable

scope:
- Publish Activation Review
- game_release
- game_release_store_link
- Runtime Launcher
- release/store alignment

dependencies:
- Phase 4 complete

must_build:
- publish decision flow
- release activation persistence
- store link truth
- launcher read model
- entitlement alignment read check
- release note basis

do_not_skip:
- split between validation acceptance and publish activation
- activation denied and held states
- store alignment trace
- release activation audit

completion_criteria:
- reviewer can approve, hold, or deny activation
- activated release appears in launcher basis
- non-activated release is not launchable
- release/store alignment status is visible

handoff_target:
- Phase 6 VN Runtime Vertical Slice

---

## 8. Phase 6
name: VN Runtime Vertical Slice

objective:
- make one complete VN play loop executable end-to-end

scope:
- VN Runtime Session
- choice progression
- route state
- affection/flag progression
- ending resolution

dependencies:
- Phase 5 complete

must_build:
- runtime session create for VN
- scene progression
- choice handling
- route state update
- quick save entry
- ending/result transition

do_not_skip:
- scene basis integrity
- route branch handling
- language switch support
- crash-to-recovery handoff point

completion_criteria:
- player can start VN session
- player can progress through scenes and choices
- route and affection state persist in runtime session basis
- ending can be reached cleanly

handoff_target:
- Phase 7 RPG Runtime Vertical Slice

---

## 9. Phase 7
name: RPG Runtime Vertical Slice

objective:
- make one complete RPG play loop executable end-to-end

scope:
- RPG Runtime Session
- map traversal
- party state
- quest state
- inventory/equipment state
- battle result ingestion

dependencies:
- Phase 5 complete
- may proceed in parallel with late Phase 6 hardening after VN core is stable

must_build:
- runtime session create for RPG
- map transition basis
- party state read/write
- inventory read/write
- quest progress update
- save entry point

do_not_skip:
- map/current state integrity
- inventory consistency
- quest progression trace
- failure-to-recovery handoff point

completion_criteria:
- player can start RPG session
- player can move map state forward
- quest and inventory state change predictably
- saveable checkpoint exists

handoff_target:
- Phase 8 Save, Load, and Recovery

---

## 10. Phase 8
name: Save, Load, and Recovery

objective:
- harden runtime continuity across VN and RPG families

scope:
- game_save_slot
- game_runtime_error_log
- game_runtime_recovery_attempt
- Save / Load Overlay
- Runtime Error / Recovery Screen

dependencies:
- Phase 6 and Phase 7 at minimum playable level

must_build:
- save slot write endpoint
- load flow
- runtime interruption log
- recovery attempt persistence
- recovery state presentation
- limited retry behavior

do_not_skip:
- save slot ownership alignment
- release alignment
- recovery audit trail
- failure terminalization after retry threshold

completion_criteria:
- player can save and load
- interrupted runtime can enter recovery flow
- recovery attempts are logged
- unrecoverable failure is explicit and non-silent

handoff_target:
- Phase 9 Persona Growth Outbox

---

## 11. Phase 9
name: Persona Growth Outbox

objective:
- safely emit GameOS-originated candidate signals to PersonaOS

scope:
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt
- outbox queue and delivery job
- queue-from-save or queue-from-ending basis

dependencies:
- Phase 8 complete

must_build:
- outbox queue endpoint
- outbox delivery job
- retry scheduling
- duplicate prevention by idempotency key
- delivery evidence record

do_not_skip:
- no direct Persona overwrite
- retryable vs terminal failure split
- request/response evidence storage
- duplicate-safe delivery semantics

completion_criteria:
- GameOS can queue signal safely
- delivery attempts are recorded
- duplicate queue/delivery does not cause duplicate semantic effect
- failed delivery can retry or dead-letter predictably

handoff_target:
- Phase 10 Gambling Policy Control Boundary

---

## 12. Phase 10
name: Gambling Policy Control Boundary

objective:
- enforce stronger activation gate for regulated runtime families

scope:
- game_policy_review_record
- gambling release check endpoint
- operator policy review flow
- activation deny/hold integration

dependencies:
- Phase 5 complete
- may execute after Phase 9 unless gambling family is moved earlier by business requirement

must_build:
- policy review record truth
- regulated family detection
- allow/deny/hold decision capture
- publish activation integration
- evidence payload storage

do_not_skip:
- separate authority from ordinary publish review
- policy hold semantics
- policy denial activation block
- evidence-backed decision trace

completion_criteria:
- regulated runtime cannot activate without policy allow
- deny and hold both stop activation
- review record is preserved with reason and evidence
- policy flow is visible to publish review side

handoff_target:
- Phase 11 Final Integration Sweep

---

## 13. Phase 11
name: Final Integration Sweep

objective:
- close cross-module gaps and freeze implementation start pack

scope:
- cross-flow checks
- cross-table integrity review
- screen-state/API-state alignment review
- acceptance set alignment
- index/overview cleanup

dependencies:
- Phase 1 through Phase 10 complete

must_build:
- final dependency review
- missing enum/state cleanup
- missing index/overview cleanup
- evidence of phase completion
- implementation start handoff memo

do_not_skip:
- Builder to runtime boundary checks
- release to launcher alignment checks
- save/load to outbox linkage checks
- policy gate to activation checks

completion_criteria:
- no unresolved critical contract gap remains
- module order is traceable
- implementation team can start without guessing missing canonical behavior
- GameOS implementation-start pack is complete

handoff_target:
- implementation execution

---

## 14. Parallelization notes

allowed parallel ranges:
- late Phase 6 hardening and early Phase 7 preparation
- UI polishing inside a phase after contract-critical truth/API/stateflow is stable
- documentation cleanup during final integration sweep

not recommended in parallel:
- Phase 1 and Phase 2 before truth is stable
- Phase 4 before validation contract is stable
- Phase 5 before submission/governance basis is stable
- Phase 9 before save/load and runtime recovery semantics are stable

---

## 15. Final phase order decision

canonical order:
1. Builder Foundation and Project Truth
2. Builder Authoring Core
3. Preview and Validation
4. Export, Manifest, and Submission
5. Publish Activation and Runtime Launcher
6. VN Runtime Vertical Slice
7. RPG Runtime Vertical Slice
8. Save, Load, and Recovery
9. Persona Growth Outbox
10. Gambling Policy Control Boundary
11. Final Integration Sweep

This is the canonical GameOS implementation phase order.

---

## 16. Next package

The next package after this phase document should be:
- acceptance test case set
- integrated implementation-start pack
