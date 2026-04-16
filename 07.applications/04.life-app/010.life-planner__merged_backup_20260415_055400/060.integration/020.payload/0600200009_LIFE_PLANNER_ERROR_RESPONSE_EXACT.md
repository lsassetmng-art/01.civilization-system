# ============================================================
# LIFE PLANNER ERROR RESPONSE EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

common_error_response:
  status: error
  error:
    code: string
    message: string
    field_errors:
      - field: string
        code: string
        message: string
    retryable: boolean
  meta:
    request_id: string
    server_time: string

error_codes:
  - code: validation_error
    meaning:
      - 入力項目エラー

  - code: not_found
    meaning:
      - 指定対象が存在しない

  - code: forbidden
    meaning:
      - 権限不足

  - code: plan_access_denied
    meaning:
      - 計画へのアクセス権がない

  - code: share_scope_denied
    meaning:
      - 共有範囲外の情報へアクセスした

  - code: family_plan_required
    meaning:
      - Familyプラン専用機能に Free から入った

  - code: reflection_candidate_invalid_state
    meaning:
      - 適用対象候補の状態が不正

  - code: scenario_compare_minimum_not_met
    meaning:
      - 比較対象シナリオ数が不足

field_error_examples:
  - field: plan_name
    code: required
    message: plan_name is required

  - field: end_year
    code: invalid_range
    message: end_year must be greater than or equal to start_year

  - field: currency_code
    code: invalid_currency
    message: currency_code must be ISO4217

  - field: role_type
    code: invalid_enum
    message: role_type must be family_viewer or family_editor

ui_mapping_rules:
  - validation_error は入力欄単位に表示する
  - forbidden と share_scope_denied は画面上部に表示する
  - family_plan_required は pricing_guide へ導線を出す
