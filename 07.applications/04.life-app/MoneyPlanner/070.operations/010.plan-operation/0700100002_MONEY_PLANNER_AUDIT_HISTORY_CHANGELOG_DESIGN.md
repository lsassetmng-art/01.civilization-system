# ============================================================
# MONEY PLANNER AUDIT / HISTORY / CHANGELOG DESIGN
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 070.operations

design_goal:
  - 家族共有時の変更追跡を可能にする
  - 誰が何を変えたかを確認できる
  - 外部共有の記録を保持する
  - 実装はまだ行わない

logical_objects:
  - logical_name: life.mp_audit_event
    purpose:
      - 重要操作監査
    examples:
      - plan_created
      - shared_member_invited
      - shared_member_role_changed
      - linkage_shared
      - scenario_compared

  - logical_name: life.mp_change_log
    purpose:
      - 項目変更履歴
    examples:
      - income amount changed
      - expense category changed
      - asset amount changed
      - goal target changed

  - logical_name: life.mp_history_snapshot
    purpose:
      - 月次/年次の履歴保持
    examples:
      - monthly summary archived
      - yearly review snapshot

minimum_fields:
  audit_event:
    - audit_event_id
    - plan_id
    - actor_user_id
    - event_type
    - target_object_type
    - target_object_id
    - event_payload_summary
    - executed_at

  change_log:
    - change_log_id
    - plan_id
    - actor_user_id
    - target_object_type
    - target_object_id
    - field_name
    - before_value
    - after_value
    - changed_at

  history_snapshot:
    - history_snapshot_id
    - plan_id
    - snapshot_type
    - snapshot_date
    - snapshot_payload
    - created_at

recording_policy:
  - viewer の閲覧は通常 audit 対象外
  - create/update/delete/share/role_change は audit 対象
  - 金額変更は change_log 対象
  - linkage manual share は必ず audit 対象
  - plan review 完了時は history_snapshot 候補

retention_policy_draft:
  - audit_event は長期保持
  - change_log は長期保持
  - history_snapshot は月次/年次運用で保持
