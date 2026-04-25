# ============================================================
# GAME OS IMPLEMENTATION TASK BREAKDOWN BY MODULE
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
This document breaks GameOS implementation work down into module-level task groups.
It is the practical execution layer below the implementation-start pack.

---

## 0. Execution rule

Task breakdown rule:
- each module must have a truth task
- each module must have an API task where write/read contract exists
- each module must have a screen/runtime task where user-facing behavior exists
- each module must have a stateflow/integration task where async or review transitions exist
- each module must have acceptance linkage

Priority rule:
- build truth before UI convenience
- build blockers before polish
- build canonical write path before secondary read optimization

---

## 1. Module map

Primary implementation modules:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M03 Asset Studio
- M04 Preview
- M05 Validation
- M06 Export and Manifest
- M07 Submission and Governance
- M08 Release Activation and Launcher
- M09 VN Runtime
- M10 RPG Runtime
- M11 Save Load Recovery
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

---

## 2. M01 Builder Foundation

objective:
- establish workspace, project, template/runtime basis, and initial revision creation

task_groups:
- T-M01-01 truth
- T-M01-02 API
- T-M01-03 screens
- T-M01-04 stateflow
- T-M01-05 acceptance

### T-M01-01 truth
build:
- game_workspace
- game_project
- game_template_profile
- game_runtime_profile
- seed game_project_revision path
done_when:
- project identity and initial revision are persistable

### T-M01-02 API
build:
- POST /game/builder/projects
- project summary read model
done_when:
- valid create works
- duplicate create is idempotent
- incompatible basis is rejected

### T-M01-03 screens
build:
- Builder Home
- Template Gallery
- Project Overview create-entry path
done_when:
- creator can create and reopen a project from UI

### T-M01-04 stateflow
build:
- Builder Project Creation flow
done_when:
- create -> authority -> basis validation -> persist path is observable

### T-M01-05 acceptance
link:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

---

## 3. M02 Builder Authoring Core

objective:
- establish the main editing loop and immutable revision save

task_groups:
- T-M02-01 truth
- T-M02-02 API
- T-M02-03 screens
- T-M02-04 stateflow
- T-M02-05 acceptance

### T-M02-01 truth
build:
- game_project_revision complete save path
- game_autosave_snapshot
- project latest_revision_id update rule
done_when:
- immutable revision save works without corrupting history

### T-M02-02 API
build:
- POST /game/builder/revisions/save
- POST /game/builder/autosaves
done_when:
- save conflict is detectable
- autosave snapshot is restorable

### T-M02-03 screens
build:
- Main Editor
- Project Overview revision status strip
- Revision / Autosave Restore Panel
done_when:
- creator can edit, save, autosave, restore

### T-M02-04 stateflow
build:
- Revision Save and Autosave flow
done_when:
- save conflict path and autosave path are both visible

### T-M02-05 acceptance
link:
- TC-GAME-010
- TC-GAME-011
- TC-GAME-012

---

## 4. M03 Asset Studio

objective:
- establish asset registration, checksum, binding, and usage trace

task_groups:
- T-M03-01 truth
- T-M03-02 API
- T-M03-03 screens
- T-M03-04 integration
- T-M03-05 acceptance

### T-M03-01 truth
build:
- game_asset_ref
- asset usage count/update rule
done_when:
- asset registration is persistable and traceable

### T-M03-02 API
build:
- asset upload/register endpoint contract
- asset bind/update endpoint contract where needed
done_when:
- asset can be stored and linked to project basis

### T-M03-03 screens
build:
- Asset Studio
done_when:
- creator can upload, inspect, and bind assets

### T-M03-04 integration
build:
- asset reference link from editor save payload
done_when:
- revision payload and asset registry stay aligned

### T-M03-05 acceptance
link:
- TC-GAME-013

---

## 5. M04 Preview

objective:
- provide revision-based preview execution

task_groups:
- T-M04-01 truth
- T-M04-02 API
- T-M04-03 screens
- T-M04-04 jobs and stateflow
- T-M04-05 acceptance

### T-M04-01 truth
build:
- preview session read/write basis
- basis revision trace for preview result
done_when:
- preview identity and revision trace are preserved

### T-M04-02 API
build:
- POST /game/builder/preview-sessions
done_when:
- preview request returns session identity and readiness state

### T-M04-03 screens
build:
- Preview Studio
done_when:
- preview pane and findings pane are visible

### T-M04-04 jobs and stateflow
build:
- preview_session_build_job
- Preview Session Build flow
done_when:
- ready / blocked / failed states are emitted clearly

### T-M04-05 acceptance
link:
- TC-GAME-020
- TC-GAME-021

---

## 6. M05 Validation

objective:
- provide validation run execution and structured findings

task_groups:
- T-M05-01 truth
- T-M05-02 API
- T-M05-03 screens
- T-M05-04 jobs and stateflow
- T-M05-05 acceptance

### T-M05-01 truth
build:
- game_validation_run
- game_validation_finding
done_when:
- validation results are persistable with severity split

### T-M05-02 API
build:
- POST /game/builder/validation-runs
done_when:
- validation can start and return run identity

### T-M05-03 screens
build:
- Validation Center
done_when:
- findings by severity and source jump are visible

### T-M05-04 jobs and stateflow
build:
- validation_run_execute_job
- Validation Run flow
done_when:
- run history is preserved across reruns

### T-M05-05 acceptance
link:
- TC-GAME-022
- TC-GAME-023

---

## 7. M06 Export and Manifest

objective:
- convert validated revision into export package + manifest

task_groups:
- T-M06-01 truth
- T-M06-02 API
- T-M06-03 screens
- T-M06-04 jobs and stateflow
- T-M06-05 acceptance

### T-M06-01 truth
build:
- game_export_package
- game_manifest
done_when:
- package and manifest are versioned and traceable

### T-M06-02 API
build:
- POST /game/builder/export-packages
done_when:
- eligible revision exports successfully
- blocked revision is rejected

### T-M06-03 screens
build:
- Export / Publish Center export section
done_when:
- export eligibility and manifest preview are visible

### T-M06-04 jobs and stateflow
build:
- export_package_build_job
- Export Package Build flow
done_when:
- export queued/building/built/failed states are observable

### T-M06-05 acceptance
link:
- TC-GAME-030
- TC-GAME-031

---

## 8. M07 Submission and Governance

objective:
- create and manage submission review identity

task_groups:
- T-M07-01 truth
- T-M07-02 API
- T-M07-03 screens
- T-M07-04 stateflow
- T-M07-05 acceptance

### T-M07-01 truth
build:
- game_submission_request
- review note payload
done_when:
- submission request is traceable and reviewable

### T-M07-02 API
build:
- POST /game/builder/submission-requests
done_when:
- eligible export can produce submission request
- missing manifest case fails clearly

### T-M07-03 screens
build:
- Submission Request Detail
done_when:
- submission history, status, and evidence are visible

### T-M07-04 stateflow
build:
- Submission Request and Review flow
done_when:
- submitted / under_review / completed / rejected / held states are clear

### T-M07-05 acceptance
link:
- TC-GAME-032
- TC-GAME-033

---

## 9. M08 Release Activation and Launcher

objective:
- activate release and expose launchable entry

task_groups:
- T-M08-01 truth
- T-M08-02 screens
- T-M08-03 stateflow
- T-M08-04 integration
- T-M08-05 acceptance

### T-M08-01 truth
build:
- game_release
- game_release_store_link
done_when:
- release activation state and store alignment are persistable

### T-M08-02 screens
build:
- Publish Activation Review
- Runtime Launcher
done_when:
- reviewer can decide and player can see launch entry when activated

### T-M08-03 stateflow
build:
- Publish Activation flow
done_when:
- approve / hold / deny states are preserved separately

### T-M08-04 integration
build:
- entitlement alignment read path
- launcher release visibility rule
done_when:
- only activated aligned release becomes launchable

### T-M08-05 acceptance
link:
- TC-GAME-040
- TC-GAME-041
- TC-GAME-042

---

## 10. M09 VN Runtime

objective:
- deliver one complete VN play loop

task_groups:
- T-M09-01 runtime basis
- T-M09-02 runtime UI
- T-M09-03 route progression
- T-M09-04 ending
- T-M09-05 acceptance

### T-M09-01 runtime basis
build:
- VN runtime session basis on game_runtime_session
done_when:
- VN session starts with stable scene/route basis

### T-M09-02 runtime UI
build:
- VN Runtime Session
done_when:
- dialogue, choice, quick menu, save entry are usable

### T-M09-03 route progression
build:
- choice handling
- affection/flag updates
done_when:
- route changes are deterministic and restorable

### T-M09-04 ending
build:
- Ending / Result Screen
done_when:
- ending reached state is visible and recordable

### T-M09-05 acceptance
link:
- TC-GAME-050
- TC-GAME-051
- TC-GAME-052

---

## 11. M10 RPG Runtime

objective:
- deliver one complete RPG play loop

task_groups:
- T-M10-01 runtime basis
- T-M10-02 runtime UI
- T-M10-03 progression
- T-M10-04 checkpoint
- T-M10-05 acceptance

### T-M10-01 runtime basis
build:
- RPG runtime session basis on game_runtime_session
done_when:
- RPG session starts with stable map/party basis

### T-M10-02 runtime UI
build:
- RPG Runtime Session
done_when:
- map, party, quest, inventory panels are usable

### T-M10-03 progression
build:
- map traversal
- quest progression
- inventory/equipment update
done_when:
- state transitions are predictable and reloadable

### T-M10-04 checkpoint
build:
- saveable checkpoint link to runtime state
done_when:
- meaningful progress can be saved

### T-M10-05 acceptance
link:
- TC-GAME-060
- TC-GAME-061
- TC-GAME-062

---

## 12. M11 Save Load Recovery

objective:
- harden runtime continuity and recovery

task_groups:
- T-M11-01 truth
- T-M11-02 API
- T-M11-03 screens
- T-M11-04 stateflow
- T-M11-05 acceptance

### T-M11-01 truth
build:
- game_save_slot
- game_runtime_error_log
- game_runtime_recovery_attempt
done_when:
- save/load/recovery events are persistable with auditability

### T-M11-02 API
build:
- POST /game/runtime/save-slots
- load/read path as required
done_when:
- save and continue loop works consistently

### T-M11-03 screens
build:
- Save / Load Overlay
- Runtime Error / Recovery Screen
done_when:
- player can save, load, and see recovery state

### T-M11-04 stateflow
build:
- Save, Load, and Runtime Recovery flow
done_when:
- retry threshold and unrecoverable terminal state are explicit

### T-M11-05 acceptance
link:
- TC-GAME-070
- TC-GAME-071
- TC-GAME-072
- TC-GAME-073

---

## 13. M12 Persona Growth Outbox

objective:
- safely emit candidate growth/context signals toward PersonaOS

task_groups:
- T-M12-01 truth
- T-M12-02 API
- T-M12-03 jobs and stateflow
- T-M12-04 safeguards
- T-M12-05 acceptance

### T-M12-01 truth
build:
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt
done_when:
- outbox and delivery evidence are durable

### T-M12-02 API
build:
- POST /game/runtime/persona-growth-outbox
done_when:
- queue operation returns stable outbox identity

### T-M12-03 jobs and stateflow
build:
- persona_growth_outbox_delivery_job
- Persona Growth Outbox Delivery flow
done_when:
- queued / delivering / delivered / failed / dead_letter are visible

### T-M12-04 safeguards
build:
- idempotency protection
- no direct Persona overwrite rule
done_when:
- duplicate semantic effect is prevented

### T-M12-05 acceptance
link:
- TC-GAME-080
- TC-GAME-081
- TC-GAME-082
- TC-GAME-083

---

## 14. M13 Gambling Policy Control

objective:
- enforce stronger policy gate for regulated runtime families

task_groups:
- T-M13-01 truth
- T-M13-02 API
- T-M13-03 screens and review
- T-M13-04 stateflow
- T-M13-05 acceptance

### T-M13-01 truth
build:
- game_policy_review_record
done_when:
- allow / deny / hold can be recorded with evidence

### T-M13-02 API
build:
- POST /game/runtime/gambling-control/release-check
done_when:
- regulated release check returns explicit decision path

### T-M13-03 screens and review
build:
- Gambling Runtime Control Review
- policy section in Publish Activation Review
done_when:
- regulated release review is visible and separate

### T-M13-04 stateflow
build:
- Gambling Policy Review Gate flow
done_when:
- policy allow is mandatory before activation for regulated family

### T-M13-05 acceptance
link:
- TC-GAME-090
- TC-GAME-091
- TC-GAME-092

---

## 15. M14 Final Integration Sweep

objective:
- close cross-module gaps and confirm implementation-start pack consistency

task_groups:
- T-M14-01 cross-check
- T-M14-02 cleanup
- T-M14-03 acceptance closure

### T-M14-01 cross-check
build:
- Builder/runtime separation check
- export/validation separation check
- publish activation split check
- outbox/policy integration check
done_when:
- cross-flow invariants are still true

### T-M14-02 cleanup
build:
- missing index/overview cleanup
- remaining enum/state cleanup
- unresolved audit memo cleanup where needed
done_when:
- no contract-critical structural gap remains

### T-M14-03 acceptance closure
link:
- TC-GAME-100
- TC-GAME-101
- TC-GAME-102
- TC-GAME-103
done_when:
- GameOS implementation-start pack is executable without guessing

---

## 16. Practical first coding batch

Recommended first coding batch:
- M01 Builder Foundation
- M02 Builder Authoring Core
- M05 Validation
- M06 Export and Manifest

reason:
- these modules unlock the canonical truth path from project creation to export eligibility

---

## 17. Practical second coding batch

Recommended second coding batch:
- M04 Preview
- M07 Submission and Governance
- M08 Release Activation and Launcher

reason:
- these modules unlock reviewable and launchable release flow

---

## 18. Practical third coding batch

Recommended third coding batch:
- M09 VN Runtime
- M10 RPG Runtime
- M11 Save Load Recovery

reason:
- these modules unlock playable product loops and continuity

---

## 19. Practical fourth coding batch

Recommended fourth coding batch:
- M12 Persona Growth Outbox
- M13 Gambling Policy Control
- M14 Final Integration Sweep

reason:
- these modules harden external integration and policy closure

---

## 20. Completion rule

This task breakdown is complete when:
- every module has a stable execution objective
- every module links back to exact design and acceptance
- coding order can be started without inventing missing task grouping
