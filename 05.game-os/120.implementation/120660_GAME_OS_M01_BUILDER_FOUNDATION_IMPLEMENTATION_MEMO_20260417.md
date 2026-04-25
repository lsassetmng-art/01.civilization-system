# ============================================================
# GAME OS M01 BUILDER FOUNDATION IMPLEMENTATION MEMO
# ============================================================

status: active
system: Civilization System
os: GameOS
module: M01 Builder Foundation
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This memo fixes the implementation-start boundary for M01 Builder Foundation.
It is the first concrete module execution memo under the GameOS implementation chain.

scope:
- game_workspace
- game_project
- game_template_profile
- game_runtime_profile
- initial game_project_revision seed path
- Builder Home create entry
- Template Gallery create basis
- Project Overview initial load basis

out_of_scope:
- revision editing loop after first seed
- autosave
- asset upload/bind
- preview
- validation
- export/submission/release
- runtime play loop

---

## 0. M01 objective

M01 objective:
- create the first stable Builder project identity
- bind it to workspace + runtime profile + optional template profile
- issue the initial revision seed
- expose enough UI/read model to reopen the project correctly

M01 success definition:
- creator can create a project from allowed basis
- duplicate create is idempotent
- incompatible basis is rejected explicitly
- initial revision exists immediately after project creation
- project summary can be reopened without manual repair

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

Acceptance anchors:
- TC-GAME-001
- TC-GAME-002
- TC-GAME-003

---

## 2. Truth to implement first

### 2.1 game_workspace
Minimum M01 truth needs:
- workspace identity
- owner identity
- visibility/builder access state
- default language basis

M01 done_when for workspace:
- active workspace can be resolved by workspaceCode
- ownership/access basis is readable before create project

### 2.2 game_template_profile
Minimum M01 truth needs:
- template profile identity
- runtime family compatibility
- seed payload basis

M01 done_when for template profile:
- template choice can be validated before project create
- no template-less create is blocked if template is optional by policy

### 2.3 game_runtime_profile
Minimum M01 truth needs:
- runtime profile identity
- runtime family compatibility
- export/validation readiness can remain later, but compatibility basis must exist now

M01 done_when for runtime profile:
- runtime profile can be resolved by runtimeProfileCode
- runtime family compatibility is enforceable

### 2.4 game_project
Minimum M01 truth needs:
- project identity
- owner/workspace relation
- runtime/template relation
- latest revision pointer
- latest autosave pointer null
- baseline readiness state

M01 done_when for project:
- project is persistable
- project_code is unique
- latest_revision_id is filled after create flow finishes

### 2.5 initial game_project_revision seed
Minimum M01 truth needs:
- immutable first revision
- seed payload basis from runtime/template selection
- revision_no = 1

M01 done_when for first revision:
- new project always has a first immutable revision
- seed revision can be reopened from Project Overview

---

## 3. API to implement in M01

### 3.1 POST /game/builder/projects
M01 owns this endpoint completely.

Must support:
- valid create
- duplicate safe replay by idempotencyKey
- explicit basis validation failure
- initial revision seed creation inside same successful create path

Minimum request basis:
- payloadVersion
- commandId
- idempotencyKey
- workspaceCode
- projectCode
- projectName
- runtimeFamilyCode
- runtimeProfileCode
- optional templateFamilyCode
- optional templateProfileCode
- defaultLanguageCode

Minimum success basis:
- project identity
- workspace identity
- runtime/template basis
- latestRevisionRef
- readiness states

Minimum failure basis:
- explicit errorCode
- explicit errorState
- explicit basis mismatch detail where applicable

M01 API done_when:
- valid request creates project + first revision
- duplicate request does not create duplicate project
- incompatible request fails without partial broken truth

### 3.2 project summary read basis
M01 also needs minimum reopen/read support for:
- Builder Home recent project cards
- Project Overview header and readiness strip

M01 read basis done_when:
- created project can be listed and reopened immediately

---

## 4. Screens to implement in M01

### 4.1 Builder Home
Minimum M01 screen scope:
- create project entry
- recent project list
- open project action

Not needed yet:
- deep collaboration
- validation queue richness
- publish queue richness

Done_when:
- creator can start create flow and reopen created project

### 4.2 Template Gallery
Minimum M01 screen scope:
- template search/filter basics
- choose template
- create from template

Done_when:
- template choice can feed create flow safely

### 4.3 Project Overview
Minimum M01 screen scope:
- project header
- runtime/template summary
- latest revision summary
- open editor placeholder action

Done_when:
- project can be reopened and summarized without manual patch

---

## 5. Stateflow to implement in M01

Primary flow:
- Builder Project Creation flow

Required transitions:
- create_request_received
- create_authority_checked
- create_basis_validating
- create_persisting
- project_created
- create_denied
- create_failed

Critical guard rules:
- actor has Builder create authority
- workspace exists and active
- runtime family supported
- runtime profile compatible with runtime family
- template profile compatible when provided
- idempotency key not conflicting with different payload

Done_when:
- create path is explainable end-to-end in logs and response semantics

---

## 6. Ordered implementation steps

### Step 1
Implement truth resolution for:
- workspace lookup
- runtime profile lookup
- template profile lookup

Exit condition:
- create flow can validate all required basis identities

### Step 2
Implement game_project persistence contract

Exit condition:
- project row can be created with baseline readiness states

### Step 3
Implement initial revision seed contract

Exit condition:
- successful create always produces revision_no = 1

### Step 4
Implement POST /game/builder/projects write path

Exit condition:
- valid create persists project and seed revision atomically at module level semantics

### Step 5
Implement idempotency handling

Exit condition:
- duplicate replay does not create duplicate project

### Step 6
Implement create failure semantics

Exit condition:
- incompatible basis or denied actor returns explicit failure without broken partial state

### Step 7
Implement Builder Home minimum recent-project read path

Exit condition:
- new project appears in recent list

### Step 8
Implement Template Gallery minimum selection path

Exit condition:
- selected template can feed create safely

### Step 9
Implement Project Overview minimum summary path

Exit condition:
- created project can be reopened with stable header and latest revision identity

---

## 7. Blocking risks in M01

risk_01:
- project row created without first revision

risk_02:
- project create succeeds with incompatible runtime/template basis

risk_03:
- duplicate create creates second project

risk_04:
- latest_revision pointer left null after create

risk_05:
- created project cannot be reopened from read model

Required prevention:
- create path must end only after project + seed revision + latest pointer are all coherent

---

## 8. Minimum M01 acceptance gate

Blocker tests:
- TC-GAME-001
- TC-GAME-002

Major test:
- TC-GAME-003

M01 may be considered closed only if:
- blocker tests pass
- major failure remains explicit and non-silent
- project reopen path works from canonical read basis

---

## 9. Handoff rule to M02

M02 may start only when M01 confirms:
- project identity is stable
- initial revision exists
- latest revision pointer is stable
- create path is idempotent
- reopen path works from Builder Home / Project Overview

Without those, M02 save/autosave work should not start.

---

## 10. Final decision for M01

M01 is the foundation of the entire GameOS Builder path.

Correct implementation priority:
1. truth and basis resolution
2. create API
3. initial revision seed
4. idempotency
5. reopen/read path
6. minimal screens

Anything that reverses this order increases rework risk.

