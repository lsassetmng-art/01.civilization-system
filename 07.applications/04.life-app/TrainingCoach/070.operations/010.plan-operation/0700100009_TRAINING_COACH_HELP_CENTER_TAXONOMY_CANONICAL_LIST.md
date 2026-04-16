# ============================================================
# TRAINING COACH HELP CENTER TAXONOMY CANONICAL LIST
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - help center のカテゴリ体系を canonical に固定する
  - FAQ / help search / AI support routing の土台にする
  - v1 で見せるカテゴリと将来カテゴリを分ける

taxonomy_policy:
  - ユーザー視点の分かりやすさを優先する
  - 機能構造そのものではなく、困りごと起点で分類する
  - safety は独立カテゴリとして目立たせる
  - future-only 項目は v1 表示優先度を下げる

v1_visible_categories:
  - getting_started
  - plans_and_goals
  - today_training
  - streak_and_progress
  - notifications
  - premium
  - safety
  - privacy_and_data
  - sync_and_troubleshooting

future_hidden_or_low_priority_categories:
  - share_and_family
  - coach_view
  - advanced_device_linkage
  - content_updates

category_definitions:

getting_started:
  user_intents:
    - このアプリで何ができるか
    - はじめ方が分からない
    - 初期設定を変えたい

plans_and_goals:
  user_intents:
    - プランの作り方
    - 目標の変え方
    - 運動時間や難易度の調整

today_training:
  user_intents:
    - 今日のメニュー確認
    - セッション開始 / 終了
    - ガイドの見方

streak_and_progress:
  user_intents:
    - streak の意味
    - 達成率の見方
    - 進捗がどう計算されるか

notifications:
  user_intents:
    - 通知の変更
    - 通知が来ない
    - 通知が多い

premium:
  user_intents:
    - Free と Premium の違い
    - 課金状態の反映
    - Premium 機能の説明

safety:
  user_intents:
    - 痛みや違和感がある
    - 体調が悪い日の使い方
    - 無理せず進めたい

privacy_and_data:
  user_intents:
    - データ保存先
    - 共有範囲
    - 何が記録されるか

sync_and_troubleshooting:
  user_intents:
    - BodyMetrics 反映遅延
    - ガイドが出ない
    - データが見えない

future_category_notes:
  share_and_family:
    note:
      - v1 では future feature として扱う
  coach_view:
    note:
      - 初期リリース対象外
  advanced_device_linkage:
    note:
      - 詳細リアルタイム連携は後段
