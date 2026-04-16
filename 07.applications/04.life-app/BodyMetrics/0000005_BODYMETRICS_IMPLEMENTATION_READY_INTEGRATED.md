# ============================================================
# BODYMETRICS IMPLEMENTATION READY INTEGRATED
# ============================================================

status: fixed

purpose:
  - BodyMetrics の実装準備完了状態を1枚で読めるようにする
  - DB / API / UI / 権限 / テストの最終整合をまとめる

implementation_readiness_summary:
  fixed:
    - app scope fixed
    - billing fixed
    - runtime schema fixed
    - fixed knowledge boundary fixed
    - unresolved items closed
    - DB structure fixed
    - API exact payload fixed
    - UI exact display fixed
    - Family Care permission model fixed
    - privacy / audit gates fixed
    - code contracts fixed
    - test readiness gate fixed
  not_started:
    - SQL writing
    - API implementation
    - UI implementation
    - provider SDK implementation
    - connector implementation

db_api_ui_consistency_summary:
  weight_recording:
    db:
      - life.biometric_record
      - life.average_comparison_snapshot
    api:
      - POST /life/bodymetrics/records/metric
      - GET /life/bodymetrics/dashboard
      - GET /life/bodymetrics/trends/{metric_type}
    ui:
      - dashboard_home.latest_weight_card
      - quick_record
      - metric_detail
      - trend_analysis

  blood_pressure_recording:
    db:
      - life.blood_pressure_record
      - life.average_comparison_snapshot
    api:
      - POST /life/bodymetrics/records/blood-pressure
      - GET /life/bodymetrics/dashboard
      - GET /life/bodymetrics/trends/{metric_type}
    ui:
      - dashboard_home.latest_blood_pressure_card
      - quick_record
      - metric_detail
      - trend_analysis

  sleep_recording:
    db:
      - life.sleep_record
      - life.average_comparison_snapshot
    api:
      - POST /life/bodymetrics/records/sleep
      - GET /life/bodymetrics/dashboard
      - GET /life/bodymetrics/trends/{metric_type}
    ui:
      - dashboard_home.sleep_last_night_card
      - quick_record
      - metric_detail
      - trend_analysis
      - weekly_review

  activity_recording:
    db:
      - life.activity_record
      - life.average_comparison_snapshot
    api:
      - POST /life/bodymetrics/records/activity
      - GET /life/bodymetrics/dashboard
      - GET /life/bodymetrics/trends/{metric_type}
    ui:
      - dashboard_home.steps_today_card
      - quick_record
      - metric_detail
      - trend_analysis
      - weekly_review

  health_score:
    db:
      - life.health_score_snapshot
      - life.health_score_component_snapshot
    api:
      - GET /life/bodymetrics/health-score
      - GET /life/bodymetrics/dashboard
      - GET /life/bodymetrics/reviews/weekly
    ui:
      - dashboard_home.health_score_summary_card
      - health_score_center
      - weekly_review

  family_care:
    db:
      - life.data_share_setting
    api:
      - GET /life/bodymetrics/family-care/share-settings
      - POST /life/bodymetrics/family-care/share-settings
    ui:
      - family_care_settings

  export:
    db:
      - life.export_job
    api:
      - POST /life/bodymetrics/exports
    ui:
      - export_center

code_contract_summary:
  metric_type:
    - weight
    - heart_rate
    - blood_oxygen
    - body_temperature
    - body_fat_percentage
    - blood_pressure
    - sleep_duration
    - steps
  source_type:
    - manual
    - apple_health
    - health_connect
    - smartwatch_vendor
  provider_type:
    - apple_health
    - health_connect
    - fitbit
    - garmin
    - samsung
  goal_type:
    - target_weight
    - step_target
    - sleep_target
    - blood_pressure_range

permission_summary:
  owner:
    - full self data view
    - edit self data
    - create export
    - manage family care
  recipient:
    - only shared scope view
  recipient_denied:
    - unshared metric view
    - private note view unless explicitly allowed
    - export unless export_permission_flag = true

release_blockers:
  - Family Care scope leak
  - private note leak
  - unauthorized export generation
  - provider credential exposure
  - medical diagnosis wording
