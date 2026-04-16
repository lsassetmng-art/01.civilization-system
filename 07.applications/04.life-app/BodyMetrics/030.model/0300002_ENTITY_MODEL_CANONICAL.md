# ============================================================
# ENTITY MODEL CANONICAL
# ============================================================

status: draft

main_entities:
  - biometric_record
  - biometric_record_raw
  - biometric_record_normalized
  - blood_pressure_record
  - oxygen_record
  - sleep_record
  - activity_record
  - manual_note
  - health_goal
  - device_link
  - data_share_setting
  - export_job
  - correction_record

notes:
  - source_type を全記録に持つ
  - local_date と measured_at を分ける
  - correction は履歴型で保持する
