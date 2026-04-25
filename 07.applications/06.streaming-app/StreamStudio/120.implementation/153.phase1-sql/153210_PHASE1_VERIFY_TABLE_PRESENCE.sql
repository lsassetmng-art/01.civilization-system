-- ============================================================
-- STREAM STUDIO PHASE 1 VERIFY TABLE PRESENCE
-- ============================================================

WITH expected(table_name) AS (
  VALUES
    ('creator_project'),
    ('creator_project_member'),
    ('creator_upload_job'),
    ('creator_video_draft'),
    ('creator_edit_marker'),
    ('creator_subtitle_track'),
    ('creator_publish_setting'),
    ('creator_publish_request'),
    ('creator_runtime_job'),
    ('creator_dead_letter_entry'),
    ('creator_audit_event')
)
SELECT
  e.table_name,
  CASE WHEN t.table_name IS NOT NULL THEN 'present' ELSE 'missing' END AS status
FROM expected e
LEFT JOIN information_schema.tables t
  ON t.table_schema = '__STREAM_STUDIO_SCHEMA__'
 AND t.table_name = e.table_name
ORDER BY e.table_name;
