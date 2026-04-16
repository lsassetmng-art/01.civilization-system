# ============================================================
# TRAINING COACH HELP ARTICLE LEDGER LINKAGE
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - help article inventory と localized copy 資産を結びつける
  - article_code / title / summary / body / taxonomy / faq link を一覧で管理する
  - help center 実装前の参照表とする

linkage_columns:
  - article_code
  - category
  - priority
  - title_key
  - summary_key
  - body_key
  - related_faq_codes
  - search_keywords_ja
  - search_keywords_en
  - status

rows:

- article_code: TC-HELP-0001
  category: getting_started
  priority: high
  title_key: TC_HELP_0001_title
  summary_key: TC_HELP_0001_summary
  body_key: TC_HELP_0001_body
  related_faq_codes:
    - FAQ-0001
    - FAQ-0002
  search_keywords_ja:
    - はじめ方
    - 最初
    - 始める
    - 初期設定
  search_keywords_en:
    - getting started
    - first setup
    - first plan
    - begin
  status: draft

- article_code: TC-HELP-0002
  category: plans_and_goals
  priority: high
  title_key: TC_HELP_0002_title
  summary_key: TC_HELP_0002_summary
  body_key: TC_HELP_0002_body
  related_faq_codes:
    - FAQ-0002
  search_keywords_ja:
    - プラン
    - 目標
    - 難易度
    - 時間
  search_keywords_en:
    - plan
    - goal
    - difficulty
    - duration
  status: draft

- article_code: TC-HELP-0003
  category: today_training
  priority: high
  title_key: TC_HELP_0003_title
  summary_key: TC_HELP_0003_summary
  body_key: TC_HELP_0003_body
  related_faq_codes:
    - FAQ-0003
  search_keywords_ja:
    - 今日の運動
    - セッション
    - 開始
    - 終了
  search_keywords_en:
    - today plan
    - session
    - start
    - finish
  status: draft

- article_code: TC-HELP-0004
  category: streak_and_progress
  priority: medium
  title_key: TC_HELP_0004_title
  summary_key: TC_HELP_0004_summary
  body_key: TC_HELP_0004_body
  related_faq_codes:
    - FAQ-0004
  search_keywords_ja:
    - streak
    - 進捗
    - 達成率
  search_keywords_en:
    - streak
    - progress
    - completion rate
  status: draft

- article_code: TC-HELP-0005
  category: notifications
  priority: high
  title_key: TC_HELP_0005_title
  summary_key: TC_HELP_0005_summary
  body_key: TC_HELP_0005_body
  related_faq_codes:
    - FAQ-0005
  search_keywords_ja:
    - 通知
    - 来ない
    - 時間
    - オフ
  search_keywords_en:
    - notification
    - reminder
    - turn off
    - timing
  status: draft

- article_code: TC-HELP-0006
  category: premium
  priority: medium
  title_key: TC_HELP_0006_title
  summary_key: TC_HELP_0006_summary
  body_key: TC_HELP_0006_body
  related_faq_codes:
    - FAQ-0006
  search_keywords_ja:
    - Premium
    - Free
    - 課金
  search_keywords_en:
    - premium
    - free
    - subscription
  status: draft

- article_code: TC-HELP-0007
  category: safety
  priority: critical
  title_key: TC_HELP_0007_title
  summary_key: TC_HELP_0007_summary
  body_key: TC_HELP_0007_body
  related_faq_codes:
    - FAQ-0007
  search_keywords_ja:
    - 体調が悪い
    - 痛い
    - 無理
    - 休む
  search_keywords_en:
    - not feeling well
    - pain
    - rest
    - discomfort
  status: draft

- article_code: TC-HELP-0008
  category: privacy_and_data
  priority: medium
  title_key: TC_HELP_0008_title
  summary_key: TC_HELP_0008_summary
  body_key: TC_HELP_0008_body
  related_faq_codes:
    - FAQ-0008
  search_keywords_ja:
    - データ
    - 保存
    - 連携
    - privacy
  search_keywords_en:
    - data
    - storage
    - privacy
    - linkage
  status: draft

- article_code: TC-HELP-0009
  category: sync_and_troubleshooting
  priority: high
  title_key: TC_HELP_0009_title
  summary_key: TC_HELP_0009_summary
  body_key: TC_HELP_0009_body
  related_faq_codes:
    - FAQ-0009
  search_keywords_ja:
    - BodyMetrics
    - 反映されない
    - 同期
  search_keywords_en:
    - bodymetrics
    - sync
    - not showing
  status: draft

- article_code: TC-HELP-0010
  category: sync_and_troubleshooting
  priority: medium
  title_key: TC_HELP_0010_title
  summary_key: TC_HELP_0010_summary
  body_key: TC_HELP_0010_body
  related_faq_codes:
    - FAQ-0010
  search_keywords_ja:
    - ガイド
    - 表示されない
    - 読み込み
  search_keywords_en:
    - guide
    - not loading
    - content
  status: draft

usage_notes:
  - title_key / summary_key / body_key は actual copy draft と対応づける
  - help search behavior 設計の ranking / keyword に接続する
  - safety category は search で昇格優先
