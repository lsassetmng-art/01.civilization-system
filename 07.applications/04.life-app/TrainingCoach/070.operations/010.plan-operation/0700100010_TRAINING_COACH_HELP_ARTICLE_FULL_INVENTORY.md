# ============================================================
# TRAINING COACH HELP ARTICLE FULL INVENTORY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - FAQ 以外も含めた help article 候補を棚卸しする
  - help center taxonomy と整合する article inventory を作る
  - v1 必須記事と later 候補を分ける

article_inventory_policy:
  - FAQ で足りない文脈説明は article で補う
  - v1 は最小限でよい
  - safety 記事は優先度を高く置く
  - future feature は v1 article 優先度を落とす

v1_required_articles:

- article_code: TC-HELP-0001
  category: getting_started
  title_summary: TrainingCoach のはじめ方
  article_type: guide
  priority: high
  scope:
    - アプリの役割
    - 初回設定の流れ
    - 最初のプラン作成

- article_code: TC-HELP-0002
  category: plans_and_goals
  title_summary: プランの作り方と変え方
  article_type: guide
  priority: high
  scope:
    - goal_type
    - difficulty_level
    - duration
    - rest day

- article_code: TC-HELP-0003
  category: today_training
  title_summary: 今日の運動を始める
  article_type: guide
  priority: high
  scope:
    - today_plan
    - session_execution
    - completion_result

- article_code: TC-HELP-0004
  category: streak_and_progress
  title_summary: streak と進捗の見方
  article_type: explainer
  priority: medium
  scope:
    - streak
    - weekly_completion_rate
    - achievement_rate

- article_code: TC-HELP-0005
  category: notifications
  title_summary: 通知設定を見直す
  article_type: troubleshooting
  priority: high
  scope:
    - app notification
    - OS notification
    - reminder timing

- article_code: TC-HELP-0006
  category: premium
  title_summary: Free と Premium の違い
  article_type: explainer
  priority: medium
  scope:
    - Free
    - Premium
    - AI support only
    - non-medical scope

- article_code: TC-HELP-0007
  category: safety
  title_summary: 体調が良くない日の使い方
  article_type: safety
  priority: critical
  scope:
    - 休息優先
    - 中止検討
    - 医療相談検討文言

- article_code: TC-HELP-0008
  category: privacy_and_data
  title_summary: データ保存と連携の考え方
  article_type: explainer
  priority: medium
  scope:
    - life schema
    - BodyMetrics inbound
    - MealPlanner / LifePlanner outbound summary

- article_code: TC-HELP-0009
  category: sync_and_troubleshooting
  title_summary: BodyMetrics が反映されないとき
  article_type: troubleshooting
  priority: high
  scope:
    - source sync
    - delay possibility
    - retry guidance

- article_code: TC-HELP-0010
  category: sync_and_troubleshooting
  title_summary: ガイドが表示されないとき
  article_type: troubleshooting
  priority: medium
  scope:
    - availability
    - locale fallback
    - retry

later_articles:
  - article_code: TC-HELP-0011
    category: share_and_family
    title_summary: 共有機能の考え方
    article_type: future_feature
    priority: low
  - article_code: TC-HELP-0012
    category: advanced_device_linkage
    title_summary: デバイス連携の詳細
    article_type: future_feature
    priority: low
  - article_code: TC-HELP-0013
    category: content_updates
    title_summary: ガイド更新の見方
    article_type: future_feature
    priority: low

article_fields_candidate:
  - article_code
  - category
  - title_key
  - summary_key
  - body_key
  - article_type
  - priority
  - locale
  - status
  - search_keywords
  - related_faq_codes

status_values:
  - planned
  - draft
  - review
  - approved
  - active
  - deprecated
