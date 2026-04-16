# ============================================================
# LIFE PLANNER LOGICAL TABLE
# life.life_shared_member
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life
table: life_shared_member

table_purpose:
  - 計画の共有メンバー、権限、共有範囲を保持する

primary_key:
  - life_shared_member_id

foreign_keys:
  - life_plan_id -> life.life_plan.life_plan_id

columns:
  - column_name: life_shared_member_id
    type: uuid
    nullable: false
    note: primary key

  - column_name: life_plan_id
    type: uuid
    nullable: false
    note: 親計画ID

  - column_name: member_user_id
    type: uuid
    nullable: false
    note: 共有相手ユーザーID

  - column_name: role_type
    type: text
    nullable: false
    note: family_viewer / family_editor

  - column_name: share_categories_json
    type: jsonb
    nullable: false
    note: 共有カテゴリ配列

  - column_name: allow_health
    type: boolean
    nullable: false
    note: 健康情報共有可否

  - column_name: allow_end_of_life
    type: boolean
    nullable: false
    note: 終活情報共有可否

  - column_name: allow_legal_memo
    type: boolean
    nullable: false
    note: 法務メモ共有可否

  - column_name: allow_asset_summary
    type: boolean
    nullable: false
    note: 資産要約共有可否

  - column_name: invite_status
    type: text
    nullable: false
    note: pending / accepted / declined

  - column_name: invited_at
    type: timestamptz
    nullable: false
    note: 招待日時

  - column_name: accepted_at
    type: timestamptz
    nullable: true
    note: 承諾日時

  - column_name: updated_at
    type: timestamptz
    nullable: false
    note: 更新日時

logical_constraints:
  - role_type は family_viewer / family_editor のみ
  - member_user_id は owner_user_id と同一不可
