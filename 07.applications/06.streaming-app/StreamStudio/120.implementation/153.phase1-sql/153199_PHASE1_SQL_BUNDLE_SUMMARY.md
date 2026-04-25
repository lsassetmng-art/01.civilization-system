# ============================================================
# STREAM STUDIO PHASE 1 SQL BUNDLE SUMMARY
# ============================================================

status: batch-summary
layer: implementation-sql-summary
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Summarizes the real SQL bundle for StreamStudio Phase 1.

bundle_files:
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

recommended_use_order:
- read 153000
- review 153100 to 153160
- review 153180
- run 153190
- run 153170 for render/apply preview
- apply only after review completion
