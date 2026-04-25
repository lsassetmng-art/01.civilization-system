# ============================================================
# STREAM STUDIO PHASE 1 DB WORKPACKAGE
# ============================================================

status: workpackage
layer: implementation-db
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines DB-side work for Phase 1.

phase_1_required_tables:
- creator_project
- creator_project_member
- creator_upload_job
- creator_video_draft
- creator_edit_marker
- creator_subtitle_track
- creator_publish_setting
- creator_publish_request
- creator_audit_event
- creator_runtime_job

phase_1_optional_but_recommended:
- creator_dead_letter_entry

required_column_groups:
  creator_project:
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

  creator_upload_job:
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

  creator_video_draft:
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

  creator_publish_setting:
    - creator_publish_setting_id
    - publish_ref
    - visibility_code
    - scheduled_publish_at
    - publish_destination_summary
    - rights_check_status
    - readiness_status
    - created_at
    - updated_at

  creator_publish_request:
    - creator_publish_request_id
    - publish_ref
    - request_status
    - requested_by
    - request_channel
    - execute_after
    - created_at
    - updated_at

phase_1_db_constraints_direction:
- direct foreign keys for project-owned records
- text-compatible enum storage
- version column on mutable records
- created_at / updated_at on all mutable tables
- audit is append-only
- runtime job is first-class table

phase_1_db_non_goals:
- commerce tables
- membership tables
- split tables
- settlement tables
- external push tables beyond placeholder-compatible mapping

db_done_definition:
- required tables exist
- required indexes for project / upload / draft / publish flows exist
- optimistic locking columns exist where required
- audit event write path works
- scheduled publish can persist runtime job intent
