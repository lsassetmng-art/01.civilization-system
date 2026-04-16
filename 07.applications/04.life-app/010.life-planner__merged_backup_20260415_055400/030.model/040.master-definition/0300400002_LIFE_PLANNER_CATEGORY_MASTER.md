# ============================================================
# LIFE PLANNER CATEGORY MASTER
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 040.master-definition
owner: Boss
prepared_by: Zero
schema: life

master_policy:
  - 初期段階はカテゴリを増やしすぎない
  - 画面、goal、event、share scope で共通利用しやすい単位を採用する
  - 生活横断の観点は持つが、専門アプリの詳細分類までは持ち込まない

primary_categories:
  - category_code: family
    label_ja: 家族
    description:
      - 家族計画、関係性、扶養、家族イベント

  - category_code: housing
    label_ja: 住居
    description:
      - 引っ越し、住宅取得、住み替え、住環境

  - category_code: work
    label_ja: 仕事
    description:
      - 就職、転職、働き方、役割変化

  - category_code: learning
    label_ja: 学び
    description:
      - 資格、学習、教育、研修

  - category_code: health
    label_ja: 健康
    description:
      - 健康目標、生活改善、運動、身体状態

  - category_code: finance
    label_ja: 資金
    description:
      - ライフイベント費用、資金計画、備え

  - category_code: retirement
    label_ja: 老後
    description:
      - 老後設計、長期生活準備

  - category_code: end_of_life
    label_ja: 終活
    description:
      - 引継ぎ、終活、終末期整理

  - category_code: legal
    label_ja: 法務
    description:
      - 手続きメモ、法務上の準備事項

goal_category_rule:
  - goal.category は primary_categories を基本にする
  - 必要に応じて app-level subcategory は後から拡張する
  - 初期設計では subcategory を固定しない

event_category_examples:
  - family_event
  - housing_event
  - work_event
  - learning_event
  - health_event
  - finance_event
  - retirement_event
  - end_of_life_event
  - legal_event

share_scope_categories:
  - family
  - housing
  - work
  - learning
  - health
  - finance
  - retirement
  - end_of_life
  - legal

note:
  - finance は MoneyPlanner の詳細取引カテゴリではない
  - legal は法的助言そのものではなく準備・記録対象の分類である
