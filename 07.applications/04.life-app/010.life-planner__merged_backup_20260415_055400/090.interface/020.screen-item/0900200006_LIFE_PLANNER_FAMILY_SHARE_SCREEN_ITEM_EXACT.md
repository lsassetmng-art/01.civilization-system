# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER FAMILY SHARE SCREEN ITEM EXACT
# ============================================================

status: draft
system: LifePlanner
screen: family_share_setting
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_purpose:
  - 家族共有相手、権限、共有範囲を exact に管理する

shared_member_list:
  items:
    - item_id: member_user_id
      label_ja: 共有相手ID
      item_type: text
      source_entity: shared_member
      source_field: member_user_id
      required: true
      editable: false
      visible_condition: owner_only

    - item_id: role_type
      label_ja: 権限
      item_type: single_select
      source_entity: shared_member
      source_field: role_type
      required: true
      editable: true
      visible_condition: owner_only

    - item_id: invite_status
      label_ja: 招待状態
      item_type: badge
      source_entity: shared_member
      source_field: invite_status
      required: true
      editable: false
      visible_condition: always

    - item_id: invited_at
      label_ja: 招待日時
      item_type: date
      source_entity: shared_member
      source_field: invited_at
      required: false
      editable: false
      visible_condition: always

scope_editor:
  items:
    - item_id: share_categories
      label_ja: 共有カテゴリ
      item_type: multi_select
      source_entity: shared_member
      source_field: share_scope.categories
      required: true
      editable: true
      visible_condition: owner_only

    - item_id: allow_health
      label_ja: 健康情報共有
      item_type: toggle
      source_entity: shared_member
      source_field: share_scope.allow_health
      required: true
      editable: true
      visible_condition: owner_only

    - item_id: allow_end_of_life
      label_ja: 終活情報共有
      item_type: toggle
      source_entity: shared_member
      source_field: share_scope.allow_end_of_life
      required: true
      editable: true
      visible_condition: owner_only

    - item_id: allow_legal_memo
      label_ja: 法務メモ共有
      item_type: toggle
      source_entity: shared_member
      source_field: share_scope.allow_legal_memo
      required: true
      editable: true
      visible_condition: owner_only

    - item_id: allow_asset_summary
      label_ja: 資産要約共有
      item_type: toggle
      source_entity: shared_member
      source_field: share_scope.allow_asset_summary
      required: true
      editable: true
      visible_condition: owner_only

actions:
  items:
    - item_id: invite_member
      label_ja: メンバー招待
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: owner_only

    - item_id: update_scope
      label_ja: 共有範囲更新
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: owner_only

    - item_id: open_pricing_guide
      label_ja: Familyプラン案内
      item_type: button
      source_entity: none
      source_field: none
      required: false
      editable: false
      visible_condition: when_free_plan
