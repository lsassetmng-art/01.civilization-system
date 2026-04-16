# ============================================================
# TRAINING COACH EMPTY / ERROR RESPONSE CONTRACT
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

response_policy:
  - success / empty / error を明示的に分ける
  - empty は正常系とする
  - error は必ず code / message_key / retryable を返す
  - 内部例外スタックは返さない

common_response_shapes:

success_response:
  fields:
    result: success
    payload_major_version: integer
    payload_minor_version: integer
    data: object

empty_response:
  fields:
    result: empty
    payload_major_version: integer
    payload_minor_version: integer
    empty_reason_code: string
    message_key: string
    data:
      type: object
      description: 画面初期表示で必要な空配列や既定値を返す

error_response:
  fields:
    result: error
    payload_major_version: integer
    payload_minor_version: integer
    error:
      code: string
      message_key: string
      retryable: boolean
      field_name: string|null
      safe_user_action_code: string|null

screen_contracts:

dashboard:
  empty_reason_codes:
    - TC-EMPTY-DASH-0001:no_sessions_for_date
  error_codes:
    - TC-AUTH-0001
    - TC-SYS-0003

today_plan:
  empty_reason_codes:
    - TC-EMPTY-PLAN-0001:no_plan_for_date
  error_codes:
    - TC-AUTH-0001
    - TC-DATA-0001
    - TC-SYS-0003

plan_editor_save:
  empty_reason_codes: []
  error_codes:
    - TC-VAL-0001
    - TC-VAL-0002
    - TC-VAL-0004
    - TC-AUTH-0004
    - TC-SYS-0002

session_start:
  empty_reason_codes: []
  error_codes:
    - TC-DATA-0002
    - TC-DATA-0003
    - TC-SAFE-0001
    - TC-SAFE-0002
    - TC-SYS-0002

session_complete:
  empty_reason_codes: []
  error_codes:
    - TC-DATA-0002
    - TC-DATA-0003
    - TC-VAL-0004
    - TC-SYS-0002

guide_viewer:
  empty_reason_codes:
    - TC-EMPTY-GUIDE-0001:no_guide_content
  error_codes:
    - TC-DATA-0001
    - TC-SYS-0003

premium_upgrade:
  empty_reason_codes: []
  error_codes:
    - TC-VAL-0005
    - TC-SYS-0003

safe_user_action_codes:
  - retry
  - refresh
  - go_back
  - open_settings
  - rest_today
  - contact_support_ai
