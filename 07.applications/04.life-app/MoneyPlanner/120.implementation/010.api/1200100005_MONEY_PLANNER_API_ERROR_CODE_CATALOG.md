# ============================================================
# MONEY PLANNER API ERROR CODE CATALOG
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

error_contract:
  response_shape:
    success: false
    data: null
    error:
      code: string
      message: string

catalog:
  validation:
    - code: MP-400-001
      meaning: required field missing
    - code: MP-400-002
      meaning: invalid currency_code
    - code: MP-400-003
      meaning: invalid enum value
    - code: MP-400-004
      meaning: invalid date range
    - code: MP-400-005
      meaning: amount must be nonnegative
    - code: MP-400-006
      meaning: target_amount must be positive

  auth:
    - code: MP-401-001
      meaning: authentication required
    - code: MP-401-002
      meaning: token invalid

  permission:
    - code: MP-403-001
      meaning: viewer role cannot update resource
    - code: MP-403-002
      meaning: partner_editor cannot update private resource
    - code: MP-403-003
      meaning: only owner can execute external share
    - code: MP-403-004
      meaning: plan access denied

  not_found:
    - code: MP-404-001
      meaning: plan not found
    - code: MP-404-002
      meaning: income item not found
    - code: MP-404-003
      meaning: expense item not found
    - code: MP-404-004
      meaning: asset item not found
    - code: MP-404-005
      meaning: liability item not found
    - code: MP-404-006
      meaning: saving goal not found
    - code: MP-404-007
      meaning: event budget not found
    - code: MP-404-008
      meaning: scenario not found
    - code: MP-404-009
      meaning: shared member not found
    - code: MP-404-010
      meaning: memo not found

  conflict:
    - code: MP-409-001
      meaning: shared member already exists
    - code: MP-409-002
      meaning: scenario name already exists
    - code: MP-409-003
      meaning: duplicate active plan name in same owner scope

  business_rule:
    - code: MP-422-001
      meaning: free plan cannot use compare api
    - code: MP-422-002
      meaning: free plan cannot use sharing api
    - code: MP-422-003
      meaning: free plan cannot use linkage manual share
    - code: MP-422-004
      meaning: share_scope invalid for target system

  server:
    - code: MP-500-001
      meaning: unexpected server error
    - code: MP-503-001
      meaning: projection service temporarily unavailable

message_policy:
  - UI 表示は message をそのまま使わず翻訳レイヤーで変換可能にする
  - code を正本として扱う
