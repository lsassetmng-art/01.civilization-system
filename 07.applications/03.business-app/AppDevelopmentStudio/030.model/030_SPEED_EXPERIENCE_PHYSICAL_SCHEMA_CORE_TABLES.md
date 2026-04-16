# ============================================================
# SPEED EXPERIENCE PHYSICAL SCHEMA CORE TABLES
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines core physical tables for speed-experience features.

core_tables:

- table_name: ads_speed_quick_start_run
  purpose:
    Stores quick-start execution units.
  key_columns:
    - quick_start_run_id
    - account_id
    - request_text
    - target_type
    - output_scope
    - mode_type
    - state
    - device_type
    - created_at
    - completed_at

- table_name: ads_speed_preview_result
  purpose:
    Stores preview result units.
  key_columns:
    - preview_result_id
    - quick_start_run_id
    - preview_scope
    - preview_state
    - api_preview_json
    - ui_preview_json
    - ddl_preview_text
    - structure_preview_json
    - created_at

- table_name: ads_speed_starter_pack_run
  purpose:
    Stores starter-pack generation runs.
  key_columns:
    - starter_pack_run_id
    - quick_start_run_id
    - starter_pack_type
    - included_artifacts_json
    - state
    - artifact_manifest_json
    - created_at
    - completed_at

- table_name: ads_speed_mode_promotion
  purpose:
    Stores fast-mode to governed-mode promotion linkage.
  key_columns:
    - speed_mode_promotion_id
    - quick_start_run_id
    - source_mode_type
    - target_governed_run_id
    - promotion_state
    - promote_reason
    - promoted_by
    - promoted_at
