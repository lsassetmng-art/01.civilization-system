-- ============================================================
-- STREAM STUDIO PHASE 1 VERIFY INDEX AND FK
-- ============================================================

WITH expected_indexes(index_name) AS (
  VALUES
    ('uq_creator_project_project_code'),
    ('idx_creator_project_owner_status_updated'),
    ('idx_creator_project_member_project'),
    ('idx_creator_project_member_member_updated'),
    ('idx_creator_upload_job_project_status_updated'),
    ('idx_creator_upload_job_resumable_session_ref'),
    ('idx_creator_video_draft_project_status_updated'),
    ('idx_creator_video_draft_asset_ref'),
    ('idx_creator_edit_marker_draft'),
    ('idx_creator_subtitle_track_draft'),
    ('idx_creator_subtitle_track_language'),
    ('idx_creator_publish_setting_publish_ref'),
    ('idx_creator_publish_setting_readiness_status'),
    ('idx_creator_publish_request_publish_ref_status_created'),
    ('idx_creator_publish_request_execute_after'),
    ('idx_creator_runtime_job_type_state_next_retry'),
    ('idx_creator_runtime_job_target_ref'),
    ('uq_creator_runtime_job_idempotency'),
    ('idx_creator_dead_letter_job_type_created'),
    ('idx_creator_dead_letter_target_ref'),
    ('idx_creator_audit_event_target_ref_created'),
    ('idx_creator_audit_event_actor_ref_created'),
    ('idx_creator_audit_event_action_code_created')
),
expected_constraints(conname) AS (
  VALUES
    ('fk_creator_project_member_project'),
    ('fk_creator_upload_job_project'),
    ('fk_creator_video_draft_project'),
    ('fk_creator_edit_marker_draft'),
    ('fk_creator_subtitle_track_draft')
)
SELECT
  'index' AS item_type,
  e.index_name AS item_name,
  CASE WHEN i.indexname IS NOT NULL THEN 'present' ELSE 'missing' END AS status
FROM expected_indexes e
LEFT JOIN pg_indexes i
  ON i.schemaname = '__STREAM_STUDIO_SCHEMA__'
 AND i.indexname = e.index_name

UNION ALL

SELECT
  'constraint' AS item_type,
  e.conname AS item_name,
  CASE WHEN c.conname IS NOT NULL THEN 'present' ELSE 'missing' END AS status
FROM expected_constraints e
LEFT JOIN pg_constraint c
  ON c.conname = e.conname

ORDER BY item_type, item_name;
