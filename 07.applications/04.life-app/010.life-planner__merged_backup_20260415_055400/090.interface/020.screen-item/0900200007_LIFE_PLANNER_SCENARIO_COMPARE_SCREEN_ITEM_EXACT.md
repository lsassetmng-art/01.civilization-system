# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER SCENARIO COMPARE SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: scenario_compare
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 将来シナリオを比較し、計画採用判断を支援する

scenario_list_section:
  items:
    - item_id: scenario_name
      label_ja: シナリオ名
      item_type: text
      source_entity: scenario
      source_field: scenario_name
      required: true
      editable: true
      visible_condition: family_plan_only

    - item_id: assumption_summary
      label_ja: 前提条件
      item_type: textarea
      source_entity: scenario
      source_field: assumption_summary
      required: true
      editable: true
      visible_condition: family_plan_only

    - item_id: cost_summary_minor
      label_ja: 概算費用
      item_type: currency
      source_entity: scenario
      source_field: cost_summary_minor
      required: false
      editable: true
      visible_condition: family_plan_only

    - item_id: currency_code
      label_ja: 通貨コード
      item_type: single_select
      source_entity: scenario
      source_field: currency_code
      required: false
      editable: true
      visible_condition: when_cost_exists

    - item_id: risk_summary
      label_ja: リスク要約
      item_type: textarea
      source_entity: scenario
      source_field: risk_summary
      required: false
      editable: true
      visible_condition: family_plan_only

compare_result_section:
  items:
    - item_id: compare_target_ids
      label_ja: 比較対象
      item_type: list
      source_entity: scenario
      source_field: derived.compare_target_ids
      required: false
      editable: false
      visible_condition: when_compare_run

    - item_id: compare_cost_table
      label_ja: 費用比較
      item_type: list
      source_entity: scenario
      source_field: derived.cost_compare_table
      required: false
      editable: false
      visible_condition: when_compare_run

    - item_id: compare_risk_table
      label_ja: リスク比較
      item_type: list
      source_entity: scenario
      source_field: derived.risk_compare_table
      required: false
      editable: false
      visible_condition: when_compare_run

decision_section:
  items:
    - item_id: decision
      label_ja: 判断
      item_type: single_select
      source_entity: scenario_decision
      source_field: decision
      required: true
      editable: true
      visible_condition: family_plan_only

    - item_id: selected_scenario_id
      label_ja: 採用シナリオ
      item_type: single_select
      source_entity: scenario_decision
      source_field: selected_scenario_id
      required: conditional
      editable: true
      visible_condition: when_decision_adopt_to_plan

    - item_id: decision_note
      label_ja: 判断メモ
      item_type: textarea
      source_entity: scenario_decision
      source_field: decision_note
      required: false
      editable: true
      visible_condition: family_plan_only
