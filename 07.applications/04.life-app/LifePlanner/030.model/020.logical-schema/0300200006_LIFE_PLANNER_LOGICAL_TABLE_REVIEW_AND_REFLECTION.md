# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_review_log / life.life_reflection_candidate
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life

table_01:
  table: life_review_log
  purpose:
    - 計画見直し履歴を保持する

  primary_key:
    - life_review_log_id

  foreign_keys:
    - life_plan_id -> life.life_plan.life_plan_id

  columns:
    - column_name: life_review_log_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_plan_id
      type: uuid
      nullable: false
      note: 親計画ID

    - column_name: trigger_source
      type: text
      nullable: false
      note: manual / money_planner / end_of_life_planner / body_metrics / training_coach / legal_support_app

    - column_name: change_summary
      type: text
      nullable: false
      note: 変更要約

    - column_name: reason
      type: text
      nullable: false
      note: 見直し理由

    - column_name: reviewer_role
      type: text
      nullable: false
      note: owner / family_editor

    - column_name: reviewed_at
      type: timestamptz
      nullable: false
      note: 見直し日時

table_02:
  table: life_reflection_candidate
  purpose:
    - 他アプリから受けた見直し候補を保持する

  primary_key:
    - life_reflection_candidate_id

  foreign_keys:
    - life_plan_id -> life.life_plan.life_plan_id

  columns:
    - column_name: life_reflection_candidate_id
      type: uuid
      nullable: false
      note: primary key

    - column_name: life_plan_id
      type: uuid
      nullable: false
      note: 親計画ID

    - column_name: source_app
      type: text
      nullable: false
      note: 発生元アプリ

    - column_name: source_record_id
      type: text
      nullable: false
      note: 発生元レコード識別子

    - column_name: summary
      type: text
      nullable: false
      note: 候補要約

    - column_name: suggested_action
      type: text
      nullable: true
      note: 推奨操作

    - column_name: affected_entity_type
      type: text
      nullable: true
      note: plan / goal / timeline_event

    - column_name: affected_entity_id
      type: uuid
      nullable: true
      note: 影響先ID

    - column_name: reflection_status
      type: text
      nullable: false
      note: pending / applied / dismissed

    - column_name: dismiss_reason
      type: text
      nullable: true
      note: 却下理由

    - column_name: applied_at
      type: timestamptz
      nullable: true
      note: 採用日時

    - column_name: dismissed_at
      type: timestamptz
      nullable: true
      note: 却下日時

    - column_name: created_at
      type: timestamptz
      nullable: false
      note: 作成日時

    - column_name: updated_at
      type: timestamptz
      nullable: false
      note: 更新日時
