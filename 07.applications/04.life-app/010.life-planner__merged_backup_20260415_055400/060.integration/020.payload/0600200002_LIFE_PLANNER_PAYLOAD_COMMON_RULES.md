# ============================================================
# LIFE PLANNER PAYLOAD COMMON RULES
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

transport:
  format: json
  encoding: utf-8

naming:
  field_case: snake_case
  operation_id_case: dot_notation
  enum_case: lower_snake_case

common_types:
  id:
    type: string
    format: uuid

  datetime:
    type: string
    format: iso8601_with_timezone

  local_date:
    type: string
    format: yyyy-mm-dd

  amount_minor:
    type: integer
    meaning:
      - 通貨最小単位で保持する
      - JPYなら1円単位
      - USDなら1セント単位

  currency_code:
    type: string
    format: iso4217

  boolean_flag:
    type: boolean

common_response_envelope:
  success:
    status: ok
    data: {}
    meta:
      request_id: string
      server_time: string

  error:
    status: error
    error:
      code: string
      message: string
      field_errors: []
      retryable: false
    meta:
      request_id: string
      server_time: string

common_meta_fields:
  - request_id
  - server_time

common_audit_fields:
  - created_at
  - updated_at

common_role_enum:
  - owner
  - family_viewer
  - family_editor

common_goal_status_enum:
  - not_started
  - planned
  - in_progress
  - completed
  - paused
  - cancelled

common_priority_enum:
  - low
  - medium
  - high
  - critical

common_reflection_status_enum:
  - pending
  - applied
  - dismissed

common_scenario_decision_enum:
  - keep_note_only
  - adopt_to_plan
  - archive_only

money_rule:
  - 金額は amount_minor と currency_code を必須セットで扱う
  - 表示用フォーマット済み金額文字列は response の derived フィールドにのみ置く
  - request では formatted text を受けない

date_rule:
  - event_date は単日
  - start_date / end_date は期間
  - timeline event はどちらか一方の表現に統一する

null_policy:
  - 未設定は null を許可
  - 空文字での未設定表現は使わない
