# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER SCREEN ITEM COMMON RULES
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 020.screen-item
owner: Boss
prepared_by: Zero
persistence_schema: life

screen_item_rules:
  - 表示項目と入力項目を分けて定義する
  - 必須項目は required: true で明示する
  - 保存値と表示整形値を混ぜない
  - 金額は amount_minor + currency_code を正とする
  - 日付は ISO-8601 または local_date を正とする
  - センシティブ情報は share_scope に従って表示制御する

item_definition_format:
  - item_id
  - label_ja
  - item_type
  - source_entity
  - source_field
  - required
  - editable
  - visible_condition
  - note

item_type_enum:
  - text
  - textarea
  - number
  - currency
  - single_select
  - multi_select
  - date
  - date_range
  - badge
  - card
  - list
  - timeline
  - summary
  - button
  - toggle

edit_rule:
  owner:
    - すべての編集項目を操作可能
  family_editor:
    - share_scope内の一部項目のみ編集可能
  family_viewer:
    - 編集不可

schema_binding_note:
  - source_entity は life schema 上の論理エンティティを指す
  - 例: life_plan, life_goal, event_timeline, review_log, shared_member, scenario
