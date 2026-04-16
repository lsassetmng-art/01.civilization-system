# TALENT GROWTH VALIDATION AND ERROR CODE POLICY FIXED

status: draft-validation-error-policy
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth API の validation policy と error code policy を固定するための資料である。

# 1. 基本原則
- validation error は 400 系で返す
- permission error は 403 を優先する
- not found を権限不足の隠れ蓑に乱用しない
- field path を details に返す
- domain error は code で識別可能にする
- 同一エラーの message は画面依存で揺らさない

# 2. HTTP status mapping
- 400: invalid request / validation failed
- 401: unauthenticated
- 403: forbidden
- 404: not found
- 409: conflict / invalid state transition
- 422: semantic validation failure
- 429: rate limited
- 500: internal error
- 503: dependency unavailable

# 3. error envelope
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_VALIDATION_ERROR",
    "message": "validation failed",
    "details": [
      {
        "field": "actions[0].due_date",
        "reason": "required"
      }
    ]
  },
  "meta": {
    "request_id": "req_01",
    "server_time": "2026-04-12T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 4. error code naming rule
prefix:
- TG_

domains:
- AUTH
- ACCESS
- VALIDATION
- STATE
- NOT_FOUND
- CONFLICT
- DEPENDENCY
- RATE_LIMIT
- INTERNAL
- EXPORT
- AI

examples:
- TG_AUTH_UNAUTHENTICATED
- TG_ACCESS_FORBIDDEN
- TG_VALIDATION_ERROR
- TG_STATE_INVALID_TRANSITION
- TG_NOT_FOUND_EVALUATION_SHEET
- TG_CONFLICT_DUPLICATE_SKILL
- TG_DEPENDENCY_ERP_UNAVAILABLE
- TG_EXPORT_JOB_NOT_READY

# 5. 代表error codes

## auth / access
- TG_AUTH_UNAUTHENTICATED
- TG_AUTH_TOKEN_EXPIRED
- TG_ACCESS_FORBIDDEN
- TG_ACCESS_SCOPE_VIOLATION
- TG_ACCESS_BREAK_GLASS_REQUIRED

## validation
- TG_VALIDATION_ERROR
- TG_VALIDATION_REQUIRED
- TG_VALIDATION_INVALID_ENUM
- TG_VALIDATION_INVALID_DATE_RANGE
- TG_VALIDATION_INVALID_SCORE_RANGE
- TG_VALIDATION_INVALID_CURRENCY
- TG_VALIDATION_INVALID_LANGUAGE
- TG_VALIDATION_UNKNOWN_PARAMETER

## not found
- TG_NOT_FOUND_EMPLOYEE
- TG_NOT_FOUND_EVALUATION_CYCLE
- TG_NOT_FOUND_EVALUATION_SHEET
- TG_NOT_FOUND_GROWTH_PLAN
- TG_NOT_FOUND_SKILL
- TG_NOT_FOUND_CERTIFICATION
- TG_NOT_FOUND_EXPORT_JOB

## state / conflict
- TG_STATE_INVALID_TRANSITION
- TG_STATE_ALREADY_SUBMITTED
- TG_STATE_ALREADY_APPROVED
- TG_STATE_ALREADY_PUBLISHED
- TG_CONFLICT_DUPLICATE_EMPLOYEE_SKILL
- TG_CONFLICT_DUPLICATE_CERTIFICATION
- TG_CONFLICT_LOCK_VERSION_MISMATCH

## dependency
- TG_DEPENDENCY_ERP_UNAVAILABLE
- TG_DEPENDENCY_MBO_UNAVAILABLE
- TG_DEPENDENCY_FILE_STORE_UNAVAILABLE
- TG_DEPENDENCY_AI_UNAVAILABLE

## export / AI
- TG_EXPORT_JOB_NOT_READY
- TG_EXPORT_TOO_LARGE
- TG_AI_ASSIST_DISABLED
- TG_AI_ASSIST_NOT_ALLOWED_FOR_ROLE

# 6. field validation rules

## score fields
- 0 <= score <= 100
- decimal precision fixed by schema
- null allowed only where documented

## level fields
- proficiency_level must be integer
- min/max bound must respect skill master

## date fields
- period_start <= period_end
- expiry_date >= acquired_date when both exist
- renewed_at <= new_expiry_date

## currency fields
- source_amount requires source_currency
- reporting_amount requires reporting_currency
- fx_rate required when source_currency != reporting_currency

## arrays
- array max count is endpoint-specific
- empty array is allowed only where documented
- duplicate ids in same array are rejected

# 7. state validation rules

## self review submit
must fail when:
- required comment missing where configured
- required evidence missing
- sheet status not SELF_REVIEW_DRAFT

## manager review submit
must fail when:
- sheet status not MANAGER_REVIEW_DRAFT or SELF_REVIEW_SUBMITTED compatible entry point
- required manager comment missing where configured
- score inputs out of allowed range

## approve
must fail when:
- sheet not in HR_REVIEW_IN_PROGRESS or CALIBRATION_IN_PROGRESS
- approver role invalid
- required calibration step missing where configured

## reopen
must fail when:
- sheet not PUBLISHED
- reopen reason empty
- actor lacks HR authority

# 8. optimistic locking rule
- mutable write endpoints accept lock_version where applicable
- mismatch returns 409 with TG_CONFLICT_LOCK_VERSION_MISMATCH

# 9. unknown parameter rule
- unknown query parameter returns 422
- code: TG_VALIDATION_UNKNOWN_PARAMETER
- details includes offending parameter name

# 10. pagination validation
- limit has endpoint-specific max
- invalid cursor returns 422
- negative limit is invalid

# 11. error message stance
- message is stable and short
- UI-specific friendly text is frontend側で変換可
- code が最優先の機械判定キー

# 12. 結論
TalentGrowth の validation / error policy は、
HTTP status, domain code, field details の3層で固定する。

特に固定する原則は以下である。
- strict parameter policy
- state transition strictness
- machine-readable error code first
