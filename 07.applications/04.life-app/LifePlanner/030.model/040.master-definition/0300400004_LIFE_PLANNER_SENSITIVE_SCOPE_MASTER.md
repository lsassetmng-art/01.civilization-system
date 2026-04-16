# ============================================================
# LIFE PLANNER SENSITIVE SCOPE MASTER
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 040.master-definition
owner: Boss
prepared_by: Zero
schema: life

sensitive_scope_policy:
  - 共有可否と表示可否をカテゴリ単位で制御する
  - 初期設計では item-level ではなく category-level を優先する
  - family roles は allow flag が true の場合のみ該当カテゴリを見られる

sensitive_categories:
  - category_code: health
    allow_flag: allow_health
    reason:
      - 健康情報はセンシティブ性が高い

  - category_code: end_of_life
    allow_flag: allow_end_of_life
    reason:
      - 終活関連は共有制御が必要

  - category_code: legal
    allow_flag: allow_legal_memo
    reason:
      - 法務メモは個人事情を含みうる

  - category_code: finance
    allow_flag: allow_asset_summary
    reason:
      - 資産要約は慎重共有対象

visibility_rule:
  owner:
    - always visible
  family_editor:
    - visible only when category included in share scope and allow_flag true
  family_viewer:
    - visible only when category included in share scope and allow_flag true

ui_rule:
  - shared scope 外は hidden を基本にする
  - 部分的なマスキングより非表示優先
