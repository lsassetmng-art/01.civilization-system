# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER PLAN CREATE / EDIT SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: create_plan / plan_edit / goal_edit / timeline_edit
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 計画、目標、年表イベントの作成と更新

plan_basic_form:
  items:
    - item_id: plan_name
      label_ja: 計画名
      item_type: text
      source_entity: life_plan
      source_field: plan_name
      required: true
      editable: true
      visible_condition: always

    - item_id: start_year
      label_ja: 開始年
      item_type: number
      source_entity: life_plan
      source_field: start_year
      required: true
      editable: true
      visible_condition: always

    - item_id: end_year
      label_ja: 終了年
      item_type: number
      source_entity: life_plan
      source_field: end_year
      required: true
      editable: true
      visible_condition: always

    - item_id: primary_categories
      label_ja: 主要カテゴリ
      item_type: multi_select
      source_entity: life_plan
      source_field: primary_categories
      required: true
      editable: true
      visible_condition: always

    - item_id: summary
      label_ja: 概要
      item_type: textarea
      source_entity: life_plan
      source_field: summary
      required: false
      editable: true
      visible_condition: always

goal_edit_form:
  items:
    - item_id: goal_category
      label_ja: 目標カテゴリ
      item_type: single_select
      source_entity: life_goal
      source_field: category
      required: true
      editable: true
      visible_condition: always

    - item_id: goal_title
      label_ja: 目標名
      item_type: text
      source_entity: life_goal
      source_field: title
      required: true
      editable: true
      visible_condition: always

    - item_id: goal_description
      label_ja: 目標説明
      item_type: textarea
      source_entity: life_goal
      source_field: description
      required: false
      editable: true
      visible_condition: always

    - item_id: goal_priority
      label_ja: 優先順位
      item_type: single_select
      source_entity: life_goal
      source_field: priority
      required: true
      editable: true
      visible_condition: always

    - item_id: goal_status
      label_ja: 状態
      item_type: single_select
      source_entity: life_goal
      source_field: status
      required: true
      editable: true
      visible_condition: always

    - item_id: goal_start_target_date
      label_ja: 開始予定日
      item_type: date
      source_entity: life_goal
      source_field: start_target_date
      required: false
      editable: true
      visible_condition: always

    - item_id: goal_end_target_date
      label_ja: 終了予定日
      item_type: date
      source_entity: life_goal
      source_field: end_target_date
      required: false
      editable: true
      visible_condition: always

    - item_id: goal_estimated_cost_minor
      label_ja: 概算費用
      item_type: currency
      source_entity: life_goal
      source_field: estimated_cost_minor
      required: false
      editable: true
      visible_condition: always

    - item_id: goal_currency_code
      label_ja: 通貨コード
      item_type: single_select
      source_entity: life_goal
      source_field: currency_code
      required: false
      editable: true
      visible_condition: when_cost_exists

timeline_event_form:
  items:
    - item_id: event_category
      label_ja: イベントカテゴリ
      item_type: single_select
      source_entity: event_timeline
      source_field: event_category
      required: true
      editable: true
      visible_condition: always

    - item_id: event_title
      label_ja: イベント名
      item_type: text
      source_entity: event_timeline
      source_field: title
      required: true
      editable: true
      visible_condition: always

    - item_id: event_mode
      label_ja: 日付形式
      item_type: single_select
      source_entity: event_timeline
      source_field: event_mode
      required: true
      editable: true
      visible_condition: always

    - item_id: event_date
      label_ja: 単日
      item_type: date
      source_entity: event_timeline
      source_field: event_date
      required: conditional
      editable: true
      visible_condition: when_event_mode_single_date

    - item_id: start_date
      label_ja: 開始日
      item_type: date
      source_entity: event_timeline
      source_field: start_date
      required: conditional
      editable: true
      visible_condition: when_event_mode_date_range

    - item_id: end_date
      label_ja: 終了日
      item_type: date
      source_entity: event_timeline
      source_field: end_date
      required: conditional
      editable: true
      visible_condition: when_event_mode_date_range

    - item_id: linked_goal_id
      label_ja: 関連目標
      item_type: single_select
      source_entity: event_timeline
      source_field: linked_goal_id
      required: false
      editable: true
      visible_condition: always

save_actions:
  items:
    - item_id: save_draft
      label_ja: 保存
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: always

    - item_id: save_and_back
      label_ja: 保存して戻る
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: always
