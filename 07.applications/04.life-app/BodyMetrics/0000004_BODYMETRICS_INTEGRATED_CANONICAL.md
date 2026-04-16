# ============================================================
# BODYMETRICS INTEGRATED CANONICAL
# ============================================================

status: fixed-canonical
prepared_by: Zero
owner: Boss

app_identity:
  app_name:
    en: BodyMetrics
    ja: 基礎情報測定アプリ
  domain:
    os: LifeOS
    category: 健康領域

positioning:
  - 日々の身体データ記録・可視化・比較・振り返りに特化した健康支援アプリ
  - スマートウォッチ / 外部アプリ連携前提だが、未連携時も手入力で完結できる
  - 医療診断ではなく、記録・傾向把握・生活改善支援を主目的とする
  - LifeOS 内の MealPlanner / TrainingCoach / LifePlanner と接続する健康記録ハブ

fixed_boundaries:
  - 診断しない
  - 治療方針を決めない
  - 緊急医療判断をしない
  - 医療断定表現をしない
  - 共通部品採否は別チャット扱いとする

pricing_and_support:
  free:
    monthly_jpy: 0
    scope:
      - 個人利用コア
      - 記録
      - グラフ
      - 平均比較
      - 健康スコア
      - 週次ふりかえり
      - PDF/CSV出力
  family_care:
    monthly_jpy: 300
    scope:
      - 家族見守り共有
      - 項目単位共有
      - 期間単位共有
      - 共有先別サマリ
  support_policy:
    type: ai-chat-only
    no_human_support: true

runtime_and_knowledge_boundary:
  runtime_schema:
    name: life
  fixed_knowledge_side:
    name: CX22073
  runtime_data_examples:
    - biometric_record
    - blood_pressure_record
    - sleep_record
    - activity_record
    - manual_note
    - health_goal
    - device_link
    - health_score_snapshot
    - average_comparison_snapshot
    - data_share_setting
    - export_job
  fixed_knowledge_examples:
    - health_reference_range_master
    - health_measurement_condition_master
    - health_metric_semantics_master
    - health_reference_source_master
    - health_score_rule_master

core_features:
  - 体重記録
  - 血圧記録
  - 血中酸素濃度記録
  - 歩数記録
  - 睡眠記録
  - 心拍記録
  - 日次 / 週次 / 月次グラフ
  - personal 7day / 30day average 比較
  - reference range band 表示
  - 健康スコア表示
  - 週次ふりかえり
  - Family Care
  - PDF / CSV 出力

fixed_data_architecture:
  biometric_record:
    role: ユーザー記録の正本
  biometric_record_raw:
    role: 外部連携元データ追跡
  biometric_record_normalized:
    role: 分析・グラフ用正規化データ
  average_comparison_snapshot:
    role: 平均比較結果保持
    policy: persist_snapshot
  health_score_snapshot:
    role: 健康スコア結果保持
    policy: persist_snapshot
  health_score_component_snapshot:
    role: 健康スコア内訳保持

time_series_policy:
  local_first_vs_cloud_first:
    fixed: local-first-with-sync
  sleep_date_attribution:
    fixed: wake_date_default
  blood_pressure_timing_code:
    fixed:
      - morning
      - night
      - other
  missing_days_policy:
    fixed: no_imputation

conflict_resolution:
  fixed: manual_priority_then_source_priority
  order:
    - manual
    - apple_health
    - health_connect
    - smartwatch_vendor

reference_and_score_policy:
  reference_range:
    initial_release: included
    wording:
      - reference range
      - 参考範囲
    external_population_average:
      initial_release: excluded
  health_score:
    name:
      ja: 健康スコア
      en: Health Score
    interpretation:
      ja: 生活傾向スコア
      en: Lifestyle Tendency Score
    range: 0_to_100
    refresh_policy: daily_snapshot_weekly_emphasis
    components_and_weights:
      sleep_balance: 0.25
      activity_balance: 0.20
      weight_trend_balance: 0.20
      blood_pressure_stability: 0.20
      record_continuity: 0.15
    missing_component_policy: reweight_available_components

family_care_policy:
  recipient_limit: 5
  defaults:
    initial_non_shared: true
    note_share_flag: false
    export_permission_flag: false
    summary_only_flag: false
  shareable_metrics:
    - weight
    - blood_pressure
    - sleep
    - steps
    - summary_only
  permission_model:
    export_permission: separated_from_view_permission

api_surface:
  canonical_endpoints:
    - POST /life/bodymetrics/records/metric
    - POST /life/bodymetrics/records/blood-pressure
    - POST /life/bodymetrics/records/sleep
    - POST /life/bodymetrics/records/activity
    - GET  /life/bodymetrics/dashboard
    - GET  /life/bodymetrics/trends/{metric_type}
    - GET  /life/bodymetrics/health-score
    - GET  /life/bodymetrics/reviews/weekly
    - POST /life/bodymetrics/goals
    - POST /life/bodymetrics/providers/connect
    - GET  /life/bodymetrics/family-care/share-settings
    - POST /life/bodymetrics/family-care/share-settings
    - POST /life/bodymetrics/exports

ui_surface:
  main_screens:
    - dashboard_home
    - quick_record
    - metric_detail
    - trend_analysis
    - health_score_center
    - weekly_review
    - goal_center
    - provider_link_settings
    - family_care_settings
    - export_center
  pc_tablet_layout:
    fixed: three_zone_layout

security_and_permission:
  privacy_posture:
    - 健康データは高機微情報として扱う
    - 初期共有状態は非共有
    - provider credential detail をUI表示しない
  audit_targets:
    - data_share_setting change
    - export_job creation
    - correction_record creation
    - provider link state change

design_state:
  unresolved_items_remaining: none
  implementation_started: false
  readiness: implementation_ready
