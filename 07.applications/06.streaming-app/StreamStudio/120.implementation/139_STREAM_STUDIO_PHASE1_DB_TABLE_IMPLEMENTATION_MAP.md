# ============================================================
# STREAM STUDIO PHASE 1 DB TABLE IMPLEMENTATION MAP
# ============================================================

status: starter-map
layer: implementation-db-map
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Maps Phase 1 tables, column groups, constraints,
and minimum indexes for real implementation start.

phase_1_required_tables:

  creator_project:
    purpose:
      - project container for creator-side work
    minimum_columns:
      - creator_project_id
      - project_code
      - project_title
      - project_summary
      - project_status
      - owner_creator_ref
      - default_language
      - version
      - created_at
      - updated_at
    minimum_indexes:
      - owner_creator_ref, project_status, updated_at desc

  creator_project_member:
    purpose:
      - scoped member participation
    minimum_columns:
      - creator_project_member_id
      - creator_project_id
      - member_ref
      - role_code
      - permission_profile_ref
      - assignment_scope_summary
      - due_at
      - joined_at
      - updated_at
    minimum_indexes:
      - creator_project_id
      - member_ref, updated_at desc

  creator_upload_job:
    purpose:
      - upload and ingest working state
    minimum_columns:
      - creator_upload_job_id
      - creator_project_id
      - source_file_name
      - file_size_bytes
      - mime_type
      - ingest_status
      - resumable_session_ref
      - failure_summary
      - created_at
      - updated_at
    minimum_indexes:
      - creator_project_id, ingest_status, updated_at desc

  creator_video_draft:
    purpose:
      - draft asset working state
    minimum_columns:
      - creator_video_draft_id
      - creator_project_id
      - asset_ref
      - draft_status
      - title
      - description
      - default_language
      - tag_summary_json
      - thumbnail_asset_ref
      - subtitle_package_ref
      - draft_version
      - version
      - created_at
      - updated_at
    minimum_indexes:
      - creator_project_id, draft_status, updated_at desc

  creator_edit_marker:
    purpose:
      - trim and cut marker state
    minimum_columns:
      - creator_edit_marker_id
      - creator_video_draft_id
      - marker_type
      - start_ms
      - end_ms
      - marker_summary
      - created_by
      - created_at
      - updated_at
    minimum_indexes:
      - creator_video_draft_id

  creator_subtitle_track:
    purpose:
      - subtitle base support
    minimum_columns:
      - creator_subtitle_track_id
      - creator_video_draft_id
      - language_code
      - source_type
      - subtitle_status
      - file_asset_ref
      - created_at
      - updated_at
    minimum_indexes:
      - creator_video_draft_id
      - language_code

  creator_publish_setting:
    purpose:
      - visibility, schedule, readiness state
    minimum_columns:
      - creator_publish_setting_id
      - publish_ref
      - visibility_code
      - scheduled_publish_at
      - publish_destination_summary
      - rights_check_status
      - readiness_status
      - created_at
      - updated_at
    minimum_indexes:
      - publish_ref
      - readiness_status

  creator_publish_request:
    purpose:
      - publish execution or scheduling intent
    minimum_columns:
      - creator_publish_request_id
      - publish_ref
      - request_status
      - requested_by
      - request_channel
      - execute_after
      - created_at
      - updated_at
    minimum_indexes:
      - publish_ref, request_status, created_at desc
      - execute_after

  creator_runtime_job:
    purpose:
      - scheduled publish and async visibility
    minimum_columns:
      - creator_runtime_job_id
      - job_type
      - target_ref
      - target_scope
      - state
      - attempt_count
      - max_attempts
      - idempotency_key
      - priority_code
      - scheduled_at
      - started_at
      - finished_at
      - next_retry_at
      - last_error_code
      - last_error_summary
      - created_at
      - updated_at
    minimum_indexes:
      - job_type, state, next_retry_at
      - target_ref

  creator_audit_event:
    purpose:
      - append-only audit trail
    minimum_columns:
      - creator_audit_event_id
      - actor_ref
      - role_code
      - action_code
      - result_code
      - scope_ref
      - target_ref
      - request_id
      - reason_note
      - payload_summary_json
      - created_at
    minimum_indexes:
      - target_ref, created_at desc
      - actor_ref, created_at desc
      - action_code, created_at desc

optional_phase_1_table:
  creator_dead_letter_entry:
    purpose:
      - visible terminal async failures
    minimum_columns:
      - creator_dead_letter_entry_id
      - original_job_id
      - job_type
      - target_ref
      - target_scope
      - terminal_reason_code
      - terminal_reason_summary
      - final_attempt_count
      - last_error_code
      - recommended_operator_action
      - created_at
      - updated_at

phase_1_fk_direction:
- creator_project_member.creator_project_id -> creator_project.creator_project_id
- creator_upload_job.creator_project_id -> creator_project.creator_project_id
- creator_video_draft.creator_project_id -> creator_project.creator_project_id
- creator_edit_marker.creator_video_draft_id -> creator_video_draft.creator_video_draft_id
- creator_subtitle_track.creator_video_draft_id -> creator_video_draft.creator_video_draft_id

phase_1_done_statement:
Phase 1 DB mapping is complete when required tables, minimum indexes,
version columns, runtime table, and audit table exist with stable meaning.
