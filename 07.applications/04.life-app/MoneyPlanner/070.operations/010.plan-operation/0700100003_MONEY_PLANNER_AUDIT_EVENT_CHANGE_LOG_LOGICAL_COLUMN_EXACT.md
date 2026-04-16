# ============================================================
# MONEY PLANNER AUDIT EVENT / CHANGE LOG LOGICAL COLUMN EXACT
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 070.operations
schema_name: life

logical_tables:

  life.mp_audit_event:
    purpose:
      - 重要操作監査
    columns:
      - column_name: audit_event_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: actor_user_id
        logical_type: uuid
        nullable: false
      - column_name: actor_role
        logical_type: enum[owner,partner_editor,viewer,system]
        nullable: false
      - column_name: event_type
        logical_type: enum[
          plan_created,
          plan_updated,
          income_created,
          income_updated,
          expense_created,
          expense_updated,
          asset_created,
          asset_updated,
          liability_created,
          liability_updated,
          saving_goal_created,
          saving_goal_updated,
          event_budget_created,
          event_budget_updated,
          scenario_created,
          scenario_compared,
          shared_member_invited,
          shared_member_role_changed,
          shared_member_removed,
          receive_candidate_imported,
          receive_candidate_reviewed,
          receive_candidate_confirmed,
          linkage_shared
        ]
        nullable: false
      - column_name: target_object_type
        logical_type: string(100)
        nullable: false
      - column_name: target_object_id
        logical_type: uuid_or_string
        nullable: true
      - column_name: event_payload_summary
        logical_type: json_like_object
        nullable: false
      - column_name: source_system
        logical_type: enum[money_planner,life_planner,end_of_life_planner,inheritance_support]
        nullable: false
      - column_name: executed_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false

  life.mp_change_log:
    purpose:
      - 項目変更履歴
    columns:
      - column_name: change_log_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: actor_user_id
        logical_type: uuid
        nullable: false
      - column_name: target_object_type
        logical_type: string(100)
        nullable: false
      - column_name: target_object_id
        logical_type: uuid_or_string
        nullable: false
      - column_name: field_name
        logical_type: string(100)
        nullable: false
      - column_name: before_value
        logical_type: string_or_json
        nullable: true
      - column_name: after_value
        logical_type: string_or_json
        nullable: true
      - column_name: change_reason
        logical_type: text
        nullable: true
      - column_name: changed_at
        logical_type: iso8601_timestamp
        nullable: false
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false

  life.mp_history_snapshot:
    purpose:
      - 月次/年次の履歴スナップショット
    columns:
      - column_name: history_snapshot_id
        logical_type: uuid
        nullable: false
      - column_name: plan_id
        logical_type: uuid
        nullable: false
      - column_name: snapshot_type
        logical_type: enum[monthly,yearly,review_checkpoint]
        nullable: false
      - column_name: snapshot_date
        logical_type: yyyy-mm-dd
        nullable: false
      - column_name: snapshot_payload
        logical_type: json_like_object
        nullable: false
      - column_name: created_by_user_id
        logical_type: uuid
        nullable: true
      - column_name: created_at
        logical_type: iso8601_timestamp
        nullable: false

recording_policy:
  audit_event:
    record_when:
      - create
      - update
      - delete(logical)
      - share
      - role_change
      - candidate_import
      - candidate_review
      - candidate_confirm
      - compare_execution
  change_log:
    record_when:
      - 金額変更
      - visibility 変更
      - status 変更
      - date 変更
      - title/name 変更
  history_snapshot:
    record_when:
      - monthly review 完了
      - yearly review 完了
      - owner checkpoint 保存
