# ============================================================
# LIFE PLANNER INITIAL SETUP WIZARD ITEMS
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 050.onboarding-template
owner: Boss
prepared_by: Zero
schema: life

wizard_items:
  - item_id: setup_mode
    label_ja: はじめ方
    item_type: single_select
    options:
      - personal_start
      - family_start

  - item_id: planning_horizon
    label_ja: 主な計画期間
    item_type: single_select
    options:
      - 5_year
      - 10_year
      - 20_year

  - item_id: initial_categories
    label_ja: まず考えたいカテゴリ
    item_type: multi_select
    options:
      - family
      - housing
      - work
      - learning
      - health
      - finance
      - retirement
      - end_of_life
      - legal

  - item_id: template_choice
    label_ja: テンプレート
    item_type: single_select
    options:
      - blank
      - family_focus
      - work_and_learning_focus
      - retirement_focus
      - balance_focus

  - item_id: plan_name
    label_ja: 計画名
    item_type: text
    required: true

  - item_id: start_year
    label_ja: 開始年
    item_type: number
    required: true

  - item_id: end_year
    label_ja: 終了年
    item_type: number
    required: true

wizard_policy:
  - setupでは最低限項目に限定する
  - detailed goal and timeline are optional later
  - family share invitation is initial stepでは必須にしない
