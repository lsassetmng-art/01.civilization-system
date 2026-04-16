# ============================================================
# APP DEVELOPMENT STUDIO WS-DB START LEDGER
# ============================================================

status: canonical-draft
layer: implementation
system: applications
application: App Development Studio
workstream: WS-DB
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete DB-start ledger
for the first implementation workstream.

ws_db_scope:
- MVP DB DDL reading
- speed-experience DDL reading
- migration order fixation
- repository target fixation
- persistence verification planning

task_groups:

- task_group_id: WSDB-01
  task_group_name: DDL Input Confirmation
  tasks:
    - confirm 2000_APP_DEVELOPMENT_STUDIO_MVP_DB_DDL.sql
    - confirm 2001_APP_DEVELOPMENT_STUDIO_SPEED_EXPERIENCE_DDL.sql
    - confirm speed physical schema docs
    - confirm repository target list

- task_group_id: WSDB-02
  task_group_name: Migration Order Fixation
  tasks:
    - define migration execution order
    - define table dependency readability order
    - define index creation timing
    - define post-DDL verification order

- task_group_id: WSDB-03
  task_group_name: Repository Target Fixation
  tasks:
    - speed_quick_start_run_repository
    - speed_preview_result_repository
    - speed_starter_pack_run_repository
    - speed_mode_promotion_repository
    - speed_audit_event_repository
    - speed_notification_event_repository

- task_group_id: WSDB-04
  task_group_name: Verification Scope
  tasks:
    - create verification checklist
    - confirm insert/update/read paths
    - confirm state persistence behavior
    - confirm audit append behavior
    - confirm governed linkage queryability
