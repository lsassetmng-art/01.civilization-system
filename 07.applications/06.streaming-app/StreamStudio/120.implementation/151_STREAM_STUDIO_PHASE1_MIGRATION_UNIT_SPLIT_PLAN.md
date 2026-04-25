# ============================================================
# STREAM STUDIO PHASE 1 MIGRATION UNIT SPLIT PLAN
# ============================================================

status: sql-pre-ddl
layer: implementation-db-plan
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the recommended migration split order for Phase 1.

migration_unit_order:

  unit_01_project_base:
    creates:
      - creator_project
      - creator_project_member
    reason:
      - root ownership and member structure first

  unit_02_upload_base:
    creates:
      - creator_upload_job
    reason:
      - upload needs project base first

  unit_03_draft_base:
    creates:
      - creator_video_draft
      - creator_edit_marker
      - creator_subtitle_track
    reason:
      - draft records depend on project base

  unit_04_publish_base:
    creates:
      - creator_publish_setting
      - creator_publish_request
    reason:
      - publish base is phase 1 completion target

  unit_05_runtime_base:
    creates:
      - creator_runtime_job
      - creator_dead_letter_entry_optional
    reason:
      - scheduled publish and async visibility

  unit_06_audit_base:
    creates:
      - creator_audit_event
    reason:
      - append-only audit can be created independently but should exist before app integration

  unit_07_indexes_and_constraints:
    creates:
      - secondary indexes
      - unique constraints
      - checks
      - foreign keys
    reason:
      - easier staged rollout and rollback safety

recommended_apply_order:
- unit_01_project_base
- unit_02_upload_base
- unit_03_draft_base
- unit_04_publish_base
- unit_05_runtime_base
- unit_06_audit_base
- unit_07_indexes_and_constraints

rollback_direction:
- rollback should be reverse-order and safety-checked
- destructive rollback of audit table is discouraged outside dev
- hard-delete rollback is not preferred on populated environments

fixed_statement:
Phase 1 SQL should be written and applied in migration units,
not as one opaque mega-file.
