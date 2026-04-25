# ============================================================
# STREAM STUDIO PHASE 1 TABLE DDL EXACT DESIGN
# ============================================================

status: sql-pre-ddl
layer: implementation-db-exact
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact Phase 1 table-level DDL intent before physical SQL writing.

ddl_policy:
- ids are opaque at contract level
- physical DB may use uuid
- enum values are stored as text-compatible values
- created_at and updated_at are mandatory on mutable records
- version is required on optimistic-lock targets
- append-only tables do not need updated_at unless explicitly useful

# ============================================================
# 1. CREATOR PROJECT
# ============================================================

table: creator_project

purpose:
- root creator-side work container

columns:
- creator_project_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- project_code
  type_direction: text
  nullability: not_null
  role: stable_human_readable_identifier

- project_title
  type_direction: text
  nullability: not_null
  role: mutable_title

- project_summary
  type_direction: text
  nullability: nullable
  role: mutable_summary

- project_status
  type_direction: text_enum(project_status)
  nullability: not_null
  role: lifecycle_state

- owner_creator_ref
  type_direction: text
  nullability: not_null
  role: owner_reference

- default_language
  type_direction: text
  nullability: not_null
  role: primary_language_code

- version
  type_direction: integer
  nullability: not_null
  role: optimistic_lock_version

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- project_status default draft
- version default 1
- created_at server_now
- updated_at server_now

# ============================================================
# 2. CREATOR PROJECT MEMBER
# ============================================================

table: creator_project_member

purpose:
- scoped member participation per project

columns:
- creator_project_member_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- creator_project_id
  type_direction: opaque_id
  nullability: not_null
  role: fk_to_creator_project

- member_ref
  type_direction: text
  nullability: not_null
  role: actor_reference

- role_code
  type_direction: text_enum(role_code)
  nullability: not_null
  role: member_role

- permission_profile_ref
  type_direction: text
  nullability: nullable
  role: permission_profile_reference

- assignment_scope_summary
  type_direction: bounded_json
  nullability: nullable
  role: scope_snapshot_summary

- due_at
  type_direction: timestamp
  nullability: nullable
  role: assignment_due_timestamp

- joined_at
  type_direction: timestamp
  nullability: not_null
  role: membership_start_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- joined_at server_now
- updated_at server_now

# ============================================================
# 3. CREATOR UPLOAD JOB
# ============================================================

table: creator_upload_job

purpose:
- upload / ingest state visibility

columns:
- creator_upload_job_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- creator_project_id
  type_direction: opaque_id
  nullability: not_null
  role: fk_to_creator_project

- source_file_name
  type_direction: text
  nullability: not_null
  role: source_file_name

- file_size_bytes
  type_direction: bigint_or_integer
  nullability: not_null
  role: file_size

- mime_type
  type_direction: text
  nullability: not_null
  role: media_type

- ingest_status
  type_direction: text_enum(ingest_status)
  nullability: not_null
  role: upload_lifecycle_state

- resumable_session_ref
  type_direction: text
  nullability: not_null
  role: resumable_session_reference

- failure_summary
  type_direction: text
  nullability: nullable
  role: last_failure_summary

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- ingest_status default queued
- created_at server_now
- updated_at server_now

# ============================================================
# 4. CREATOR VIDEO DRAFT
# ============================================================

table: creator_video_draft

purpose:
- creator-side editable draft state

columns:
- creator_video_draft_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- creator_project_id
  type_direction: opaque_id
  nullability: not_null
  role: fk_to_creator_project

- asset_ref
  type_direction: text
  nullability: not_null
  role: canonical_or_creator_asset_reference

- draft_status
  type_direction: text_enum(draft_status)
  nullability: not_null
  role: draft_lifecycle_state

- title
  type_direction: text
  nullability: nullable
  role: content_title

- description
  type_direction: text
  nullability: nullable
  role: content_description

- default_language
  type_direction: text
  nullability: not_null
  role: primary_language_code

- tag_summary_json
  type_direction: bounded_json
  nullability: nullable
  role: tag_collection_summary

- thumbnail_asset_ref
  type_direction: text
  nullability: nullable
  role: thumbnail_reference

- subtitle_package_ref
  type_direction: text
  nullability: nullable
  role: subtitle_package_reference

- draft_version
  type_direction: integer
  nullability: not_null
  role: user_visible_version_counter

- version
  type_direction: integer
  nullability: not_null
  role: optimistic_lock_version

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- draft_status default draft
- draft_version default 1
- version default 1
- created_at server_now
- updated_at server_now

# ============================================================
# 5. CREATOR EDIT MARKER
# ============================================================

table: creator_edit_marker

purpose:
- trim / cut markers attached to draft

columns:
- creator_edit_marker_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- creator_video_draft_id
  type_direction: opaque_id
  nullability: not_null
  role: fk_to_creator_video_draft

- marker_type
  type_direction: text
  nullability: not_null
  role: trim_or_cut

- start_ms
  type_direction: integer
  nullability: not_null
  role: start_offset_ms

- end_ms
  type_direction: integer
  nullability: not_null
  role: end_offset_ms

- marker_summary
  type_direction: text
  nullability: nullable
  role: optional_summary

- created_by
  type_direction: text
  nullability: not_null
  role: actor_reference

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- created_at server_now
- updated_at server_now

# ============================================================
# 6. CREATOR SUBTITLE TRACK
# ============================================================

table: creator_subtitle_track

purpose:
- subtitle track base support

columns:
- creator_subtitle_track_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- creator_video_draft_id
  type_direction: opaque_id
  nullability: not_null
  role: fk_to_creator_video_draft

- language_code
  type_direction: text
  nullability: not_null
  role: subtitle_language

- source_type
  type_direction: text
  nullability: not_null
  role: uploaded_or_generated

- subtitle_status
  type_direction: text
  nullability: not_null
  role: subtitle_lifecycle_state

- file_asset_ref
  type_direction: text
  nullability: nullable
  role: source_file_reference

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- subtitle_status default draft
- created_at server_now
- updated_at server_now

# ============================================================
# 7. CREATOR PUBLISH SETTING
# ============================================================

table: creator_publish_setting

purpose:
- publish visibility, schedule, destination summary, readiness state

columns:
- creator_publish_setting_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- publish_ref
  type_direction: text
  nullability: not_null
  role: publish_target_reference

- visibility_code
  type_direction: text_enum(visibility_code)
  nullability: not_null
  role: visibility_state

- scheduled_publish_at
  type_direction: timestamp
  nullability: nullable
  role: schedule_time

- publish_destination_summary
  type_direction: bounded_json
  nullability: not_null
  role: destination_toggle_summary

- rights_check_status
  type_direction: text_enum(rights_check_status)
  nullability: not_null
  role: rights_check_state

- readiness_status
  type_direction: text_enum(readiness_status)
  nullability: not_null
  role: readiness_state

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- rights_check_status default pending
- readiness_status default pending
- created_at server_now
- updated_at server_now

# ============================================================
# 8. CREATOR PUBLISH REQUEST
# ============================================================

table: creator_publish_request

purpose:
- explicit publish execution or schedule intent

columns:
- creator_publish_request_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- publish_ref
  type_direction: text
  nullability: not_null
  role: publish_target_reference

- request_status
  type_direction: text
  nullability: not_null
  role: publish_request_state

- requested_by
  type_direction: text
  nullability: not_null
  role: actor_reference

- request_channel
  type_direction: text_enum(request_channel)
  nullability: not_null
  role: manual_or_scheduler

- execute_after
  type_direction: timestamp
  nullability: nullable
  role: deferred_execution_time

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- request_status default requested
- created_at server_now
- updated_at server_now

# ============================================================
# 9. CREATOR RUNTIME JOB
# ============================================================

table: creator_runtime_job

purpose:
- first-class async runtime visibility

columns:
- creator_runtime_job_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- job_type
  type_direction: text
  nullability: not_null
  role: runtime_job_type

- target_ref
  type_direction: text
  nullability: not_null
  role: target_reference

- target_scope
  type_direction: text
  nullability: not_null
  role: target_scope_code

- state
  type_direction: text_enum(job_state)
  nullability: not_null
  role: runtime_state

- attempt_count
  type_direction: integer
  nullability: not_null
  role: execution_attempts

- max_attempts
  type_direction: integer
  nullability: not_null
  role: attempt_limit

- idempotency_key
  type_direction: text
  nullability: nullable
  role: deduplication_key

- priority_code
  type_direction: text_enum(priority_code)
  nullability: not_null
  role: priority_state

- scheduled_at
  type_direction: timestamp
  nullability: not_null
  role: planned_execution_time

- started_at
  type_direction: timestamp
  nullability: nullable
  role: actual_start_time

- finished_at
  type_direction: timestamp
  nullability: nullable
  role: actual_finish_time

- next_retry_at
  type_direction: timestamp
  nullability: nullable
  role: retry_plan_time

- last_error_code
  type_direction: text
  nullability: nullable
  role: latest_exact_error_code

- last_error_summary
  type_direction: text
  nullability: nullable
  role: latest_error_summary

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- state default queued
- attempt_count default 0
- priority_code default normal
- created_at server_now
- updated_at server_now

# ============================================================
# 10. CREATOR AUDIT EVENT
# ============================================================

table: creator_audit_event

purpose:
- append-only audit event trail for high-risk and notable actions

columns:
- creator_audit_event_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- actor_ref
  type_direction: text
  nullability: not_null
  role: actor_reference

- role_code
  type_direction: text_enum(role_code)
  nullability: not_null
  role: actor_role

- action_code
  type_direction: text
  nullability: not_null
  role: stable_audit_action_code

- result_code
  type_direction: text
  nullability: not_null
  role: succeeded_failed_blocked_cancelled_expired

- scope_ref
  type_direction: text
  nullability: not_null
  role: scope_reference

- target_ref
  type_direction: text
  nullability: not_null
  role: acted_target_reference

- request_id
  type_direction: text
  nullability: nullable
  role: request_trace_id

- reason_note
  type_direction: text
  nullability: nullable
  role: optional_reason

- payload_summary_json
  type_direction: bounded_json
  nullability: nullable
  role: bounded_structured_context

- created_at
  type_direction: timestamp
  nullability: not_null
  role: append_only_timestamp

defaults_direction:
- created_at server_now

# ============================================================
# 11. CREATOR DEAD LETTER ENTRY
# ============================================================

table: creator_dead_letter_entry

purpose:
- visible terminal async failures

columns:
- creator_dead_letter_entry_id
  type_direction: opaque_id
  nullability: not_null
  role: primary_key

- original_job_id
  type_direction: opaque_id_or_text
  nullability: not_null
  role: source_runtime_job_reference

- job_type
  type_direction: text
  nullability: not_null
  role: runtime_job_type

- target_ref
  type_direction: text
  nullability: not_null
  role: target_reference

- target_scope
  type_direction: text
  nullability: not_null
  role: target_scope_code

- terminal_reason_code
  type_direction: text
  nullability: not_null
  role: terminal_reason

- terminal_reason_summary
  type_direction: text
  nullability: not_null
  role: human_summary

- final_attempt_count
  type_direction: integer
  nullability: not_null
  role: attempts_before_terminal

- last_error_code
  type_direction: text
  nullability: nullable
  role: last_exact_error_code

- recommended_operator_action
  type_direction: text
  nullability: not_null
  role: inspect_or_retry_as_new_or_override_or_cancel

- created_at
  type_direction: timestamp
  nullability: not_null
  role: creation_timestamp

- updated_at
  type_direction: timestamp
  nullability: not_null
  role: mutation_timestamp

defaults_direction:
- created_at server_now
- updated_at server_now

# ============================================================
# 12. FIXED TABLE DDL STATEMENT
# ============================================================

fixed_statement:
Phase 1 table meaning, nullability direction, default direction,
and append-only vs mutable split are frozen here before real SQL writing.
