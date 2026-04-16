# ============================================================
# LIFE SCHEMA IMPLEMENTATION PREP
# ============================================================

status: draft

implementation_goal:
  - life schema 前提で DB 実装に移れる粒度まで整理する

recommended_build_order:
  - biometric_record
  - blood_pressure_record
  - sleep_record
  - activity_record
  - manual_note
  - health_goal
  - device_link
  - health_score_snapshot
  - health_score_component_snapshot
  - average_comparison_snapshot
  - data_share_setting
  - export_job
  - correction_record

phase_alignment:
  phase_1:
    - biometric_record
    - blood_pressure_record
    - sleep_record
    - activity_record
    - manual_note
    - health_goal
    - average_comparison_snapshot
    - health_score_snapshot
    - health_score_component_snapshot
    - export_job
  phase_2:
    - biometric_record_raw
    - biometric_record_normalized
    - device_link
    - correction_record
  phase_3:
    - data_share_setting

db_design_notes:
  - measured_at と local_date を分離する
  - metric_type は表示名でなく code で管理する
  - source_type を全 runtime record に持たせる
  - Family Care は data_share_setting を起点に制御する
  - score は rule と snapshot を分離する
  - reference 値は知識側の更新で差し替え可能にする

next_db_outputs:
  - life schema table exact inventory
  - primary key / unique key / index 候補
  - API request / response exact payload
