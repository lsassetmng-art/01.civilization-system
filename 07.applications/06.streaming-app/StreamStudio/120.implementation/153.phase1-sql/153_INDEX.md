# ============================================================
# 153 PHASE1 SQL INDEX
# ============================================================

status: canonical
layer: index
system: applications
application: StreamStudio
directory: 153.phase1-sql
owner: Boss
prepared_by: Zero

files:
- 153000_STREAM_STUDIO_PHASE1_SQL_REAL_MIGRATION_BUNDLE.md
- 153100_PHASE1_01_creator_project_and_member.sql
- 153110_PHASE1_02_upload_job.sql
- 153120_PHASE1_03_video_draft_marker_subtitle.sql
- 153130_PHASE1_04_publish_setting_and_request.sql
- 153140_PHASE1_05_runtime_and_dead_letter.sql
- 153150_PHASE1_06_audit_event.sql
- 153160_PHASE1_07_indexes_and_constraints.sql
- 153170_PHASE1_APPLY_REVIEW_RUNNER.sh
- 153180_PHASE1_PRE_APPLY_CHECKLIST.md
- 153190_PHASE1_SQL_BUNDLE_VERIFY.sh
- 153199_PHASE1_SQL_BUNDLE_SUMMARY.md
- 153200_PHASE1_POST_APPLY_VERIFY_BUNDLE.md
- 153210_PHASE1_VERIFY_TABLE_PRESENCE.sql
- 153220_PHASE1_VERIFY_COLUMN_SHAPE.sql
- 153230_PHASE1_VERIFY_INDEX_AND_FK.sql
- 153240_PHASE1_VERIFY_AUDIT_RUNTIME.sql
- 153250_PHASE1_POST_APPLY_VERIFY_RUNNER.sh
- 153260_PHASE1_POST_APPLY_VERIFY_CHECKLIST.md
- 153299_PHASE1_POST_APPLY_VERIFY_SUMMARY.md
