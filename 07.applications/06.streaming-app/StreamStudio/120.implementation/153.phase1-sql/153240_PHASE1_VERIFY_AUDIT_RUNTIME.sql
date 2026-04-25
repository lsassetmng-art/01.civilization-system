-- ============================================================
-- STREAM STUDIO PHASE 1 VERIFY AUDIT RUNTIME SHAPE
-- ============================================================

SELECT
  'creator_runtime_job' AS table_name,
  COUNT(*)::text AS row_count
FROM __STREAM_STUDIO_SCHEMA__.creator_runtime_job

UNION ALL

SELECT
  'creator_dead_letter_entry' AS table_name,
  COUNT(*)::text AS row_count
FROM __STREAM_STUDIO_SCHEMA__.creator_dead_letter_entry

UNION ALL

SELECT
  'creator_audit_event' AS table_name,
  COUNT(*)::text AS row_count
FROM __STREAM_STUDIO_SCHEMA__.creator_audit_event

ORDER BY table_name;
