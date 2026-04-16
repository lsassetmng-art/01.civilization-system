# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER PLAN DETAIL SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: life_plan_detail
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 1つの人生計画表の中心ハブ
  - 目標、年表、費用、見直し、共有への入口

sections:

  plan_basic_summary:
    items:
      - item_id: plan_name
        label_ja: 計画名
        item_type: text
        source_entity: life_plan
        source_field: plan_name
        required: true
        editable: true
        visible_condition: always
        note: ownerのみ編集可

      - item_id: plan_period
        label_ja: 計画期間
        item_type: text
        source_entity: life_plan
        source_field: derived.start_year_to_end_year
        required: false
        editable: false
        visible_condition: always

      - item_id: plan_summary
        label_ja: 概要
        item_type: textarea
        source_entity: life_plan
        source_field: summary
        required: false
        editable: true
        visible_condition: always

      - item_id: visibility_policy
        label_ja: 公開範囲
        item_type: badge
        source_entity: life_plan
        source_field: visibility_policy
        required: true
        editable: true
        visible_condition: always

  goal_summary_section:
    items:
      - item_id: goal_total_count
        label_ja: 目標総数
        item_type: number
        source_entity: life_goal
        source_field: derived.total_count
        required: false
        editable: false
        visible_condition: always

      - item_id: goal_completed_count
        label_ja: 完了目標数
        item_type: number
        source_entity: life_goal
        source_field: derived.completed_count
        required: false
        editable: false
        visible_condition: always

      - item_id: goal_priority_top_items
        label_ja: 優先度高の目標
        item_type: list
        source_entity: life_goal
        source_field: derived.top_priority_goals
        required: false
        editable: false
        visible_condition: when_exists

  event_summary_section:
    items:
      - item_id: next_event_title
        label_ja: 次のイベント
        item_type: text
        source_entity: event_timeline
        source_field: derived.next_event_title
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: next_event_date
        label_ja: 次のイベント日
        item_type: date
        source_entity: event_timeline
        source_field: derived.next_event_date
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: event_count_total
        label_ja: イベント件数
        item_type: number
        source_entity: event_timeline
        source_field: derived.total_count
        required: false
        editable: false
        visible_condition: always

  cost_summary_section:
    items:
      - item_id: estimated_cost_total_minor
        label_ja: 関連費用合計
        item_type: currency
        source_entity: cost_estimate
        source_field: derived.total_amount_minor
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: estimated_cost_currency_code
        label_ja: 通貨
        item_type: text
        source_entity: cost_estimate
        source_field: derived.currency_code
        required: false
        editable: false
        visible_condition: when_exists

      - item_id: estimated_cost_display
        label_ja: 表示用費用
        item_type: text
        source_entity: cost_estimate
        source_field: derived.formatted_total
        required: false
        editable: false
        visible_condition: when_exists

  review_summary_section:
    items:
      - item_id: review_count
        label_ja: 見直し回数
        item_type: number
        source_entity: review_log
        source_field: derived.review_count
        required: false
        editable: false
        visible_condition: always

      - item_id: last_review_reason
        label_ja: 最終見直し理由
        item_type: text
        source_entity: review_log
        source_field: derived.last_reason
        required: false
        editable: false
        visible_condition: when_exists

  navigation_actions:
    items:
      - item_id: open_timeline_view
        label_ja: 年表を見る
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_goal_list
        label_ja: 目標一覧を見る
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_review_log_view
        label_ja: 見直し履歴を見る
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_family_share_setting
        label_ja: 家族共有設定
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: always

      - item_id: open_scenario_compare
        label_ja: シナリオ比較
        item_type: button
        source_entity: none
        source_field: none
        required: false
        editable: false
        visible_condition: family_plan_only
