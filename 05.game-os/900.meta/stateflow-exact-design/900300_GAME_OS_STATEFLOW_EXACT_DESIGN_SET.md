# ============================================================
# GAME OS STATEFLOW EXACT DESIGN SET
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: stateflow exact design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the first canonical stateflow exact design set for GameOS.

Covered flows:
- Builder project creation
- Revision save and autosave
- Preview session build
- Validation run
- Export package build
- Submission request and review
- Publish activation
- Runtime session launch/play/end
- Save/load and runtime recovery
- Persona growth outbox delivery
- Gambling policy review gate

---

## 1. Shared stateflow rules

### 1.1 Common transition contract
Every GameOS flow must define:
- flow_code
- flow_name
- primary_actor
- start_state
- terminal_states
- state_list
- event_list
- guard_list
- transition_rules
- async_boundary
- retry_rule
- audit_note

### 1.2 Common state naming
Use these suffixes consistently:
- *_requested
- *_queued
- *_building
- *_running
- *_ready
- *_failed
- *_blocked
- *_approved
- *_denied
- *_held
- *_activated
- *_ended
- *_recovering

### 1.3 Common guard rules
All write-side transitions must check:
- actor authority
- project/release existence
- basis revision consistency where applicable
- idempotency safety where applicable
- policy requirement where applicable

### 1.4 Common audit rule
Every transition into failed, denied, held, blocked, or activated states must leave an audit trail.

---

## 2. Builder project creation flow

flow_code: game_builder_project_create_flow
flow_name: Builder Project Creation
primary_actor: creator_owner

purpose:
- create a new Builder project from workspace + runtime family + template/runtime profile basis

start_state:
- create_request_received

terminal_states:
- project_created
- create_denied
- create_failed

state_list:
- create_request_received
- create_authority_checked
- create_basis_validating
- create_basis_invalid
- create_persisting
- project_created
- create_denied
- create_failed

event_list:
- request_create_project
- authority_check_passed
- authority_check_failed
- basis_validation_passed
- basis_validation_failed
- persist_succeeded
- persist_failed

guard_list:
- actor has Builder create authority
- workspace exists and is active
- runtime_family_code supported
- runtime_profile compatible with runtime_family_code
- template_profile compatible when provided
- idempotency key not already completed with conflicting payload

transition_rules:
- create_request_received -> create_authority_checked on request_create_project
- create_authority_checked -> create_basis_validating on authority_check_passed
- create_authority_checked -> create_denied on authority_check_failed
- create_basis_validating -> create_persisting on basis_validation_passed
- create_basis_validating -> create_basis_invalid on basis_validation_failed
- create_basis_invalid -> create_failed after failure response recorded
- create_persisting -> project_created on persist_succeeded
- create_persisting -> create_failed on persist_failed

async_boundary:
- none required for core project create

retry_rule:
- request may be safely retried by idempotency key
- duplicate completed request must return existing project identity

audit_note:
- denial and failure reasons must be recorded with actor and workspace basis

---

## 3. Revision save and autosave flow

flow_code: game_revision_save_flow
flow_name: Revision Save and Autosave
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor

purpose:
- persist immutable revision truth or autosave snapshot from editor changes

start_state:
- save_request_received

terminal_states:
- revision_saved
- autosave_saved
- save_conflict
- save_denied
- save_failed

state_list:
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

event_list:
- request_save_revision
- request_autosave
- authority_check_passed
- authority_check_failed
- basis_loaded
- conflict_detected
- payload_validation_passed
- payload_validation_failed
- revision_persist_succeeded
- autosave_persist_succeeded
- persist_failed

guard_list:
- actor has edit authority
- project exists and is editable
- basis_revision_ref belongs to same project
- editor lock does not prevent save
- payload hash matches client basis expectation where optimistic concurrency enforced

transition_rules:
- save_request_received -> save_authority_checked on request_save_revision or request_autosave
- save_authority_checked -> save_basis_loaded on authority_check_passed
- save_authority_checked -> save_denied on authority_check_failed
- save_basis_loaded -> save_conflict_detected on conflict_detected
- save_basis_loaded -> save_payload_validating on basis_loaded when no conflict
- save_conflict_detected -> save_conflict after conflict response recorded
- save_payload_validating -> revision_persisting on request_save_revision and payload_validation_passed
- save_payload_validating -> autosave_persisting on request_autosave and payload_validation_passed
- save_payload_validating -> save_failed on payload_validation_failed
- revision_persisting -> revision_saved on revision_persist_succeeded
- revision_persisting -> save_failed on persist_failed
- autosave_persisting -> autosave_saved on autosave_persist_succeeded
- autosave_persisting -> save_failed on persist_failed

async_boundary:
- autosave may be queued locally then persisted, but server truth transition is final only when autosave_saved

retry_rule:
- revision save must be idempotent by idempotency key
- autosave may overwrite current latest autosave snapshot only within same project/session basis

audit_note:
- conflicts, save failures, and restores must preserve basis revision trace

---

## 4. Preview session build flow

flow_code: game_preview_build_flow
flow_name: Preview Session Build
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- creator_collaborator_viewer

purpose:
- build and expose a preview session from selected revision

start_state:
- preview_request_received

terminal_states:
- preview_ready
- preview_denied
- preview_failed
- preview_blocked

state_list:
- preview_request_received
- preview_authority_checked
- preview_basis_validating
- preview_build_queued
- preview_building
- preview_findings_checking
- preview_ready
- preview_blocked
- preview_denied
- preview_failed

event_list:
- request_preview
- authority_check_passed
- authority_check_failed
- basis_validation_passed
- basis_validation_failed
- build_job_queued
- build_started
- build_completed
- build_failed
- blocking_findings_detected
- no_blocking_findings

guard_list:
- actor has preview visibility
- basis revision exists
- runtime family supported by preview service
- asset references resolvable enough for preview

transition_rules:
- preview_request_received -> preview_authority_checked on request_preview
- preview_authority_checked -> preview_basis_validating on authority_check_passed
- preview_authority_checked -> preview_denied on authority_check_failed
- preview_basis_validating -> preview_build_queued on basis_validation_passed
- preview_basis_validating -> preview_failed on basis_validation_failed
- preview_build_queued -> preview_building on build_started
- preview_building -> preview_findings_checking on build_completed
- preview_building -> preview_failed on build_failed
- preview_findings_checking -> preview_blocked on blocking_findings_detected
- preview_findings_checking -> preview_ready on no_blocking_findings

async_boundary:
- preview_build_queued -> preview_building -> preview_findings_checking is async job territory

retry_rule:
- failed preview build may be retried from same basis revision
- blocked preview may be retried after revision fix or finding bypass rule where permitted

audit_note:
- blocked preview must record blocking finding references

---

## 5. Validation run flow

flow_code: game_validation_run_flow
flow_name: Validation Run
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor
- reviewer_validation

purpose:
- execute validation against revision and produce findings

start_state:
- validation_request_received

terminal_states:
- validation_passed
- validation_warning
- validation_blocking
- validation_failed
- validation_denied

state_list:
- validation_request_received
- validation_authority_checked
- validation_basis_validating
- validation_queued
- validation_running
- validation_result_classifying
- validation_passed
- validation_warning
- validation_blocking
- validation_failed
- validation_denied

event_list:
- request_validation
- authority_check_passed
- authority_check_failed
- basis_validation_passed
- basis_validation_failed
- validation_job_queued
- validation_started
- validation_completed
- validation_execution_failed
- severity_none
- severity_warning_only
- severity_blocking_found

guard_list:
- actor has validation access
- basis revision exists
- selected validation profile allowed for runtime family

transition_rules:
- validation_request_received -> validation_authority_checked on request_validation
- validation_authority_checked -> validation_basis_validating on authority_check_passed
- validation_authority_checked -> validation_denied on authority_check_failed
- validation_basis_validating -> validation_queued on basis_validation_passed
- validation_basis_validating -> validation_failed on basis_validation_failed
- validation_queued -> validation_running on validation_started
- validation_running -> validation_result_classifying on validation_completed
- validation_running -> validation_failed on validation_execution_failed
- validation_result_classifying -> validation_passed on severity_none
- validation_result_classifying -> validation_warning on severity_warning_only
- validation_result_classifying -> validation_blocking on severity_blocking_found

async_boundary:
- validation_queued -> validation_running -> validation_result_classifying is async job territory

retry_rule:
- validation may be rerun on same basis revision
- later runs do not mutate earlier result history

audit_note:
- validation result must record profile, actor, revision, counts, and completion time

---

## 6. Export package build flow

flow_code: game_export_build_flow
flow_name: Export Package Build
primary_actor: creator_owner
allowed_secondary_actor:
- creator_collaborator_editor

purpose:
- build export package and manifest from validated revision

start_state:
- export_request_received

terminal_states:
- export_built
- export_blocked
- export_denied
- export_failed

state_list:
- export_request_received
- export_authority_checked
- export_eligibility_checking
- export_queued
- export_building
- manifest_generating
- export_built
- export_blocked
- export_denied
- export_failed

event_list:
- request_export_build
- authority_check_passed
- authority_check_failed
- eligibility_passed
- eligibility_failed
- export_job_queued
- export_build_started
- export_build_completed
- export_build_failed
- manifest_generated
- manifest_generation_failed

guard_list:
- actor has export authority
- selected revision exists
- latest validation result is non-blocking
- target platforms and stores are supported by runtime profile

transition_rules:
- export_request_received -> export_authority_checked on request_export_build
- export_authority_checked -> export_eligibility_checking on authority_check_passed
- export_authority_checked -> export_denied on authority_check_failed
- export_eligibility_checking -> export_queued on eligibility_passed
- export_eligibility_checking -> export_blocked on eligibility_failed
- export_queued -> export_building on export_build_started
- export_building -> manifest_generating on export_build_completed
- export_building -> export_failed on export_build_failed
- manifest_generating -> export_built on manifest_generated
- manifest_generating -> export_failed on manifest_generation_failed

async_boundary:
- export_queued -> export_building -> manifest_generating is async job territory

retry_rule:
- export may be retried from same validated revision
- new successful export creates a new export package identity

audit_note:
- blocked export must record failed eligibility basis and validation reference

---

## 7. Submission request and review flow

flow_code: game_submission_request_flow
flow_name: Submission Request and Review
primary_actor: creator_owner
allowed_secondary_actor:
- reviewer_validation
- reviewer_publish

purpose:
- create submission request and move it through governance review states

start_state:
- submission_request_received

terminal_states:
- submission_under_review
- submission_completed
- submission_rejected
- submission_held
- submission_denied
- submission_failed

state_list:
- submission_request_received
- submission_authority_checked
- submission_eligibility_checking
- submission_persisting
- submission_submitted
- submission_under_review
- submission_completed
- submission_rejected
- submission_held
- submission_denied
- submission_failed

event_list:
- request_submission
- authority_check_passed
- authority_check_failed
- eligibility_passed
- eligibility_failed
- submission_persist_succeeded
- submission_persist_failed
- reviewer_started
- review_completed_accept
- review_completed_reject
- review_completed_hold

guard_list:
- actor has submission authority
- export package exists and is submission eligible
- manifest exists
- store channel allowed for package/runtime profile

transition_rules:
- submission_request_received -> submission_authority_checked on request_submission
- submission_authority_checked -> submission_eligibility_checking on authority_check_passed
- submission_authority_checked -> submission_denied on authority_check_failed
- submission_eligibility_checking -> submission_persisting on eligibility_passed
- submission_eligibility_checking -> submission_failed on eligibility_failed
- submission_persisting -> submission_submitted on submission_persist_succeeded
- submission_persisting -> submission_failed on submission_persist_failed
- submission_submitted -> submission_under_review on reviewer_started
- submission_under_review -> submission_completed on review_completed_accept
- submission_under_review -> submission_rejected on review_completed_reject
- submission_under_review -> submission_held on review_completed_hold

async_boundary:
- human review exists between submission_submitted and review terminalization

retry_rule:
- failed persistence may be retried with idempotency key
- held submissions may resume under same submission identity

audit_note:
- every review decision must capture reviewer, note, and evidence basis

---

## 8. Publish activation flow

flow_code: game_publish_activation_flow
flow_name: Publish Activation
primary_actor: reviewer_publish
allowed_secondary_actor:
- operator_policy for regulated runtime families

purpose:
- decide go-live activation after validation acceptance and evidence review

start_state:
- activation_review_open

terminal_states:
- activation_approved
- activation_denied
- activation_held
- activation_completed
- activation_failed

state_list:
- activation_review_open
- activation_eligibility_checking
- policy_gate_checking
- activation_approved
- activation_denied
- activation_held
- activation_persisting
- activation_completed
- activation_failed

event_list:
- request_activation_decision
- eligibility_passed
- eligibility_failed
- policy_gate_required
- policy_gate_passed
- policy_gate_denied
- reviewer_approved
- reviewer_denied
- reviewer_held
- activation_persist_succeeded
- activation_persist_failed

guard_list:
- actor has final publish authority
- submission completed or validation acceptance state allows publish review
- release/package/manifest alignment valid
- entitlement and launch alignment checks passed
- policy approval completed where required

transition_rules:
- activation_review_open -> activation_eligibility_checking on request_activation_decision
- activation_eligibility_checking -> policy_gate_checking on policy_gate_required
- activation_eligibility_checking -> activation_denied on eligibility_failed
- activation_eligibility_checking -> activation_approved on eligibility_passed when no policy gate required and reviewer_approved
- policy_gate_checking -> activation_denied on policy_gate_denied
- policy_gate_checking -> activation_approved on policy_gate_passed and reviewer_approved
- activation_review_open -> activation_denied on reviewer_denied
- activation_review_open -> activation_held on reviewer_held
- activation_approved -> activation_persisting on reviewer_approved
- activation_persisting -> activation_completed on activation_persist_succeeded
- activation_persisting -> activation_failed on activation_persist_failed

async_boundary:
- store/channel propagation after activation_completed may be async, but release truth activation is complete at activation_completed

retry_rule:
- failed activation persistence may be retried
- held activation stays reviewable without creating new submission

audit_note:
- activation decision must record reviewer and evidence checklist basis

---

## 9. Runtime session launch and play flow

flow_code: game_runtime_session_flow
flow_name: Runtime Session Launch and Play
primary_actor: end_user_player

purpose:
- launch released title into playable runtime session

start_state:
- launch_request_received

terminal_states:
- runtime_active
- runtime_ended
- launch_denied
- launch_failed
- runtime_crashed

state_list:
- launch_request_received
- entitlement_checking
- release_basis_loading
- runtime_session_persisting
- runtime_active
- runtime_paused
- runtime_ended
- runtime_crashed
- launch_denied
- launch_failed

event_list:
- request_launch
- entitlement_passed
- entitlement_failed
- release_loaded
- release_load_failed
- session_persist_succeeded
- session_persist_failed
- pause_requested
- resume_requested
- end_reached
- runtime_interrupt_detected

guard_list:
- release is activated
- player has entitlement or allowed launch permission
- runtime family supported on device class
- language choice supported by release/runtime profile

transition_rules:
- launch_request_received -> entitlement_checking on request_launch
- entitlement_checking -> release_basis_loading on entitlement_passed
- entitlement_checking -> launch_denied on entitlement_failed
- release_basis_loading -> runtime_session_persisting on release_loaded
- release_basis_loading -> launch_failed on release_load_failed
- runtime_session_persisting -> runtime_active on session_persist_succeeded
- runtime_session_persisting -> launch_failed on session_persist_failed
- runtime_active -> runtime_paused on pause_requested
- runtime_paused -> runtime_active on resume_requested
- runtime_active -> runtime_ended on end_reached
- runtime_active -> runtime_crashed on runtime_interrupt_detected
- runtime_paused -> runtime_crashed on runtime_interrupt_detected

async_boundary:
- entitlement/store sync may be async before launch, but launch itself requires current aligned read model

retry_rule:
- denied launch cannot auto-retry without entitlement change
- failed launch may retry on same release/device after transient issue clears

audit_note:
- launch denial and crash entry must preserve release and player basis

---

## 10. Save, load, and runtime recovery flow

flow_code: game_save_load_recovery_flow
flow_name: Save, Load, and Runtime Recovery
primary_actor: end_user_player
allowed_secondary_actor:
- system_runtime

purpose:
- save progress, resume from save, and recover interrupted runtime state

start_state:
- runtime_checkpoint_available

terminal_states:
- save_completed
- load_completed
- recovery_completed
- save_failed
- load_failed
- recovery_failed

state_list:
- runtime_checkpoint_available
- save_request_received
- save_persisting
- save_completed
- save_failed
- load_request_received
- load_basis_loading
- load_completed
- load_failed
- recovery_detected
- recovery_assessing
- recovering
- recovery_completed
- recovery_failed

event_list:
- request_save
- request_load
- runtime_interrupt_detected
- save_persist_succeeded
- save_persist_failed
- load_basis_found
- load_basis_missing
- recovery_strategy_selected
- recovery_succeeded
- recovery_failed_event

guard_list:
- runtime session exists and is active or recoverable
- selected save slot belongs to same player and release
- save payload is serializable
- recovery attempt count below configured threshold when auto-retrying

transition_rules:
- runtime_checkpoint_available -> save_request_received on request_save
- save_request_received -> save_persisting
- save_persisting -> save_completed on save_persist_succeeded
- save_persisting -> save_failed on save_persist_failed
- runtime_checkpoint_available -> load_request_received on request_load
- load_request_received -> load_basis_loading
- load_basis_loading -> load_completed on load_basis_found
- load_basis_loading -> load_failed on load_basis_missing
- runtime_checkpoint_available -> recovery_detected on runtime_interrupt_detected
- recovery_detected -> recovery_assessing
- recovery_assessing -> recovering on recovery_strategy_selected
- recovering -> recovery_completed on recovery_succeeded
- recovering -> recovery_failed on recovery_failed_event

async_boundary:
- recovery may invoke async rehydration/restart steps
- save and load should appear synchronous from player view after server confirmation

retry_rule:
- save may be retried idempotently on uncertain completion
- recovery may retry limited times, then stop in recovery_failed

audit_note:
- recovery attempts must record attempt_no, action, result, and runtime error basis

---

## 11. Persona growth outbox delivery flow

flow_code: game_persona_growth_outbox_flow
flow_name: Persona Growth Outbox Delivery
primary_actor: system_runtime

purpose:
- queue and deliver GameOS-originated growth/context candidate signals to PersonaOS

start_state:
- outbox_candidate_detected

terminal_states:
- outbox_queued
- outbox_delivered
- outbox_failed
- outbox_dead_letter

state_list:
- outbox_candidate_detected
- outbox_payload_building
- outbox_queued
- outbox_delivering
- outbox_delivered
- outbox_failed
- outbox_retry_scheduled
- outbox_dead_letter

event_list:
- candidate_signal_detected
- payload_built
- payload_build_failed
- delivery_started
- delivery_succeeded
- delivery_failed_retryable
- delivery_failed_terminal
- retry_time_reached

guard_list:
- runtime session exists
- player/user basis exists
- signal payload is serializable
- idempotency key unique for semantic event

transition_rules:
- outbox_candidate_detected -> outbox_payload_building on candidate_signal_detected
- outbox_payload_building -> outbox_queued on payload_built
- outbox_payload_building -> outbox_failed on payload_build_failed
- outbox_queued -> outbox_delivering on delivery_started
- outbox_delivering -> outbox_delivered on delivery_succeeded
- outbox_delivering -> outbox_retry_scheduled on delivery_failed_retryable
- outbox_delivering -> outbox_dead_letter on delivery_failed_terminal
- outbox_retry_scheduled -> outbox_delivering on retry_time_reached

async_boundary:
- delivery from queued onward is async outbox job territory

retry_rule:
- retryable failures increment delivery_attempt_count
- max retry threshold transitions to dead letter
- duplicate delivery must not cause duplicate final Persona mutation

audit_note:
- every attempt must preserve request/response payload evidence

---

## 12. Gambling policy review gate flow

flow_code: game_gambling_policy_gate_flow
flow_name: Gambling Policy Review Gate
primary_actor: operator_policy
allowed_secondary_actor:
- reviewer_publish

purpose:
- enforce stronger release decision path for regulated runtime families

start_state:
- policy_review_required_detected

terminal_states:
- policy_allowed
- policy_denied
- policy_held
- policy_failed

state_list:
- policy_review_required_detected
- policy_basis_loading
- policy_under_review
- policy_allowed
- policy_denied
- policy_held
- policy_failed

event_list:
- regulated_runtime_detected
- basis_loaded
- basis_load_failed
- operator_allow
- operator_deny
- operator_hold
- review_record_persist_failed

guard_list:
- runtime_family_code is regulated family
- policy profile exists
- required evidence bundle is present
- operator has policy authority

transition_rules:
- policy_review_required_detected -> policy_basis_loading on regulated_runtime_detected
- policy_basis_loading -> policy_under_review on basis_loaded
- policy_basis_loading -> policy_failed on basis_load_failed
- policy_under_review -> policy_allowed on operator_allow
- policy_under_review -> policy_denied on operator_deny
- policy_under_review -> policy_held on operator_hold
- policy_under_review -> policy_failed on review_record_persist_failed

async_boundary:
- human review is the primary wait boundary

retry_rule:
- held review may re-enter policy_under_review under same policy review identity
- failed evidence persistence may retry without changing decision semantics

audit_note:
- policy decision must preserve operator review ref, decision reason, and evidence payload

---

## 13. Cross-flow invariants

mandatory invariants:
- runtime session may not mutate Builder draft truth directly
- export build may not proceed from blocking validation result
- publish activation may not complete without required policy allow state
- GameOS may emit Persona candidate signals but may not overwrite Persona canonical truth
- save slot must align to same player and release scope
- denial, hold, block, and failure states must remain explainable by stored evidence

---

## 14. Next exactness package

The next package after this stateflow set should be:
- request/response exact JSON example set
- implementation phase by module
- acceptance test case set
