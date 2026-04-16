# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER REFLECTION CANDIDATE SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: reflection_candidate_view
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 他アプリから受けた見直し候補の確認と採用判断

candidate_list_section:
  items:
    - item_id: candidate_id
      label_ja: 候補ID
      item_type: text
      source_entity: reflection_candidate
      source_field: candidate_id
      required: true
      editable: false
      visible_condition: owner_only

    - item_id: source_app
      label_ja: 発生元アプリ
      item_type: badge
      source_entity: reflection_candidate
      source_field: source_app
      required: true
      editable: false
      visible_condition: always

    - item_id: summary
      label_ja: 候補要約
      item_type: textarea
      source_entity: reflection_candidate
      source_field: summary
      required: true
      editable: false
      visible_condition: always

    - item_id: status
      label_ja: 状態
      item_type: badge
      source_entity: reflection_candidate
      source_field: status
      required: true
      editable: false
      visible_condition: always

    - item_id: affected_entity_type
      label_ja: 影響対象種別
      item_type: text
      source_entity: reflection_candidate
      source_field: affected_entity_type
      required: false
      editable: false
      visible_condition: when_exists

    - item_id: affected_entity_id
      label_ja: 影響対象ID
      item_type: text
      source_entity: reflection_candidate
      source_field: affected_entity_id
      required: false
      editable: false
      visible_condition: owner_only_and_when_exists

decision_section:
  items:
    - item_id: apply_target_type
      label_ja: 反映先種別
      item_type: single_select
      source_entity: reflection_apply_action
      source_field: apply_target_type
      required: true
      editable: true
      visible_condition: when_status_pending

    - item_id: apply_target_id
      label_ja: 反映先ID
      item_type: single_select
      source_entity: reflection_apply_action
      source_field: apply_target_id
      required: false
      editable: true
      visible_condition: when_status_pending

    - item_id: review_reason
      label_ja: 見直し理由
      item_type: textarea
      source_entity: review_log
      source_field: reason
      required: true
      editable: true
      visible_condition: when_apply

    - item_id: dismiss_reason
      label_ja: 却下理由
      item_type: textarea
      source_entity: reflection_candidate
      source_field: dismiss_reason
      required: true
      editable: true
      visible_condition: when_dismiss

actions:
  items:
    - item_id: apply_candidate
      label_ja: 候補を採用
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: owner_only_and_when_status_pending

    - item_id: dismiss_candidate
      label_ja: 候補を却下
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: owner_only_and_when_status_pending
