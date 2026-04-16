# ROUND 2 GAME OS ONLY IMPLEMENTATION-READY PACKAGE

status: implementation-ready-fixed
scope: GameOS only
round: 2
system: Civilization System
os: GameOS
prepared_for: Boss
prepared_by: Zero
prepared_at: 2026-04-17
language: English

---

## 0. Roadmap

### Whole roadmap
1. Round 1: cross-foundation implementation-ready lock
2. Round 2: GameOS implementation-ready completion
3. Round 3: BusinessOS / StreamingOS implementation-ready completion
4. Round 4: Civilization-wide final alignment and completion audit

### Current position
Round 1 is already completed.
This package fixes GameOS only as the active Round 2 target.

### Execution rule for this package
This package does not attempt to complete PersonaOS or LifeOS.
PersonaOS and LifeOS appear only where GameOS requires a fixed external contract.

---

## 1. Evidence-based judgment from existing canon

GameOS is not skeleton design.

The current canonical body already contains deep design assets for:
- runtime overview and runtime-family architecture
- Builder overview, screen, state/save, storage, editor, asset studio, preview studio, validation center, export/publish center
- Builder DB schema architecture and frontend state architecture
- security/permission, implementation phase, completion review, observability/logging
- store listing, marketplace linkage, runtime profile, builder package link, publish activation, validation acceptance
- VN, RPG, puzzle, strategy, and ruleset runtime families

However, the current state is still uneven in one important way:
- Builder and runtime architecture are deep
- model families are broad
- but the final implementation contract needs to be locked in one place with exact screens, exact payloads, truth-table families, event rules, authority boundaries, and rollout order

Therefore the correct judgment is:
- GameOS is beyond skeleton design
- GameOS is deep design with strong Builder/runtime maturity
- GameOS still benefits from a single implementation-ready package that freezes the exact contract for implementation start

---

## 2. Final decision for this execution

### 2.1 Fixed decision
This execution fixes GameOS only as implementation-ready.

### 2.2 Completion objective
This package makes GameOS implementation-ready for:
- Builder core
- Builder asset studio
- Builder preview studio
- Builder validation center
- Builder export / publish center
- VN runtime
- RPG runtime
- Game-to-Persona growth signal outbox
- controlled gambling-runtime boundary

### 2.3 Out-of-scope for this execution
The following are not completed here as primary design targets:
- PersonaOS internal implementation
- LifeOS internal implementation
- BusinessOS
- StreamingOS
- StaticArtOS

---

## 3. GameOS implementation-ready completion

### 3.1 Final implementation slices
GameOS implementation slices are fixed as:
- game-builder-workspace
- game-builder-editor
- game-builder-asset-studio
- game-builder-preview-studio
- game-builder-validation-center
- game-builder-export-and-submission
- game-release-and-store-link
- game-runtime-core
- game-runtime-vn-dating-sim
- game-runtime-rpg
- game-persona-growth-outbox
- game-gambling-runtime-control-boundary

### 3.2 Mandatory screen set

#### 3.2.1 Creator / Builder surfaces
Initial implementation must provide these Builder screens:
- Builder Home
- Template Gallery
- Project Overview
- Main Editor
- Asset Studio
- Preview Studio
- Validation Center
- Export / Publish Center
- Collaboration Session Panel
- Revision / Autosave Restore Panel

These Builder surfaces are mandatory and may not be omitted.

#### 3.2.2 Runtime / player surfaces
Initial implementation must provide these runtime/player screens:
- Published Title Landing
- Runtime Launcher
- VN Runtime Session
- RPG Runtime Session
- Save / Load Overlay
- Ending / Result Screen
- Runtime Error / Recovery Screen

#### 3.2.3 Governance / review surfaces
Initial implementation must provide these governance surfaces:
- Submission Request Detail
- Validation Acceptance Review
- Publish Activation Review
- Gambling Runtime Control Review

### 3.3 Screen state lock
Every Builder screen must expose:
- workspace_code
- project_code where inside a project
- runtime_family_code
- runtime_profile_code where relevant
- template_profile_code where relevant
- latest_revision_ref
- autosave_snapshot_ref where applicable
- save_state
- inline_validation_state
- export_readiness_state
- publish_readiness_state
- collaborator_lock_state where collaborative
- permission_basis

Preview and export surfaces must additionally expose:
- basis_revision_ref
- preview_session_ref where created
- export_package_ref where created
- submission_request_ref where created
- manifest_ref where created
- blocking_findings_count

Runtime/player surfaces must additionally expose:
- runtime_session_ref
- package_ref
- release_ref
- device_class
- language_code
- current_scene_ref or map_ref
- route_state_ref where route-based
- save_slot_ref where save/load capable
- failure_recovery_state where interrupted

Governance surfaces must additionally expose:
- submission_status
- validation_acceptance_status
- publish_activation_status
- policy_review_required flag
- authority_actor_type

### 3.4 Actor and authority lock
GameOS implementation must distinguish at least these actor classes:
- end_user_player
- creator_owner
- creator_collaborator_editor
- creator_collaborator_viewer
- reviewer_validation
- reviewer_publish
- operator_policy
- system_runtime

Minimum authority rules are fixed as:
- only creator-owner or allowed collaborator can edit Builder truth
- only allowed creator roles can create preview, export package, or submission request
- runtime session cannot mutate Builder draft truth directly
- validation acceptance review and publish activation review are separate decisions
- gambling runtime release requires additional operator/policy authority beyond ordinary game release
- GameOS may emit growth/context signals to PersonaOS but may not overwrite Persona truth directly

---

## 4. GameOS API contract lock

All write endpoints must preserve:
- stable request id or command id
- actor basis
- correlation_id where async
- idempotency_key where replay or duplicate risk exists
- payload_version

### 4.1 POST /game/builder/projects
Purpose:
- create a Builder project from a runtime/template-compatible basis

Request example:
  workspaceCode: gws_001
  projectCode: gpr_001
  projectName: Moon Route
  runtimeFamilyCode: vn|rpg|puzzle|strategy
  runtimeProfileCode: vn_standard
  templateProfileCode: dating_story_starter
  templateFamilyCode: starter
  createdBy: usr_001
  payloadVersion: 1

Response example:
  projectCode: gpr_001
  workspaceCode: gws_001
  revisionRef: grev_001
  saveState: draft
  inlineValidationState: not_run
  exportReadinessState: not_ready
  publishReadinessState: not_ready

### 4.2 POST /game/builder/revisions/save
Purpose:
- save a Builder revision or autosave snapshot

Request example:
  projectCode: gpr_001
  basisRevisionRef: grev_001
  autosave: false
  changeSet.sceneDiffs: []
  changeSet.routeDiffs: []
  changeSet.mapDiffs: []
  changeSet.assetRefs: []
  commandId: cmd_001
  idempotencyKey: idem_001
  payloadVersion: 1

Response example:
  projectCode: gpr_001
  newRevisionRef: grev_002
  autosaveSnapshotRef: null
  saveState: saved
  conflictState: none
  latestRevisionRef: grev_002

### 4.3 POST /game/builder/preview-sessions
Purpose:
- open a preview session from a selected revision

Request example:
  projectCode: gpr_001
  basisRevisionRef: grev_002
  runtimeFamilyCode: vn
  deviceClass: mobile|tablet|desktop
  languageCode: en
  payloadVersion: 1

Response example:
  previewSessionRef: gps_001
  projectCode: gpr_001
  basisRevisionRef: grev_002
  runtimeFamilyCode: vn
  previewReadinessState: ready
  blockingFindingsCount: 0

### 4.4 POST /game/builder/validation-runs
Purpose:
- execute validation against the selected revision

Request example:
  projectCode: gpr_001
  basisRevisionRef: grev_002
  validationProfileCode: pre_publish_default
  commandId: cmd_002
  payloadVersion: 1

Response example:
  validationRunRef: gvr_001
  projectCode: gpr_001
  basisRevisionRef: grev_002
  validationState: running|passed|failed
  blockingFindingsCount: 2
  warningFindingsCount: 4

### 4.5 POST /game/builder/export-packages
Purpose:
- create an export package from a validated revision

Request example:
  projectCode: gpr_001
  basisRevisionRef: grev_002
  validationRunRef: gvr_001
  targetPlatformSet: ios, android, pc, tablet
  targetStoreSet: game_store, civilization_marketplace
  commandId: cmd_003
  payloadVersion: 1

Response example:
  exportPackageRef: gexp_001
  projectCode: gpr_001
  manifestRef: gman_001
  exportState: built
  submissionEligible: true

### 4.6 POST /game/builder/submission-requests
Purpose:
- submit an export package for validation/publish governance

Request example:
  projectCode: gpr_001
  exportPackageRef: gexp_001
  submissionType: validation_acceptance|publish_activation
  storeChannelCode: civilization_marketplace
  payloadVersion: 1

Response example:
  submissionRequestRef: gsub_001
  projectCode: gpr_001
  submissionStatus: submitted
  validationAcceptanceStatus: pending
  publishActivationStatus: not_started

### 4.7 POST /game/runtime/sessions
Purpose:
- start runtime play from an activated release

Request example:
  releaseRef: grel_001
  packageRef: gpack_001
  playerId: usr_100
  deviceClass: mobile
  languageCode: ja
  payloadVersion: 1

Response example:
  runtimeSessionRef: grun_001
  releaseRef: grel_001
  packageRef: gpack_001
  runtimeState: active
  saveCapability: true

### 4.8 POST /game/runtime/save-slots
Purpose:
- save runtime progress

Request example:
  runtimeSessionRef: grun_001
  saveSlotRef: slot_001
  currentSceneRef: scene_020
  routeStateRef: route_a
  personaSignalCandidateSet[0].signalCode: affection_gain
  personaSignalCandidateSet[0].magnitude: 3
  payloadVersion: 1

Response example:
  saveSlotRef: slot_001
  runtimeSessionRef: grun_001
  saveState: saved
  personaOutboxQueued: true

### 4.9 POST /game/runtime/persona-growth-outbox
Purpose:
- emit GameOS-originated growth/context signals to PersonaOS

Request example:
  runtimeSessionRef: grun_001
  playerId: usr_100
  signalSet[0].signalCode: route_completed
  signalSet[0].magnitude: 1
  signalSet[0].basisRef: ending_blue_moon
  correlationId: corr_001
  idempotencyKey: idem_010
  payloadVersion: 1

Response example:
  outboxRef: gout_001
  deliveryState: queued
  personaOverwriteAllowed: false

### 4.10 POST /game/runtime/gambling-control/release-check
Purpose:
- policy gate before gambling-family runtime activation

Request example:
  releaseRef: grel_999
  runtimeFamilyCode: gambling
  operatorReviewRef: oprev_001
  policyProfileCode: regulated_gambling_profile
  payloadVersion: 1

Response example:
  releaseRef: grel_999
  policyReviewRequired: true
  policyDecision: allow|deny|hold
  activationAllowed: false

---

## 5. GameOS truth/data family lock

### 5.1 Builder truth families
The following truth families are mandatory:
- game_workspace
- game_project
- game_project_revision
- game_autosave_snapshot
- game_template_profile
- game_runtime_profile
- game_asset_ref
- game_scene_ref
- game_route_ref
- game_map_ref
- game_validation_run
- game_validation_finding
- game_export_package
- game_submission_request
- game_collaboration_lock
- game_manifest

### 5.2 Release/runtime truth families
The following runtime/release truths are mandatory:
- game_release
- game_release_store_link
- game_runtime_session
- game_save_slot
- game_result_summary
- game_runtime_error_log
- game_runtime_recovery_attempt

### 5.3 Outbox / integration truths
The following integration truths are mandatory:
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt
- game_marketplace_activation_link
- game_policy_review_record for regulated families

### 5.4 Minimum DB exactness rule
Each truth family must have:
- stable system id
- public business code where human-visible
- lifecycle status
- created_at
- updated_at
- created_by where human-authored
- updated_by where human-authored
- archived_at where archiveable
- source_basis_ref where derived
- version_no where optimistic concurrency is needed

---

## 6. Runtime family implementation-ready lock

### 6.1 VN / dating-sim runtime
Initial VN runtime must support:
- route branching
- chapter / scene progression
- affection / flag changes
- save / load
- ending resolution
- restart / recovery
- multilingual text resource switching

VN runtime may emit:
- route_completed
- affection_gain
- ending_reached
- preference_signal_candidate

### 6.2 RPG runtime
Initial RPG runtime must support:
- party state
- map traversal
- battle result ingestion
- inventory/equipment state
- quest state
- save / load
- fail / retry / recovery

RPG runtime may emit:
- victory_chain
- quest_completed
- moral_choice_signal_candidate
- persistence_signal_candidate

### 6.3 Puzzle and strategy runtime
Puzzle and strategy runtime families may remain secondary in initial build,
but Builder model compatibility must already exist in the Builder truth family.

That means:
- runtime_family_code must support them in project creation
- template and runtime profiles must support future activation
- validation and export must not hard-code only VN or RPG assumptions

### 6.4 Gambling-runtime control boundary
GameOS may define gambling runtime family structures,
but release activation is gated by:
- policy review
- operator review
- regional rule profile
- marketplace or store acceptance rule
- optional company or business boundary where required by jurisdiction

Implementation rule:
ordinary game release flow and gambling release flow may not share the same final activation authority.

---

## 7. Event and async lock

### 7.1 Mandatory async jobs
Initial implementation must include:
- preview_session_build_job
- validation_run_execute_job
- export_package_build_job
- submission_dispatch_job
- persona_growth_outbox_delivery_job
- runtime_error_recovery_job

### 7.2 Event families
Mandatory event families:
- game.project.created
- game.revision.saved
- game.preview.ready
- game.validation.finished
- game.export.built
- game.submission.created
- game.release.activated
- game.runtime.started
- game.save.saved
- game.persona_growth.queued
- game.persona_growth.delivered
- game.policy.review.completed

### 7.3 Idempotency and replay rule
The following operations must be idempotency-safe:
- project create when client retries on uncertain completion
- revision save when network retry occurs
- validation start
- export build request
- submission request create
- persona growth outbox delivery
- runtime save slot write where duplicate replay can happen

---

## 8. GameOS external contract lock

### 8.1 PersonaOS contract
GameOS and PersonaOS contract is fixed as:
- GameOS emits growth/context candidate signals
- PersonaOS owns interpretation and final truth mutation
- GameOS may read allowed Persona-linked profile/view surfaces if granted
- GameOS may not directly overwrite Persona growth, identity, or canonical Persona state

### 8.2 Civilization marketplace/store contract
Marketplace/store contract is fixed as:
- Builder export package produces submission-ready package plus manifest
- validation acceptance and publish activation are separate governance points
- accepted release must appear in appropriate store/discovery surfaces
- activated release must be launchable from GameOS runtime launcher
- marketplace entitlement and GameOS runtime access must stay aligned

### 8.3 CX22073JW contract
CX22073JW may hold:
- referenceable game knowledge index
- package metadata index
- compressed or reconstructed knowledge artifacts
- search/reference support for Builder or runtime support surfaces

CX22073JW does not become the live transactional source of truth for Builder draft state.

---

## 9. Implementation phase order

### 9.1 Fixed order
GameOS implementation phase order is fixed as:

1. Builder workspace plus project create plus revision save truth
2. template/runtime profile truth and editor binding
3. preview session job plus preview screen
4. validation run plus findings model plus validation screen
5. export package plus manifest plus export screen
6. submission request plus governance screens
7. release activation plus store/runtime launcher linkage
8. VN runtime playable vertical slice
9. RPG runtime playable vertical slice
10. save/load plus runtime recovery
11. Persona growth outbox
12. gambling-runtime control boundary

### 9.2 Do-not-skip rule
The following may not be skipped:
- revision truth
- validation truth
- export manifest truth
- governance split between validation and publish
- save/load recovery
- outbox idempotency

---

## 10. Acceptance criteria

GameOS becomes implementation-ready only if all of the following are true:

### 10.1 Builder acceptance
- creator can create a project with runtime family plus template basis
- creator can save a new revision without corrupting previous revision truth
- creator can open preview from a selected revision
- validation run returns blocking and warning findings
- export build produces package plus manifest
- submission request can be created from export package

### 10.2 Runtime acceptance
- player can launch an activated VN release
- player can launch an activated RPG release
- player can save and load progress
- interrupted runtime can recover with explicit recovery state
- runtime cannot mutate Builder draft truth directly

### 10.3 Governance acceptance
- validation acceptance and publish activation are separate
- denied or held policy result blocks activation
- gambling-family release requires stronger policy/operator gate than ordinary release

### 10.4 Integration acceptance
- GameOS can queue Persona growth outbox safely
- duplicate outbox delivery does not duplicate final Persona mutation
- marketplace entitlement and GameOS runtime access remain consistent

---

## 11. Final conclusion

GameOS is not skeleton design.
It is already a deep design system with strong Builder/runtime maturity.

The correct next move is not broadening the skeleton.
The correct next move is fixing the implementation contract.

This package therefore declares:
- GameOS only is the active execution scope
- Builder, runtime, release, governance, and outbox boundaries are fixed
- GameOS is now ready to move into:
  - screen exact design
  - DB column exact design
  - stateflow exact design
  - implementation phase specification

That is the implementation-ready completion for this GameOS-only execution.
