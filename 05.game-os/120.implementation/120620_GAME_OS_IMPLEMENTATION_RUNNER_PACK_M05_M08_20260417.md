# ============================================================
# GAME OS IMPLEMENTATION RUNNER PACK M05 M08
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
This document is the practical runner pack for the second GameOS implementation batch.
It fixes the execution order and completion checkpoints for M05 through M08.

scope:
- M05 Validation
- M06 Export and Manifest
- M07 Submission and Governance
- M08 Release Activation and Launcher

out_of_scope:
- M01 to M04 implementation details already fixed in prior runner pack
- M09 and later runtime-heavy modules
- real code or SQL in this document
- build runner scripts
- DB execution blocks

---

## 0. Execution principle

This runner pack is for creator-to-release path control.

execution rules:
- do validation truth before export eligibility logic
- do export package and manifest before submission identity
- do submission and governance before release activation
- do activation truth before launcher visibility
- never collapse validation acceptance and publish activation into one decision

handoff rule:
Each module may hand off only when:
- truth is stable enough for next module
- API contract is callable
- screen minimum is navigable
- blocker acceptance linkage is clear

---

## 1. Batch definition

second_batch_modules:
- M05 Validation
- M06 Export and Manifest
- M07 Submission and Governance
- M08 Release Activation and Launcher

batch_goal:
Create the first creator-to-release path:

1. validate selected revision
2. build export package
3. generate manifest
4. create submission request
5. review publish activation
6. activate release
7. expose launcher entry only for activated release

---

## 2. M05 Validation runner

module_code: M05
module_name: Validation

objective:
- establish validation execution and structured findings required before export

required_truth:
- game_validation_run
- game_validation_finding

required_api:
- POST /game/builder/validation-runs

required_screens:
- Validation Center

required_jobs:
- validation_run_execute_job

required_flow:
- Validation Run flow

implementation_order:
1. validation run identity and truth contract
2. finding truth contract with severity split
3. validation API contract
4. validation async job shell
5. validation result classification path
6. Validation Center summary strip
7. finding list and detail panel
8. rerun history visibility

blocking_checks:
- finding severity split must be blocking / warning / info compatible
- validation run must preserve basis revision identity
- rerun must not overwrite previous run history
- validation failure must remain explainable

done_when:
- selected revision can be validated
- validation run identity is stable
- findings persist with severity separation
- validation history survives rerun

acceptance_link:
- TC-GAME-022
- TC-GAME-023

handoff_to:
- M06 Export and Manifest

---

## 3. M06 Export and Manifest runner

module_code: M06
module_name: Export and Manifest

objective:
- convert a non-blocked validated revision into export package and manifest

required_truth:
- game_export_package
- game_manifest

required_api:
- POST /game/builder/export-packages

required_screens:
- Export / Publish Center export section

required_jobs:
- export_package_build_job

required_flow:
- Export Package Build flow

implementation_order:
1. export package truth contract
2. manifest truth contract
3. export eligibility rule from validation result
4. export API contract
5. export async build job shell
6. manifest generation path
7. Export / Publish Center eligibility strip
8. manifest preview section
9. export history visibility

blocking_checks:
- export may not proceed from blocking validation result
- export package must preserve basis revision and validation run linkage
- manifest must preserve export package linkage and versioning
- export blocked reason must be explicit

done_when:
- eligible revision exports successfully
- manifest is generated with stable identity
- blocked revision cannot export
- export state is visible from UI

acceptance_link:
- TC-GAME-030
- TC-GAME-031

handoff_to:
- M07 Submission and Governance

---

## 4. M07 Submission and Governance runner

module_code: M07
module_name: Submission and Governance

objective:
- establish governed review identity for export package and manifest

required_truth:
- game_submission_request
- review note payload
- validation acceptance state basis
- publish activation state basis

required_api:
- POST /game/builder/submission-requests

required_screens:
- Submission Request Detail

required_flow:
- Submission Request and Review flow

implementation_order:
1. submission request truth contract
2. submission eligibility rule
3. manifest required rule
4. submission API contract
5. submission status state family
6. Submission Request Detail header and status strip
7. evidence sections
8. review note visibility
9. submitted / under_review / rejected / held state presentation

blocking_checks:
- manifest must exist before submission
- submission state must stay separate from release activation state
- review history must be explainable
- failure to create submission must not leave broken partial truth

done_when:
- eligible export package can create submission request
- missing manifest case fails explicitly
- submission detail is readable
- review state remains traceable

acceptance_link:
- TC-GAME-032
- TC-GAME-033

handoff_to:
- M08 Release Activation and Launcher

---

## 5. M08 Release Activation and Launcher runner

module_code: M08
module_name: Release Activation and Launcher

objective:
- make reviewed release activatable and launcher-visible only when activation succeeds

required_truth:
- game_release
- game_release_store_link

required_screens:
- Publish Activation Review
- Runtime Launcher

required_flow:
- Publish Activation flow

required_integration:
- entitlement alignment read basis
- store visibility alignment basis

implementation_order:
1. release truth contract
2. release/store link truth contract
3. activation eligibility rule
4. Publish Activation Review decision surface
5. approve / hold / deny persistence path
6. launcher release visibility rule
7. launcher entitlement check
8. activated-only launch entry presentation
9. denied / held / non-activated suppression rule

blocking_checks:
- validation acceptance and publish activation must not be merged
- hold must not activate release
- deny must not activate release
- non-activated release must never appear as launchable
- activation must preserve auditability

done_when:
- reviewer can approve, hold, or deny activation
- activated release becomes visible to launcher basis
- non-activated release is not launchable
- release/store alignment is readable

acceptance_link:
- TC-GAME-040
- TC-GAME-041
- TC-GAME-042

handoff_to:
- M09 VN Runtime
- M10 RPG Runtime

---

## 6. Recommended execution sequence across M05 to M08

strict_sequence:
1. M05 truth
2. M05 API
3. M05 jobs
4. M05 screens
5. M05 flow polish
6. M06 truth
7. M06 API
8. M06 jobs
9. M06 screens
10. M06 flow polish
11. M07 truth
12. M07 API
13. M07 screens
14. M07 flow polish
15. M08 truth
16. M08 screens
17. M08 integration
18. M08 flow polish

parallelization_limits:
- M06 may begin only after M05 validation semantics are stable
- M07 may begin only after M06 export and manifest semantics are stable
- M08 may begin only after M07 submission/governance semantics are stable
- UI polish may overlap late in a module, but write-path truth may not be bypassed

---

## 7. Second coding milestone

milestone_name:
- Creator-to-release first governed vertical slice

must_be_true:
- validation works
- export works
- manifest exists
- submission request works
- publish review works
- activated release appears in launcher basis
- non-activated release remains non-launchable

milestone_exit_evidence:
- validation run and findings exist
- export package and manifest exist
- submission request exists
- publish decision trace exists
- activated release row and store link exist
- launcher shows only allowed activated release

---

## 8. Common failure traps for M05 to M08

trap_01:
- treating validation as advisory only and still exporting blocked revision

trap_02:
- generating export package without stable validation linkage

trap_03:
- generating submission without manifest identity

trap_04:
- collapsing validation acceptance and publish activation into one status

trap_05:
- making launcher visibility depend on weak UI flags instead of activation truth

trap_06:
- surfacing non-activated release as playable

prevention_rule:
Every module must preserve governance boundaries before user-facing launch convenience.

---

## 9. Runner checklist

before_starting_M05:
- M01 to M04 creator-side vertical slice is stable enough
- revision basis is immutable and preview basis is traceable

before_starting_M06:
- M05 validation semantics are stable
- blocking result clearly prevents export

before_starting_M07:
- M06 export package and manifest identities are stable

before_starting_M08:
- M07 submission/governance states are stable
- review split is preserved

before_closing_batch:
- M05 through M08 blocker acceptance linkage is traceable
- no known governance contract gap remains in creator-to-release path

---

## 10. Next runner pack

The next runner pack after this document should be:
- M09 to M11 implementation runner pack
