# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_plan
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life
table: life_plan

table_purpose:
  - 人生計画表の親テーブル
  - 1件の人生計画の基本情報を保持する

primary_key:
  - life_plan_id

columns:
  - column_name: life_plan_id
    type: uuid
    nullable: false
    note: primary key

  - column_name: owner_user_id
    type: uuid
    nullable: false
    note: 計画の所有者

  - column_name: plan_name
    type: text
    nullable: false
    note: 計画名

  - column_name: start_year
    type: integer
    nullable: false
    note: 計画開始年

  - column_name: end_year
    type: integer
    nullable: false
    note: 計画終了年

  - column_name: summary
    type: text
    nullable: true
    note: 概要

  - column_name: visibility_policy
    type: text
    nullable: false
    note: private / family_shared

  - column_name: plan_status
    type: text
    nullable: false
    note: draft / active / archived

  - column_name: created_at
    type: timestamptz
    nullable: false
    note: 作成日時

  - column_name: updated_at
    type: timestamptz
    nullable: false
    note: 更新日時

logical_constraints:
  - end_year >= start_year
  - visibility_policy は定義済み enum のみ
  - plan_status は定義済み enum のみ

related_tables:
  - life.life_goal
  - life.life_event_timeline
  - life.life_review_log
  - life.life_reflection_candidate
  - life.life_shared_member
  - life.life_scenario
  - life.life_scenario_decision
