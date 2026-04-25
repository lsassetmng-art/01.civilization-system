# ============================================================
# STREAM STUDIO PHASE 1 SQL REAL MIGRATION BUNDLE
# ============================================================

status: sql-real-bundle
layer: implementation-sql-bundle
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides the real SQL migration-unit bundle for StreamStudio Phase 1.

sql_policy:
- schema name is templated as __STREAM_STUDIO_SCHEMA__
- Persona-side DB work uses PERSONA_DATABASE_URL
- SQL apply is not automatic in this bundle
- apply must go through explicit review and explicit runner execution
- 佐藤（DB担当） review is required before real apply

migration_units:
- 153100_PHASE1_01_creator_project_and_member.sql
- 153110_PHASE1_02_upload_job.sql
- 153120_PHASE1_03_video_draft_marker_subtitle.sql
- 153130_PHASE1_04_publish_setting_and_request.sql
- 153140_PHASE1_05_runtime_and_dead_letter.sql
- 153150_PHASE1_06_audit_event.sql
- 153160_PHASE1_07_indexes_and_constraints.sql

notes:
- IDs are stored as text in Phase 1 SQL to preserve opaque-ID flexibility
- enum values are stored as text with check constraints where stable enough
- audit and runtime tables are included in Phase 1 and not deferred
