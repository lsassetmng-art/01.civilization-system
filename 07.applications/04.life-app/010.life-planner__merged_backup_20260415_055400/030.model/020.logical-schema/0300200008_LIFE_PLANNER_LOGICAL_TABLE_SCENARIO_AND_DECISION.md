# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_scenario / life.life_scenario_decision
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life

table_01:
  table: life_scenario
  purpose:
    - 比較用シナリオ本体を保持する

  primary_key:
    - life_scenario_id

  foreign_keys:
    - life_plan_id -> life.life_plan.life_plan_id

  columns:
    - column_name: life_scenario_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_plan_id
      type: uuid
      nullable: false
      note: 親計画ID

    - column_name: scenario_name
      type: text
      nullable: false
      note: シナリオ名

    - column_name: assumption_summary
      type: text
      nullable: false
      note: 前提条件要約

    - column_name: cost_summary_minor
      type: bigint
      nullable: true
      note: 概算費用

    - column_name: currency_code
      type: text
      nullable: true
      note: ISO4217

    - column_name: risk_summary
      type: text
      nullable: true
      note: リスク要約

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

table_02:
  table: life_scenario_decision
  purpose:
    - シナリオ比較後の採用判断を保持する

  primary_key:
    - life_scenario_decision_id

  foreign_keys:
    - life_plan_id -> life.life_plan.life_plan_id
    - selected_life_scenario_id -> life.life_scenario.life_scenario_id (nullable)

  columns:
    - column_name: life_scenario_decision_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_plan_id
      type: uuid
      nullable: false
      note: 親計画ID

    - column_name: selected_life_scenario_id
      type: uuid
      nullable: true
      note: 採用シナリオID

    - column_name: decision
      type: text
      nullable: false
      note: keep_note_only / adopt_to_plan / archive_only

    - column_name: decision_note
      type: text
      nullable: true
      note: 判断メモ

    - column_name: decided_at
      type: timestamptz
      nullable: false
      note: 判断日時
