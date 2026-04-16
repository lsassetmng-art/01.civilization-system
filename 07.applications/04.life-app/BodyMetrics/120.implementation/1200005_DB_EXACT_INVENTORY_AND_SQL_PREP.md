# ============================================================
# DB EXACT INVENTORY AND SQL PREP
# ============================================================

status: draft

sql_prep_goal:
  - psql で直接作表できる粒度の前段整理
  - life schema の責務ずれ防止
  - API payload 固定の前提整備

recommended_sql_build_order:
  - life.biometric_record
  - life.blood_pressure_record
  - life.sleep_record
  - life.activity_record
  - life.manual_note
  - life.health_goal
  - life.health_score_snapshot
  - life.health_score_component_snapshot
  - life.average_comparison_snapshot
  - life.device_link
  - life.data_share_setting
  - life.export_job
  - life.correction_record
  - life.biometric_record_raw
  - life.biometric_record_normalized

index_priority:
  high:
    - user_id + measured_at desc 系
    - user_id + local_date 系
    - owner_user_id / recipient_user_id 系
  medium:
    - source_type 系
    - status 系
    - version 系

constraint_priority:
  high:
    - null 許容の明確化
    - unique key 候補の採否
    - foreign key 方針
  medium:
    - check constraint の粒度
    - enum 化対象の切り出し

api_alignment_targets:
  - quick record request
  - blood pressure save request
  - sleep import payload
  - health score response
  - average comparison response
  - Family Care share request
  - export request

next_outputs:
  - exact columns with data types
  - PK / FK / UK definitive list
  - index definitive list
  - API request / response exact payload
