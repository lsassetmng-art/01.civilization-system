-- ============================================================
-- STREAM STUDIO PHASE 1 VERIFY COLUMN SHAPE
-- ============================================================

WITH expected(table_name, column_name) AS (
  VALUES
    ('creator_project', 'creator_project_id'),
    ('creator_project', 'project_code'),
    ('creator_project', 'project_title'),
    ('creator_project', 'project_status'),
    ('creator_project', 'owner_creator_ref'),
    ('creator_project', 'default_language'),
    ('creator_project', 'version'),
    ('creator_project', 'created_at'),
    ('creator_project', 'updated_at'),

    ('creator_project_member', 'creator_project_member_id'),
    ('creator_project_member', 'creator_project_id'),
    ('creator_project_member', 'member_ref'),
    ('creator_project_member', 'role_code'),
    ('creator_project_member', 'assignment_scope_summary'),
    ('creator_project_member', 'joined_at'),
    ('creator_project_member', 'updated_at'),

    ('creator_upload_job', 'creator_upload_job_id'),
    ('creator_upload_job', 'creator_project_id'),
    ('creator_upload_job', 'source_file_name'),
    ('creator_upload_job', 'file_size_bytes'),
    ('creator_upload_job', 'mime_type'),
    ('creator_upload_job', 'ingest_status'),
    ('creator_upload_job', 'resumable_session_ref'),
    ('creator_upload_job', 'created_at'),
    ('creator_upload_job', 'updated_at'),

    ('creator_video_draft', 'creator_video_draft_id'),
    ('creator_video_draft', 'creator_project_id'),
    ('creator_video_draft', 'asset_ref'),
    ('creator_video_draft', 'draft_status'),
    ('creator_video_draft', 'title'),
    ('creator_video_draft', 'description'),
    ('creator_video_draft', 'default_language'),
    ('creator_video_draft', 'draft_version'),
    ('creator_video_draft', 'version'),
    ('creator_video_draft', 'created_at'),
    ('creator_video_draft', 'updated_at'),

    ('creator_edit_marker', 'creator_edit_marker_id'),
    ('creator_edit_marker', 'creator_video_draft_id'),
    ('creator_edit_marker', 'marker_type'),
    ('creator_edit_marker', 'start_ms'),
    ('creator_edit_marker', 'end_ms'),
    ('creator_edit_marker', 'created_by'),
    ('creator_edit_marker', 'created_at'),
    ('creator_edit_marker', 'updated_at'),

    ('creator_subtitle_track', 'creator_subtitle_track_id'),
    ('creator_subtitle_track', 'creator_video_draft_id'),
    ('creator_subtitle_track', 'language_code'),
    ('creator_subtitle_track', 'source_type'),
    ('creator_subtitle_track', 'subtitle_status'),
    ('creator_subtitle_track', 'created_at'),
    ('creator_subtitle_track', 'updated_at'),

    ('creator_publish_setting', 'creator_publish_setting_id'),
    ('creator_publish_setting', 'publish_ref'),
    ('creator_publish_setting', 'visibility_code'),
    ('creator_publish_setting', 'scheduled_publish_at'),
    ('creator_publish_setting', 'publish_destination_summary'),
    ('creator_publish_setting', 'rights_check_status'),
    ('creator_publish_setting', 'readiness_status'),
    ('creator_publish_setting', 'created_at'),
    ('creator_publish_setting', 'updated_at'),

    ('creator_publish_request', 'creator_publish_request_id'),
    ('creator_publish_request', 'publish_ref'),
    ('creator_publish_request', 'request_status'),
    ('creator_publish_request', 'requested_by'),
    ('creator_publish_request', 'request_channel'),
    ('creator_publish_request', 'execute_after'),
    ('creator_publish_request', 'created_at'),
    ('creator_publish_request', 'updated_at'),

    ('creator_runtime_job', 'creator_runtime_job_id'),
    ('creator_runtime_job', 'job_type'),
    ('creator_runtime_job', 'target_ref'),
    ('creator_runtime_job', 'target_scope'),
    ('creator_runtime_job', 'state'),
    ('creator_runtime_job', 'attempt_count'),
    ('creator_runtime_job', 'max_attempts'),
    ('creator_runtime_job', 'priority_code'),
    ('creator_runtime_job', 'scheduled_at'),
    ('creator_runtime_job', 'next_retry_at'),
    ('creator_runtime_job', 'created_at'),
    ('creator_runtime_job', 'updated_at'),

    ('creator_dead_letter_entry', 'creator_dead_letter_entry_id'),
    ('creator_dead_letter_entry', 'original_job_id'),
    ('creator_dead_letter_entry', 'job_type'),
    ('creator_dead_letter_entry', 'target_ref'),
    ('creator_dead_letter_entry', 'terminal_reason_code'),
    ('creator_dead_letter_entry', 'recommended_operator_action'),
    ('creator_dead_letter_entry', 'created_at'),
    ('creator_dead_letter_entry', 'updated_at'),

    ('creator_audit_event', 'creator_audit_event_id'),
    ('creator_audit_event', 'actor_ref'),
    ('creator_audit_event', 'role_code'),
    ('creator_audit_event', 'action_code'),
    ('creator_audit_event', 'result_code'),
    ('creator_audit_event', 'scope_ref'),
    ('creator_audit_event', 'target_ref'),
    ('creator_audit_event', 'created_at')
)
SELECT
  e.table_name,
  e.column_name,
  CASE WHEN c.column_name IS NOT NULL THEN 'present' ELSE 'missing' END AS status
FROM expected e
LEFT JOIN information_schema.columns c
  ON c.table_schema = '__STREAM_STUDIO_SCHEMA__'
 AND c.table_name = e.table_name
 AND c.column_name = e.column_name
ORDER BY e.table_name, e.column_name;
