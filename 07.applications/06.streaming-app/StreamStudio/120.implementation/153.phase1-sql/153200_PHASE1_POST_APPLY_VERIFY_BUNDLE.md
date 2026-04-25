# ============================================================
# STREAM STUDIO PHASE 1 POST-APPLY VERIFY BUNDLE
# ============================================================

status: sql-post-apply-verify-batch
layer: implementation-db-verify
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides the bundled read-only verification pack for StreamStudio Phase 1
after real SQL apply.

verify_scope:
- schema existence
- table existence
- required column shape
- required indexes
- required foreign keys
- audit table presence
- runtime / dead-letter table presence

verify_policy:
- read-only verification only
- uses PERSONA_DATABASE_URL
- schema name is templated as __STREAM_STUDIO_SCHEMA__
- no data mutation in this bundle
- safe to run repeatedly

bundle_files:
- 153210_PHASE1_VERIFY_TABLE_PRESENCE.sql
- 153220_PHASE1_VERIFY_COLUMN_SHAPE.sql
- 153230_PHASE1_VERIFY_INDEX_AND_FK.sql
- 153240_PHASE1_VERIFY_AUDIT_RUNTIME.sql
- 153250_PHASE1_POST_APPLY_VERIFY_RUNNER.sh
- 153260_PHASE1_POST_APPLY_VERIFY_CHECKLIST.md
- 153299_PHASE1_POST_APPLY_VERIFY_SUMMARY.md
