# ============================================================
# STREAM STUDIO PHASE 1 POST-APPLY VERIFY SUMMARY
# ============================================================

status: batch-summary
layer: implementation-db-summary
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Summarizes the post-apply verify bundle.

bundle_files:
- 153210_PHASE1_VERIFY_TABLE_PRESENCE.sql
- 153220_PHASE1_VERIFY_COLUMN_SHAPE.sql
- 153230_PHASE1_VERIFY_INDEX_AND_FK.sql
- 153240_PHASE1_VERIFY_AUDIT_RUNTIME.sql
- 153250_PHASE1_POST_APPLY_VERIFY_RUNNER.sh
- 153260_PHASE1_POST_APPLY_VERIFY_CHECKLIST.md

recommended_use_order:
- apply Phase 1 SQL
- set STREAM_STUDIO_SCHEMA if needed
- run 153250 with RUN_DB_VERIFY=1
- archive report from ~/.tmp
