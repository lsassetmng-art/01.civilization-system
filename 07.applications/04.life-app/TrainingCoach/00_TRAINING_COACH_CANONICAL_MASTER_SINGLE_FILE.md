# ============================================================
# TRAINING COACH CANONICAL MASTER SINGLE FILE
# ============================================================

status: canonical-master-draft
phase: design-closure
system: TrainingCoach
domain: 01.civilization-system/07.applications/04.life-app
owner: Boss
prepared_by: Zero

purpose:
  - TrainingCoach 設計の主要決定を 1 ファイルで俯瞰できるようにする
  - 実装前の正本要約として扱う
  - 詳細文書群への入口を一元化する

# ============================================================
# 1. APP IDENTITY
# ============================================================

app_name:
  en: TrainingCoach
  ja: トレーニング支援アプリ

positioning:
  - ヨガ、ストレッチ、器具運動、日常運動を支援する軽量アプリ
  - 生活に合わせた運動メニュー策定と実施継続に特化
  - 医療ではなく、生活改善・運動習慣化・体力維持支援を主目的とする

core_purpose:
  - 運動メニュー作成
  - 実施支援
  - 継続支援
  - 身体状態と目標に応じた負荷調整

main_users:
  - 運動初心者
  - 在宅運動ユーザー
  - 健康維持層
  - 体力向上層

roles:
  owner:
    - メニュー作成
    - 実施記録
    - 目標設定
    - 疲労度/体調入力
  coach_view:
    - 将来拡張
    - 初期リリース対象外

# ============================================================
# 2. SCOPE
# ============================================================

must_functions:
  - 運動メニュー作成
  - 実施記録
  - 種目分類（ヨガ、ストレッチ、有酸素、筋トレ、器具）
  - 日次/週次プラン
  - 所要時間管理
  - 達成チェック
  - メニュー再利用
  - 休息日設定

should_functions:
  - 体重や歩数連携
  - 疲労度入力
  - 難易度自動調整
  - 動画/画像ガイド
  - 連続実施記録
  - 通知
  - 目標別テンプレート
  - 体調連動メニュー差し替え

nice_to_have:
  - 姿勢チェック連携
  - スマートウォッチ心拍利用
  - 家族/友人共有
  - トレーナー相談連携
  - 運動消費量の推定表示
  - ガイドコンテンツのお気に入り保存

release_slice_v1:
  include:
    - Free / Premium の2段階
    - training_plan
    - training_session
    - completion_log
    - fatigue_note
    - streak_summary
    - guide_viewer
    - BodyMetrics 日次概要受信
    - MealPlanner / LifePlanner への概要連携
    - safety messaging
  exclude_until_later:
    - deeper family/share
    - coach_view detailed features
    - advanced wearable realtime
    - external trainer support
  hard_out_of_scope:
    - 医療診断
    - 治療メニュー
    - 医療機関代替判断
    - ERP 主保存

# ============================================================
# 3. PRICING
# ============================================================

pricing_design:
  product_type:
    - 月額利用型アプリ
  plans:
    free:
      monthly_price_jpy: 0
      plan_name_ja: Free
      value:
        - 基本プラン作成
        - 実施記録
        - 継続確認
    premium:
      monthly_price_jpy: 500
      plan_name_ja: Premium
      value:
        - BodyMetrics連携
        - 体調に応じた調整支援
        - 詳細進捗表示
        - ガイド強化
        - 将来共有の基盤候補
  support_policy:
    - 全プラン AIチャットサポートのみ
  tone_policy:
    - Free でも基本利用できることを明示
    - Premium は継続支援と連携強化中心
    - 医療機能のように見せない

# ============================================================
# 4. SCHEMA / DATA
# ============================================================

schema_binding:
  primary_schema: life

lifeos_boundaries:
  inbound:
    - BodyMetricsから体重、歩数、睡眠、心拍傾向受信
  outbound:
    - MealPlannerへ消費活動量概要共有
    - LifePlannerへ健康目標進捗共有
  guardrails:
    - source-of-truth を奪わない
    - summary-only 連携
    - direct cross-app ownership を避ける

major_entities:
  - training_plan
  - training_plan_rest_rule
  - training_plan_item
  - training_session
  - completion_log
  - fatigue_note
  - training_goal
  - streak_summary
  - exercise_category
  - exercise_item
  - exercise_item_safety_notice
  - difficulty_rule
  - guide_content
  - device_sync_state
  - bodymetrics_daily_summary_cache
  - future training_share_invitation
  - future training_share_relation
  - future training_share_audit_event

data_principles:
  - TrainingCoach の保存責務は life
  - BodyMetrics raw ownership は BodyMetrics 側
  - share は raw health を既定共有しない
  - seed master は最小構成で開始
  - ja-JP guide seed を正本とする

# ============================================================
# 5. RUNTIME / PAYLOAD
# ============================================================

runtime_modes:
  - menu_planning
  - guided_execution
  - quick_logging
  - continuity_review

state_transition_highlights:
  training_plan:
    - active -> paused -> archived
  training_session:
    - scheduled -> in_progress -> completed|stopped
    - scheduled -> skipped
  completion_log:
    - finalized 後の direct update 禁止
  fatigue_note:
    - same day editable candidate
    - day rollover 後 locked

payload_status:
  - screen request/response exact payload fixed
  - LifeOS integration payload fixed
  - empty/error response contract fixed
  - payload versioning fixed
  - error code catalog fixed
  - permission boundary fixed
  - audit event overview fixed
  - idempotency / correlation id fixed

# ============================================================
# 6. UX / SCREEN
# ============================================================

major_screens:
  - dashboard
  - today_plan
  - plan_editor
  - session_execution
  - completion_result
  - guide_viewer
  - settings
  - premium_upgrade

screen_principles:
  - 実施中は迷わせない
  - 1画面1目的
  - dashboard は編集画面にしない
  - guide_viewer は content management にしない
  - completion_result は correction 画面にしない

onboarding_summary:
  - welcome
  - goal
  - level/time
  - schedule/rest
  - condition baseline
  - optional notifications
  - optional premium education
  - first plan proposal

# ============================================================
# 7. HELP / SUPPORT / CONTENT
# ============================================================

help_taxonomy:
  - getting_started
  - plans_and_goals
  - today_training
  - streak_and_progress
  - notifications
  - premium
  - safety
  - privacy_and_data
  - sync_and_troubleshooting

support_policy:
  - FAQ / help center / AI support routing fixed
  - AI support is non-medical
  - safety concern では safety-first
  - billing platform issue は external route candidate

content_governance:
  - safety copy は最優先 review
  - premium copy は誇張禁止
  - FAQ は product behavior と一致必須
  - locale 差分で意味が変わらないようにする

prepared_copy_assets:
  - onboarding ja/en
  - faq ja/en
  - help article ja/en
  - notification ja/en
  - premium ja/en
  - AI support ja/en
  - share viewer ja/en
  - guide body ja/en starter

# ============================================================
# 8. SHARE (FUTURE)
# ============================================================

share_position:
  - future feature
  - v1 実装対象外
  - semantic boundary は強く準備済み

share_principles:
  - summary-first
  - privacy-first
  - owner control first
  - raw fatigue/body_condition/memo は既定共有しない
  - ranking UI を作らない

future_share_assets_ready:
  - exact design
  - payload and permission detail
  - storage physical candidate
  - share SQL draft
  - share audit payload detail
  - viewer UI exact design
  - localized copy ledger and ja/en drafts

# ============================================================
# 9. DB / DDL / SEED
# ============================================================

db_status:
  - physical table mapping fixed
  - relation/cardinality fixed
  - index strategy fixed
  - nullability/default policy fixed
  - correction event persistence fixed
  - audit persistence detail fixed
  - life DDL draft prepared
  - share SQL draft prepared
  - apply-ready SQL not prepared yet

seed_status:
  - seed and master policy fixed
  - seed master actual row catalog prepared
  - guide content draft body set prepared
  - seed insert transformation note prepared

db_review_note:
  - 佐藤 review 前提
  - 実適用はまだしない

# ============================================================
# 10. CURRENT PROJECT POSITION
# ============================================================

current_position:
  design:
    - strong and wide coverage
  implementation:
    - not started
  db_apply:
    - not started
  seed_execution:
    - not started
  copy_assets:
    - broad draft coverage available
  handoff:
    - strongly prepared

what_is_done:
  - concept
  - scope
  - pricing
  - payload
  - schema
  - db draft
  - seed direction
  - copy/help/support assets
  - share future boundary
  - handoff structure
  - reading order and link map

what_is_intentionally_not_done:
  - 実DB適用
  - API実装
  - UI実装
  - seed投入実行
  - final translation QA
  - exhaustive one-file concatenation of every subdocument

# ============================================================
# 11. READING START
# ============================================================

recommended_next_reading:
  - 00_TRAINING_COACH_FINAL_INTEGRATED_CANONICAL_SUMMARY.md
  - 9000100004_TRAINING_COACH_CANONICAL_READING_ORDER.md
  - 9000100005_TRAINING_COACH_CROSS_FILE_LINK_MAP.md
  - 9200100003_TRAINING_COACH_HANDOFF_INVENTORY_AND_PACKAGE_GUIDE.md

policy_reminder:
  - Boss 方針により現時点では実装は進めない
  - bundled output 方針を維持する
