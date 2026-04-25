# ============================================================
# STREAM STUDIO PHASE 1 SQL PRE-DDL BATCH PACK
# ============================================================

status: sql-pre-ddl-batch
layer: implementation-db-batch
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides the bundled SQL-pre-DDL design pack for StreamStudio Phase 1.

phase_1_sql_target:
- creator_project
- creator_project_member
- creator_upload_job
- creator_video_draft
- creator_edit_marker
- creator_subtitle_track
- creator_publish_setting
- creator_publish_request
- creator_runtime_job
- creator_audit_event
- creator_dead_letter_entry_optional

batch_documents:
- 148_STREAM_STUDIO_PHASE1_TABLE_DDL_EXACT_DESIGN.md
- 149_STREAM_STUDIO_PHASE1_INDEX_FK_CONSTRAINT_EXACT_DESIGN.md
- 150_STREAM_STUDIO_PHASE1_AUDIT_AND_RUNTIME_DDL_EXACT_DESIGN.md
- 151_STREAM_STUDIO_PHASE1_MIGRATION_UNIT_SPLIT_PLAN.md
- 152_STREAM_STUDIO_PHASE1_PSQL_APPLY_PREFLIGHT_MEMO.md

phase_1_sql_non_goals:
- marketplace listing tables
- paid offer tables
- membership tables
- split tables
- settlement tables
- external push full connector tables

fixed_statement:
This pack freezes Phase 1 DB design direction immediately before real SQL writing.
