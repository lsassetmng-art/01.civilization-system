# ============================================================
# TRAINING COACH FINAL INTEGRATED CANONICAL SUMMARY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach 設計の全体像を 1 ファイルで把握できるようにする
  - 主要な設計決定、境界、読み順、未実装方針をまとめる
  - 後続の見直しや handoff の起点にする

app_identity:
  app_name:
    en: TrainingCoach
    ja: トレーニング支援アプリ
  positioning:
    - ヨガ、ストレッチ、器具運動、日常運動を支援する
    - 継続支援、実施記録、無理のない負荷調整を主軸とする
    - 医療診断や治療ではなく、生活改善と習慣化支援に限定する

core_decisions:
  - schema は life
  - pricing は Free / Premium(500円)
  - implementation はまだ開始しない
  - 設計は bundled 出力で整理継続
  - exact payload は固定済み
  - design 上 implementation-ready 到達済み
  - share は summary-first / privacy-first
  - AI support は non-medical / non-judgmental
  - notification は support-first / safety-first
  - guide seed は ja-JP 正本から開始

functional_scope:
  v1_core:
    - training_plan 作成
    - training_session 実施
    - completion_log 記録
    - fatigue_note 入力
    - streak_summary 表示
    - guide_viewer
    - BodyMetrics inbound summary
    - MealPlanner / LifePlanner outbound summary
    - safety messaging
    - Free / Premium の2段階
  later:
    - family / share detailed implementation
    - coach_view 深掘り
    - advanced wearable real-time linkage
    - richer media library
    - premium copy expansion
  out_of_scope:
    - 医療診断
    - 治療メニュー
    - 医療機関代替判断
    - ERP 主保存

data_and_schema:
  primary_schema:
    - life
  major_entity_groups:
    - training_plan family
    - training_session / completion_log
    - fatigue_note / streak_summary
    - exercise_category / exercise_item / guide_content
    - device_sync_state / bodymetrics_daily_summary_cache
    - future share relation family
  storage_direction:
    - master / plan / session は life
    - BodyMetrics raw ownership は BodyMetrics 側
    - outbound は summary-only

integration_summary:
  inbound:
    - BodyMetrics daily summary
  outbound:
    - MealPlanner activity summary
    - LifePlanner goal progress
  principles:
    - source-of-truth を奪わない
    - payload で接続し、意味境界を保つ
    - direct cross-app ownership を避ける

ux_summary:
  major_screens:
    - dashboard
    - today_plan
    - plan_editor
    - session_execution
    - completion_result
    - guide_viewer
    - settings
    - premium_upgrade
  onboarding:
    - goal
    - level/time
    - schedule/rest
    - condition baseline
    - optional notification
    - optional premium education
  help_support:
    - FAQ / help center / AI support routing 設計済み
  future_share_ui:
    - summary-only viewer 前提で設計済み

copy_and_localization_summary:
  prepared_assets:
    - onboarding ja/en draft
    - faq ja/en draft
    - help article ja/en draft
    - notification ja polished / en draft
    - premium ja/en draft
    - AI support ja/en draft
    - share viewer ja/en draft
    - message key ledgers
  locale_policy:
    - ja-JP を第一正本
    - en は次段
    - fallback policy 定義済み

ops_and_governance_summary:
  - content governance policy 定義済み
  - content review role matrix 定義済み
  - help taxonomy / article inventory 定義済み
  - notification taxonomy / localization policy 定義済み
  - audit / correction / correlation / idempotency 方針 定義済み

db_and_seed_summary:
  - physical table mapping 定義済み
  - DDL draft 定義済み
  - share SQL draft 定義済み
  - seed policy 定義済み
  - seed master actual row catalog 定義済み
  - seed insert transformation note 定義済み

current_project_position:
  - 設計資料としては強い一貫性を持つ状態
  - 実装前の参照資産としてかなり充実
  - ただし DB適用 / API実装 / UI実装 / seed投入 はまだ未着手

recommended_reading_entry:
  - まず本ファイル
  - 次に canonical reading order
  - 次に integrated design / schema binding / exact payload / final summaries を読む
