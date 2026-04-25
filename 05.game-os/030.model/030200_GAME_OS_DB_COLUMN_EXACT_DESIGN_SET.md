# ============================================================
# GAME OS DB COLUMN EXACT DESIGN SET
# ============================================================

status: draft-fixed
system: Civilization System
os: GameOS
layer: db column exact design
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

---

## 0. Scope

This document fixes the first canonical DB column exact design set for GameOS.

Covered tables:
- game_workspace
- game_project
- game_project_revision
- game_autosave_snapshot
- game_template_profile
- game_runtime_profile
- game_asset_ref
- game_validation_run
- game_validation_finding
- game_export_package
- game_manifest
- game_submission_request
- game_release
- game_release_store_link
- game_runtime_session
- game_save_slot
- game_runtime_error_log
- game_runtime_recovery_attempt
- game_persona_growth_outbox
- game_persona_growth_delivery_attempt
- game_policy_review_record

---

## 1. Shared DB exactness rules

### 1.1 Common columns
Unless explicitly excluded, every main truth table should have:
- id uuid pk
- tenant_scope_type text not null
- tenant_scope_id uuid null
- company_id uuid null where business boundary is relevant
- public_code text unique where human-visible
- status text not null
- source_basis_ref text null
- version_no integer not null default 1 where optimistic concurrency is needed
- created_at timestamptz not null
- created_by uuid null
- updated_at timestamptz not null
- updated_by uuid null
- archived_at timestamptz null

### 1.2 Naming rules
- PK column name: id
- human/business code column suffix: _code
- external reference suffix: _ref
- state/status suffix: _state or _status
- timestamps use timestamptz
- booleans use is_* or *_flag

### 1.3 Deletion rule
- hard delete is not default
- archive by archived_at unless table is pure transient/log retention table
- release/runtime audit tables may use retention windows instead of archived_at-only logic

### 1.4 Actor trace rule
Human-authored tables must preserve created_by and updated_by.
System-generated operational tables may allow null actor columns but must preserve created_at.

---

## 2. Builder core tables

## 2.1 game_workspace

purpose:
- creator workspace container for Builder projects and collaborators

primary_key:
- id uuid

business_keys:
- workspace_code unique

columns:
- id uuid pk
- workspace_code text not null unique
- workspace_name text not null
- owner_user_id uuid not null
- default_language_code text not null
- visibility_status text not null
- builder_access_status text not null
- status text not null
- source_basis_ref text null
- created_at timestamptz not null
- created_by uuid not null
- updated_at timestamptz not null
- updated_by uuid not null
- archived_at timestamptz null

indexes:
- uq_game_workspace_code on workspace_code
- ix_game_workspace_owner_user_id on owner_user_id
- ix_game_workspace_visibility_status on visibility_status

## 2.2 game_project

purpose:
- canonical project identity bound to workspace, runtime family, and template/runtime profiles

primary_key:
- id uuid

business_keys:
- project_code unique

foreign_keys:
- workspace_id -> game_workspace.id
- template_profile_id -> game_template_profile.id nullable
- runtime_profile_id -> game_runtime_profile.id

columns:
- id uuid pk
- project_code text not null unique
- workspace_id uuid not null
- project_name text not null
- runtime_family_code text not null
- template_family_code text null
- template_profile_id uuid null
- runtime_profile_id uuid not null
- owner_user_id uuid not null
- latest_revision_id uuid null
- latest_autosave_snapshot_id uuid null
- save_state text not null
- inline_validation_state text not null
- export_readiness_state text not null
- publish_readiness_state text not null
- collaboration_lock_state text not null
- status text not null
- source_basis_ref text null
- version_no integer not null default 1
- created_at timestamptz not null
- created_by uuid not null
- updated_at timestamptz not null
- updated_by uuid not null
- archived_at timestamptz null

indexes:
- uq_game_project_code on project_code
- ix_game_project_workspace_id on workspace_id
- ix_game_project_owner_user_id on owner_user_id
- ix_game_project_runtime_family_code on runtime_family_code
- ix_game_project_latest_revision_id on latest_revision_id
- ix_game_project_publish_readiness_state on publish_readiness_state

## 2.3 game_project_revision

purpose:
- immutable revision truth for Builder-authored project states

primary_key:
- id uuid

business_keys:
- revision_ref unique

foreign_keys:
- project_id -> game_project.id
- basis_revision_id -> game_project_revision.id nullable

columns:
- id uuid pk
- revision_ref text not null unique
- project_id uuid not null
- revision_no integer not null
- basis_revision_id uuid null
- authored_change_summary text null
- scene_payload jsonb not null
- route_payload jsonb not null
- map_payload jsonb null
- system_flag_payload jsonb null
- asset_binding_payload jsonb not null
- inline_validation_state text not null
- revision_hash text not null
- is_autosave_basis boolean not null default false
- status text not null
- created_at timestamptz not null
- created_by uuid not null
- archived_at timestamptz null

uniqueness:
- unique(project_id, revision_no)

indexes:
- uq_game_project_revision_ref on revision_ref
- uq_game_project_revision_project_id_revision_no on project_id, revision_no
- ix_game_project_revision_project_id_created_at on project_id, created_at desc
- ix_game_project_revision_basis_revision_id on basis_revision_id

## 2.4 game_autosave_snapshot

purpose:
- restorable autosave snapshot for active editing session

primary_key:
- id uuid

business_keys:
- autosave_snapshot_ref unique

foreign_keys:
- project_id -> game_project.id
- basis_revision_id -> game_project_revision.id

columns:
- id uuid pk
- autosave_snapshot_ref text not null unique
- project_id uuid not null
- basis_revision_id uuid not null
- autosave_payload jsonb not null
- unsaved_change_count integer not null default 0
- conflict_state text not null
- captured_at timestamptz not null
- expires_at timestamptz null
- status text not null
- created_at timestamptz not null
- created_by uuid null
- archived_at timestamptz null

indexes:
- uq_game_autosave_snapshot_ref on autosave_snapshot_ref
- ix_game_autosave_snapshot_project_id on project_id
- ix_game_autosave_snapshot_basis_revision_id on basis_revision_id
- ix_game_autosave_snapshot_captured_at on captured_at desc

---

## 3. Profile and asset tables

## 3.1 game_template_profile

purpose:
- canonical template definition for project seeding

primary_key:
- id uuid

business_keys:
- template_profile_code unique

columns:
- id uuid pk
- template_profile_code text not null unique
- template_name text not null
- runtime_family_code text not null
- template_family_code text not null
- seed_payload jsonb not null
- compatibility_notes text null
- status text not null
- version_no integer not null default 1
- created_at timestamptz not null
- created_by uuid null
- updated_at timestamptz not null
- updated_by uuid null
- archived_at timestamptz null

indexes:
- uq_game_template_profile_code on template_profile_code
- ix_game_template_profile_runtime_family_code on runtime_family_code
- ix_game_template_profile_template_family_code on template_family_code

## 3.2 game_runtime_profile

purpose:
- canonical runtime profile for engine family behavior and export compatibility

primary_key:
- id uuid

business_keys:
- runtime_profile_code unique

columns:
- id uuid pk
- runtime_profile_code text not null unique
- runtime_profile_name text not null
- runtime_family_code text not null
- engine_family_code text not null
- language_support_payload jsonb not null
- device_support_payload jsonb not null
- export_capability_payload jsonb not null
- validation_profile_payload jsonb not null
- status text not null
- version_no integer not null default 1
- created_at timestamptz not null
- created_by uuid null
- updated_at timestamptz not null
- updated_by uuid null
- archived_at timestamptz null

indexes:
- uq_game_runtime_profile_code on runtime_profile_code
- ix_game_runtime_profile_runtime_family_code on runtime_family_code
- ix_game_runtime_profile_engine_family_code on engine_family_code

## 3.3 game_asset_ref

purpose:
- canonical asset registration and usage basis inside a project

primary_key:
- id uuid

business_keys:
- asset_ref unique

foreign_keys:
- project_id -> game_project.id

columns:
- id uuid pk
- asset_ref text not null unique
- project_id uuid not null
- asset_type_code text not null
- asset_name text not null
- storage_locator text not null
- checksum_sha256 text not null
- file_size_bytes bigint not null
- mime_type text not null
- asset_metadata jsonb not null
- validation_state text not null
- usage_count integer not null default 0
- latest_version_no integer not null default 1
- status text not null
- created_at timestamptz not null
- created_by uuid not null
- updated_at timestamptz not null
- updated_by uuid not null
- archived_at timestamptz null

indexes:
- uq_game_asset_ref on asset_ref
- ix_game_asset_project_id on project_id
- ix_game_asset_type_code on asset_type_code
- ix_game_asset_validation_state on validation_state
- ix_game_asset_checksum_sha256 on checksum_sha256

---

## 4. Validation tables

## 4.1 game_validation_run

purpose:
- execution record of validation against a selected project revision

primary_key:
- id uuid

business_keys:
- validation_run_ref unique

foreign_keys:
- project_id -> game_project.id
- basis_revision_id -> game_project_revision.id

columns:
- id uuid pk
- validation_run_ref text not null unique
- project_id uuid not null
- basis_revision_id uuid not null
- validation_profile_code text not null
- validation_state text not null
- blocking_findings_count integer not null default 0
- warning_findings_count integer not null default 0
- started_at timestamptz not null
- completed_at timestamptz null
- started_by uuid null
- execution_log_ref text null
- status text not null
- created_at timestamptz not null
- archived_at timestamptz null

indexes:
- uq_game_validation_run_ref on validation_run_ref
- ix_game_validation_run_project_id on project_id
- ix_game_validation_run_basis_revision_id on basis_revision_id
- ix_game_validation_run_validation_state on validation_state
- ix_game_validation_run_started_at on started_at desc

## 4.2 game_validation_finding

purpose:
- individual finding produced by a validation run

primary_key:
- id uuid

foreign_keys:
- validation_run_id -> game_validation_run.id
- project_id -> game_project.id
- basis_revision_id -> game_project_revision.id

columns:
- id uuid pk
- validation_run_id uuid not null
- project_id uuid not null
- basis_revision_id uuid not null
- finding_code text not null
- finding_severity text not null
- finding_domain_code text not null
- source_ref text null
- finding_message text not null
- finding_detail_payload jsonb null
- resolution_state text not null
- acknowledged_by uuid null
- acknowledged_at timestamptz null
- created_at timestamptz not null

indexes:
- ix_game_validation_finding_validation_run_id on validation_run_id
- ix_game_validation_finding_project_id on project_id
- ix_game_validation_finding_basis_revision_id on basis_revision_id
- ix_game_validation_finding_finding_severity on finding_severity
- ix_game_validation_finding_resolution_state on resolution_state

---

## 5. Export and governance tables

## 5.1 game_export_package

purpose:
- export build artifact metadata generated from a validated revision

primary_key:
- id uuid

business_keys:
- export_package_ref unique

foreign_keys:
- project_id -> game_project.id
- basis_revision_id -> game_project_revision.id
- validation_run_id -> game_validation_run.id

columns:
- id uuid pk
- export_package_ref text not null unique
- project_id uuid not null
- basis_revision_id uuid not null
- validation_run_id uuid not null
- export_state text not null
- export_format_code text not null
- target_platform_payload jsonb not null
- target_store_payload jsonb not null
- artifact_locator text not null
- package_hash text not null
- manifest_id uuid null
- submission_eligible boolean not null default false
- built_at timestamptz not null
- built_by uuid null
- status text not null
- created_at timestamptz not null
- archived_at timestamptz null

indexes:
- uq_game_export_package_ref on export_package_ref
- ix_game_export_package_project_id on project_id
- ix_game_export_package_basis_revision_id on basis_revision_id
- ix_game_export_package_validation_run_id on validation_run_id
- ix_game_export_package_export_state on export_state
- ix_game_export_package_built_at on built_at desc

## 5.2 game_manifest

purpose:
- manifest truth attached to export package and submission flow

primary_key:
- id uuid

business_keys:
- manifest_ref unique

foreign_keys:
- export_package_id -> game_export_package.id
- project_id -> game_project.id

columns:
- id uuid pk
- manifest_ref text not null unique
- export_package_id uuid not null
- project_id uuid not null
- manifest_version_no integer not null
- manifest_payload jsonb not null
- manifest_hash text not null
- compatibility_summary jsonb not null
- policy_flag_payload jsonb null
- generated_at timestamptz not null
- generated_by uuid null
- status text not null
- created_at timestamptz not null
- archived_at timestamptz null

uniqueness:
- unique(export_package_id, manifest_version_no)

indexes:
- uq_game_manifest_ref on manifest_ref
- uq_game_manifest_export_package_id_version on export_package_id, manifest_version_no
- ix_game_manifest_project_id on project_id
- ix_game_manifest_generated_at on generated_at desc

## 5.3 game_submission_request

purpose:
- governance request for validation acceptance or publish activation

primary_key:
- id uuid

business_keys:
- submission_request_ref unique

foreign_keys:
- project_id -> game_project.id
- export_package_id -> game_export_package.id
- manifest_id -> game_manifest.id nullable

columns:
- id uuid pk
- submission_request_ref text not null unique
- project_id uuid not null
- export_package_id uuid not null
- manifest_id uuid null
- submission_type text not null
- store_channel_code text not null
- submission_status text not null
- validation_acceptance_status text not null
- publish_activation_status text not null
- policy_review_required boolean not null default false
- latest_policy_review_id uuid null
- submitted_at timestamptz not null
- submitted_by uuid not null
- review_note_payload jsonb null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- updated_by uuid null
- archived_at timestamptz null

indexes:
- uq_game_submission_request_ref on submission_request_ref
- ix_game_submission_request_project_id on project_id
- ix_game_submission_request_export_package_id on export_package_id
- ix_game_submission_request_submission_status on submission_status
- ix_game_submission_request_publish_activation_status on publish_activation_status
- ix_game_submission_request_submitted_at on submitted_at desc

---

## 6. Release and runtime tables

## 6.1 game_release

purpose:
- activated or activatable release truth for runtime launch

primary_key:
- id uuid

business_keys:
- release_ref unique

foreign_keys:
- project_id -> game_project.id
- export_package_id -> game_export_package.id
- manifest_id -> game_manifest.id

columns:
- id uuid pk
- release_ref text not null unique
- project_id uuid not null
- export_package_id uuid not null
- manifest_id uuid not null
- runtime_family_code text not null
- release_version_label text not null
- activation_status text not null
- activation_allowed boolean not null default false
- activated_at timestamptz null
- activated_by uuid null
- release_note_payload jsonb null
- entitlement_mode_code text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- updated_by uuid null
- archived_at timestamptz null

indexes:
- uq_game_release_ref on release_ref
- ix_game_release_project_id on project_id
- ix_game_release_export_package_id on export_package_id
- ix_game_release_runtime_family_code on runtime_family_code
- ix_game_release_activation_status on activation_status
- ix_game_release_activated_at on activated_at desc

## 6.2 game_release_store_link

purpose:
- release visibility and activation alignment per store/channel

primary_key:
- id uuid

foreign_keys:
- release_id -> game_release.id

columns:
- id uuid pk
- release_id uuid not null
- store_channel_code text not null
- store_listing_ref text null
- listing_status text not null
- entitlement_alignment_status text not null
- launch_alignment_status text not null
- first_listed_at timestamptz null
- last_synced_at timestamptz null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- archived_at timestamptz null

uniqueness:
- unique(release_id, store_channel_code)

indexes:
- uq_game_release_store_link_release_id_store_channel_code on release_id, store_channel_code
- ix_game_release_store_link_listing_status on listing_status
- ix_game_release_store_link_last_synced_at on last_synced_at desc

## 6.3 game_runtime_session

purpose:
- active or historical runtime play session

primary_key:
- id uuid

business_keys:
- runtime_session_ref unique

foreign_keys:
- release_id -> game_release.id

columns:
- id uuid pk
- runtime_session_ref text not null unique
- release_id uuid not null
- player_user_id uuid not null
- package_ref text not null
- runtime_family_code text not null
- device_class text not null
- language_code text not null
- runtime_state text not null
- current_scene_ref text null
- current_map_ref text null
- route_state_ref text null
- save_capability boolean not null default true
- started_at timestamptz not null
- ended_at timestamptz null
- last_checkpoint_at timestamptz null
- status text not null
- created_at timestamptz not null
- archived_at timestamptz null

indexes:
- uq_game_runtime_session_ref on runtime_session_ref
- ix_game_runtime_session_release_id on release_id
- ix_game_runtime_session_player_user_id on player_user_id
- ix_game_runtime_session_runtime_state on runtime_state
- ix_game_runtime_session_started_at on started_at desc

## 6.4 game_save_slot

purpose:
- persisted player save point for runtime recovery/continuation

primary_key:
- id uuid

business_keys:
- save_slot_ref unique per player+release scope

foreign_keys:
- runtime_session_id -> game_runtime_session.id nullable
- release_id -> game_release.id

columns:
- id uuid pk
- save_slot_ref text not null
- release_id uuid not null
- runtime_session_id uuid null
- player_user_id uuid not null
- slot_no integer not null
- runtime_family_code text not null
- current_scene_ref text null
- current_map_ref text null
- route_state_ref text null
- save_payload jsonb not null
- save_state text not null
- last_saved_at timestamptz not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- archived_at timestamptz null

uniqueness:
- unique(release_id, player_user_id, slot_no)

indexes:
- uq_game_save_slot_release_player_slot_no on release_id, player_user_id, slot_no
- ix_game_save_slot_runtime_session_id on runtime_session_id
- ix_game_save_slot_last_saved_at on last_saved_at desc
- ix_game_save_slot_save_state on save_state

---

## 7. Error, recovery, and outbox tables

## 7.1 game_runtime_error_log

purpose:
- persistent runtime interruption/error evidence

primary_key:
- id uuid

foreign_keys:
- runtime_session_id -> game_runtime_session.id
- release_id -> game_release.id

columns:
- id uuid pk
- runtime_session_id uuid not null
- release_id uuid not null
- error_code text not null
- error_domain_code text not null
- error_message text not null
- recovery_state text not null
- evidence_payload jsonb null
- occurred_at timestamptz not null
- created_at timestamptz not null

indexes:
- ix_game_runtime_error_log_runtime_session_id on runtime_session_id
- ix_game_runtime_error_log_release_id on release_id
- ix_game_runtime_error_log_error_domain_code on error_domain_code
- ix_game_runtime_error_log_occurred_at on occurred_at desc

## 7.2 game_runtime_recovery_attempt

purpose:
- retry and recovery execution record tied to runtime error state

primary_key:
- id uuid

foreign_keys:
- runtime_error_log_id -> game_runtime_error_log.id
- runtime_session_id -> game_runtime_session.id

columns:
- id uuid pk
- runtime_error_log_id uuid not null
- runtime_session_id uuid not null
- recovery_attempt_no integer not null
- recovery_action_code text not null
- recovery_result_state text not null
- attempted_at timestamptz not null
- attempted_by uuid null
- note_payload jsonb null
- created_at timestamptz not null

uniqueness:
- unique(runtime_error_log_id, recovery_attempt_no)

indexes:
- uq_game_runtime_recovery_attempt_error_attempt_no on runtime_error_log_id, recovery_attempt_no
- ix_game_runtime_recovery_attempt_runtime_session_id on runtime_session_id
- ix_game_runtime_recovery_attempt_recovery_result_state on recovery_result_state
- ix_game_runtime_recovery_attempt_attempted_at on attempted_at desc

## 7.3 game_persona_growth_outbox

purpose:
- GameOS-emitted growth/context candidate signal queue to PersonaOS

primary_key:
- id uuid

business_keys:
- outbox_ref unique

foreign_keys:
- runtime_session_id -> game_runtime_session.id

columns:
- id uuid pk
- outbox_ref text not null unique
- runtime_session_id uuid not null
- player_user_id uuid not null
- signal_payload jsonb not null
- basis_ref text null
- correlation_id text null
- idempotency_key text not null
- delivery_state text not null
- delivery_attempt_count integer not null default 0
- persona_overwrite_allowed boolean not null default false
- queued_at timestamptz not null
- delivered_at timestamptz null
- status text not null
- created_at timestamptz not null
- archived_at timestamptz null

indexes:
- uq_game_persona_growth_outbox_ref on outbox_ref
- uq_game_persona_growth_outbox_idempotency_key on idempotency_key
- ix_game_persona_growth_outbox_runtime_session_id on runtime_session_id
- ix_game_persona_growth_outbox_player_user_id on player_user_id
- ix_game_persona_growth_outbox_delivery_state on delivery_state
- ix_game_persona_growth_outbox_queued_at on queued_at desc

## 7.4 game_persona_growth_delivery_attempt

purpose:
- delivery attempt history for outbox-to-PersonaOS integration

primary_key:
- id uuid

foreign_keys:
- outbox_id -> game_persona_growth_outbox.id

columns:
- id uuid pk
- outbox_id uuid not null
- attempt_no integer not null
- request_payload jsonb not null
- response_payload jsonb null
- delivery_result_state text not null
- attempted_at timestamptz not null
- next_retry_at timestamptz null
- created_at timestamptz not null

uniqueness:
- unique(outbox_id, attempt_no)

indexes:
- uq_game_persona_growth_delivery_attempt_outbox_attempt_no on outbox_id, attempt_no
- ix_game_persona_growth_delivery_attempt_delivery_result_state on delivery_result_state
- ix_game_persona_growth_delivery_attempt_attempted_at on attempted_at desc
- ix_game_persona_growth_delivery_attempt_next_retry_at on next_retry_at

---

## 8. Policy review table

## 8.1 game_policy_review_record

purpose:
- policy/operator review evidence for regulated runtime families such as gambling

primary_key:
- id uuid

business_keys:
- policy_review_ref unique

foreign_keys:
- submission_request_id -> game_submission_request.id nullable
- release_id -> game_release.id nullable

columns:
- id uuid pk
- policy_review_ref text not null unique
- submission_request_id uuid null
- release_id uuid null
- runtime_family_code text not null
- policy_profile_code text not null
- operator_review_ref text null
- review_required boolean not null default true
- decision_state text not null
- activation_allowed boolean not null default false
- decision_reason text null
- evidence_payload jsonb null
- reviewed_at timestamptz null
- reviewed_by uuid null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
- archived_at timestamptz null

indexes:
- uq_game_policy_review_ref on policy_review_ref
- ix_game_policy_review_submission_request_id on submission_request_id
- ix_game_policy_review_release_id on release_id
- ix_game_policy_review_runtime_family_code on runtime_family_code
- ix_game_policy_review_decision_state on decision_state
- ix_game_policy_review_reviewed_at on reviewed_at desc

---

## 9. Recommended foreign key and integrity rules

mandatory integrity rules:
- game_project.workspace_id must exist in game_workspace
- game_project.latest_revision_id must reference a revision of the same project when not null
- game_project.latest_autosave_snapshot_id must reference a snapshot of the same project when not null
- game_project_revision.project_id must exist in game_project
- game_autosave_snapshot.basis_revision_id must belong to same project_id
- game_validation_run.basis_revision_id must belong to same project_id
- game_export_package.validation_run_id must belong to same basis_revision_id
- game_manifest.export_package_id must exist before submission
- game_submission_request.export_package_id must exist and be submission-eligible
- game_release.export_package_id and manifest_id must align to same project
- game_runtime_session.release_id must be activation-allowed
- game_save_slot.release_id must align with runtime_session.release_id when runtime_session_id is not null
- game_persona_growth_outbox.runtime_session_id must exist before queueing
- game_policy_review_record must reference at least one of submission_request_id or release_id

---

## 10. Recommended enum/state families

minimum state families to standardize:
- visibility_status: private | shared | public
- save_state: draft | saved | conflict | restoring
- inline_validation_state: not_run | passed | warning | blocking | failed
- export_readiness_state: not_ready | ready | blocked
- publish_readiness_state: not_ready | ready | blocked
- validation_state: queued | running | passed | failed
- finding_severity: blocking | warning | info
- export_state: queued | building | built | failed
- submission_status: submitted | under_review | completed | rejected | held
- publish_activation_status: not_started | pending | approved | denied | held | activated
- activation_status: draft | accepted | activation_pending | activated | blocked | archived
- runtime_state: active | paused | ended | crashed | recovering
- delivery_state: queued | delivering | delivered | failed | dead_letter
- decision_state: allow | deny | hold | pending

---

## 11. Next exactness package

The next package after this DB column set should be:
- stateflow exact design
- request/response exact JSON example set
- implementation phase by module
