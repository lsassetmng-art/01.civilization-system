# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_goal / life.life_milestone
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life

table_01:
  table: life_goal
  purpose:
    - 人生計画に属する目標を保持する

  primary_key:
    - life_goal_id

  foreign_keys:
    - life_plan_id -> life.life_plan.life_plan_id

  columns:
    - column_name: life_goal_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_plan_id
      type: uuid
      nullable: false
      note: 親計画ID

    - column_name: category
      type: text
      nullable: false
      note: 家族 / 住居 / 学び / 健康 / 老後 等

    - column_name: title
      type: text
      nullable: false
      note: 目標名

    - column_name: description
      type: text
      nullable: true
      note: 目標説明

    - column_name: priority
      type: text
      nullable: false
      note: low / medium / high / critical

    - column_name: goal_status
      type: text
      nullable: false
      note: not_started / planned / in_progress / completed / paused / cancelled

    - column_name: start_target_date
      type: date
      nullable: true
      note: 開始予定日

    - column_name: end_target_date
      type: date
      nullable: true
      note: 終了予定日

    - column_name: estimated_cost_minor
      type: bigint
      nullable: true
      note: 最小通貨単位で保持

    - column_name: currency_code
      type: text
      nullable: true
      note: ISO4217

    - column_name: notes
      type: text
      nullable: true
      note: 備考

    - column_name: created_at
      type: timestamptz
      nullable: false
      note: 作成日時

    - column_name: updated_at
      type: timestamptz
      nullable: false
      note: 更新日時

table_02:
  table: life_milestone
  purpose:
    - 目標に紐づく中間達成点を保持する

  primary_key:
    - life_milestone_id

  foreign_keys:
    - life_goal_id -> life.life_goal.life_goal_id

  columns:
    - column_name: life_milestone_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_goal_id
      type: uuid
      nullable: false
      note: 親目標ID

    - column_name: title
      type: text
      nullable: false
      note: マイルストーン名

    - column_name: target_date
      type: date
      nullable: false
      note: 目標日

    - column_name: milestone_status
      type: text
      nullable: false
      note: goal_statusと同系統を許可

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
