# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_event_timeline
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life
table: life_event_timeline

table_purpose:
  - 人生年表上のイベントを保持する
  - 単日または期間イベントを共通表現で扱う

primary_key:
  - life_event_timeline_id

foreign_keys:
  - life_plan_id -> life.life_plan.life_plan_id
  - linked_life_goal_id -> life.life_goal.life_goal_id (nullable)

columns:
  - column_name: life_event_timeline_id
    type: uuid
    nullable: false
    note: primary key

  - column_name: life_plan_id
    type: uuid
    nullable: false
    note: 親計画ID

  - column_name: event_category
    type: text
    nullable: false
    note: イベントカテゴリ

  - column_name: title
    type: text
    nullable: false
    note: イベント名

  - column_name: event_mode
    type: text
    nullable: false
    note: single_date / date_range

  - column_name: event_date
    type: date
    nullable: true
    note: event_mode=single_date の場合に使用

  - column_name: start_date
    type: date
    nullable: true
    note: event_mode=date_range の場合に使用

  - column_name: end_date
    type: date
    nullable: true
    note: event_mode=date_range の場合に使用

  - column_name: linked_life_goal_id
    type: uuid
    nullable: true
    note: 関連目標

  - column_name: estimated_cost_minor
    type: bigint
    nullable: true
    note: 概算費用

  - column_name: currency_code
    type: text
    nullable: true
    note: ISO4217

  - column_name: note
    type: text
    nullable: true
    note: 補足

  - column_name: created_at
    type: timestamptz
    nullable: false
    note: 作成日時

  - column_name: updated_at
    type: timestamptz
    nullable: false
    note: 更新日時

logical_constraints:
  - event_mode=single_date のとき event_date 必須
  - event_mode=date_range のとき start_date / end_date 必須
  - end_date >= start_date
