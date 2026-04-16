# TALENT GROWTH EXACT VALIDATION MATRIX PER ENDPOINT FIXED

status: draft-validation-matrix-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要 endpoint ごとに、
required field,
enum,
range,
state precondition,
permission precondition,
error code を固定するための資料である。

# 1. matrix columns
- endpoint
- field
- required
- type
- validation
- precondition
- error_code

# 2. employee profile

## PATCH /api/v1/employees/{employee_id}
- field: display_name
  required: no
  type: string
  validation: max 100 chars
  precondition: self or HR scope
  error_code: TG_VALIDATION_ERROR

- field: email
  required: no
  type: string
  validation: valid email format
  precondition: self or HR scope
  error_code: TG_VALIDATION_ERROR

- field: phone
  required: no
  type: string
  validation: max 30 chars
  precondition: self or HR scope
  error_code: TG_VALIDATION_ERROR

- field: career_preference_text
  required: no
  type: string
  validation: max 2000 chars
  precondition: self or HR scope
  error_code: TG_VALIDATION_ERROR

# 3. academics

## POST /api/v1/employees/{employee_id}/academics
- field: school_name
  required: yes
  type: string
  validation: 1..200 chars
  precondition: self or HR scope
  error_code: TG_VALIDATION_REQUIRED

- field: degree_code
  required: no
  type: enum
  validation: allowlist enum
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

- field: graduation_date
  required: no
  type: date
  validation: valid date
  precondition: none
  error_code: TG_VALIDATION_ERROR

# 4. certifications

## POST /api/v1/employee-certifications
- field: employee_id
  required: yes
  type: id
  validation: target must be accessible
  precondition: self own or HR scope
  error_code: TG_ACCESS_SCOPE_VIOLATION

- field: certification_id
  required: yes
  type: id
  validation: must exist in certification master
  precondition: none
  error_code: TG_NOT_FOUND_CERTIFICATION

- field: acquired_date
  required: no
  type: date
  validation: valid date
  precondition: none
  error_code: TG_VALIDATION_ERROR

- field: expiry_date
  required: no
  type: date
  validation: expiry_date >= acquired_date when both present
  precondition: none
  error_code: TG_VALIDATION_INVALID_DATE_RANGE

- field: evidence_file_id
  required: no
  type: id
  validation: file must exist and be accessible
  precondition: none
  error_code: TG_DEPENDENCY_FILE_STORE_UNAVAILABLE or TG_VALIDATION_ERROR

## POST /api/v1/employee-certifications/{employee_certification_id}/renewal
- field: renewed_at
  required: yes
  type: date
  validation: valid date
  precondition: certification accessible
  error_code: TG_VALIDATION_REQUIRED

- field: new_expiry_date
  required: yes
  type: date
  validation: new_expiry_date >= renewed_at
  precondition: none
  error_code: TG_VALIDATION_INVALID_DATE_RANGE

- field: renewal_cost.source_amount
  required: no
  type: decimal
  validation: >= 0
  precondition: if source_currency provided
  error_code: TG_VALIDATION_ERROR

- field: renewal_cost.source_currency
  required: conditional
  type: currency
  validation: ISO-like allowlist
  precondition: if source_amount provided
  error_code: TG_VALIDATION_INVALID_CURRENCY

# 5. skills

## POST /api/v1/employee-skills
- field: employee_id
  required: yes
  type: id
  validation: accessible employee
  precondition: self own or HR scope
  error_code: TG_ACCESS_SCOPE_VIOLATION

- field: skill_id
  required: yes
  type: id
  validation: must exist
  precondition: none
  error_code: TG_NOT_FOUND_SKILL

- field: proficiency_level
  required: yes
  type: integer
  validation: within skill master min/max
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

## PATCH /api/v1/employee-skills/{employee_skill_id}
- field: self_rating
  required: no
  type: decimal
  validation: 0..100 or configured scale
  precondition: self edit scope
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: manager_rating
  required: no
  type: decimal
  validation: 0..100 or configured scale
  precondition: manager/team or HR
  error_code: TG_ACCESS_FORBIDDEN or TG_VALIDATION_INVALID_SCORE_RANGE

- field: employee_comment
  required: no
  type: string
  validation: max 4000 chars
  precondition: self edit scope
  error_code: TG_VALIDATION_ERROR

## POST /api/v1/employee-skills/{employee_skill_id}/evidences
- field: evidence_type_code
  required: yes
  type: enum
  validation: allowlist enum
  precondition: skill accessible
  error_code: TG_VALIDATION_INVALID_ENUM

- field: evidence_title
  required: yes
  type: string
  validation: 1..200 chars
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

- field: confidence_score
  required: no
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

# 6. self review

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- field: employee_id
  required: yes
  type: id
  validation: must equal auth employee unless HR proxy flow
  precondition: self own sheet
  error_code: TG_ACCESS_SCOPE_VIOLATION

- field: self_review_comment
  required: conditional
  type: string
  validation: max 5000 chars
  precondition: sheet editable by employee
  error_code: TG_STATE_INVALID_TRANSITION or TG_VALIDATION_ERROR

- field: skill_items[].employee_skill_id
  required: yes
  type: id
  validation: must belong to employee
  precondition: sheet editable by employee
  error_code: TG_VALIDATION_ERROR

- field: skill_items[].proficiency_level
  required: conditional
  type: integer
  validation: valid level range
  precondition: sheet editable by employee
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: skill_items[].evidence_ids
  required: conditional
  type: array
  validation: no duplicates, max endpoint limit
  precondition: sheet editable by employee
  error_code: TG_VALIDATION_ERROR

- field: achievement_items[].employee_achievement_id
  required: no
  type: id
  validation: must belong to employee
  precondition: none
  error_code: TG_VALIDATION_ERROR

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
- field: employee_id
  required: yes
  type: id
  validation: must equal auth employee
  precondition: status must be SELF_REVIEW_DRAFT
  error_code: TG_STATE_INVALID_TRANSITION

- field: final_self_review_comment
  required: conditional
  type: string
  validation: max 5000 chars
  precondition: configured mandatory rule if any
  error_code: TG_VALIDATION_REQUIRED

- field: submit_confirmed
  required: yes
  type: boolean
  validation: must be true
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

# 7. manager review

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- field: manager_employee_id
  required: yes
  type: id
  validation: must equal auth employee in manager role
  precondition: manager has team scope
  error_code: TG_ACCESS_FORBIDDEN

- field: manager_review_comment
  required: conditional
  type: string
  validation: max 5000 chars
  precondition: sheet reviewable by manager
  error_code: TG_STATE_INVALID_TRANSITION

- field: score_inputs.behavior_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: sheet reviewable by manager
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: score_inputs.performance_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: sheet reviewable by manager
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: score_inputs.current_role_fit_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: sheet reviewable by manager
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: score_inputs.target_role_fit_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: sheet reviewable by manager
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: score_inputs.growth_potential_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: sheet reviewable by manager
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: competency_items[].manager_rating
  required: yes
  type: integer
  validation: configured level range
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- field: manager_employee_id
  required: yes
  type: id
  validation: must equal auth employee in manager role
  precondition: status compatible with manager submit
  error_code: TG_STATE_INVALID_TRANSITION

- field: submit_confirmed
  required: yes
  type: boolean
  validation: must be true
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

# 8. send back

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
- field: target_role_code
  required: yes
  type: enum
  validation: EMPLOYEE or MANAGER or allowed role
  precondition: actor is manager or HR
  error_code: TG_VALIDATION_INVALID_ENUM

- field: send_back_reason
  required: yes
  type: string
  validation: 1..2000 chars
  precondition: sheet in returnable state
  error_code: TG_STATE_INVALID_TRANSITION or TG_VALIDATION_REQUIRED

# 9. role requirement

## POST /api/v1/role-requirements
- field: job_role_id
  required: yes
  type: id
  validation: must exist
  precondition: HR only
  error_code: TG_NOT_FOUND_ROLE or TG_ACCESS_FORBIDDEN

- field: requirement_version
  required: yes
  type: string
  validation: 1..50 chars
  precondition: HR only
  error_code: TG_VALIDATION_REQUIRED

- field: effective_from
  required: yes
  type: date
  validation: valid date
  precondition: HR only
  error_code: TG_VALIDATION_REQUIRED

- field: effective_to
  required: no
  type: date
  validation: effective_to >= effective_from
  precondition: none
  error_code: TG_VALIDATION_INVALID_DATE_RANGE

- field: overall_weight_skill
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: overall_weight_certification
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: overall_weight_experience
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: overall_weight_performance
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: overall_weight_behavior
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: overall_weight_growth
  required: yes
  type: decimal
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

- field: total_weight_check
  required: yes
  type: derived
  validation: sum weights = configured rule, usually 100
  precondition: none
  error_code: TG_VALIDATION_ERROR

# 10. calibration

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
- field: hr_employee_id
  required: yes
  type: id
  validation: auth HR
  precondition: status must be HR_REVIEW_IN_PROGRESS or CALIBRATION_IN_PROGRESS
  error_code: TG_STATE_INVALID_TRANSITION or TG_ACCESS_FORBIDDEN

- field: calibration_session_id
  required: yes
  type: id
  validation: must exist and be active
  precondition: HR only
  error_code: TG_NOT_FOUND_CALIBRATION_SESSION

- field: post_calibration_rank
  required: yes
  type: enum
  validation: allowlist rank
  precondition: HR only
  error_code: TG_VALIDATION_INVALID_ENUM

- field: calibration_reason
  required: yes
  type: string
  validation: 1..4000 chars
  precondition: HR only
  error_code: TG_VALIDATION_REQUIRED

## POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
- field: approver_employee_id
  required: yes
  type: id
  validation: auth HR approver
  precondition: status must be HR_REVIEW_IN_PROGRESS or CALIBRATION_IN_PROGRESS
  error_code: TG_STATE_INVALID_TRANSITION or TG_ACCESS_FORBIDDEN

- field: approval_comment
  required: no
  type: string
  validation: max 4000 chars
  precondition: HR only
  error_code: TG_VALIDATION_ERROR

- field: publish_after_approval
  required: no
  type: boolean
  validation: boolean
  precondition: HR only
  error_code: TG_VALIDATION_ERROR

# 11. growth plan

## POST /api/v1/growth-plans
- field: employee_id
  required: yes
  type: id
  validation: accessible target
  precondition: employee_self own, or manager/team, or HR
  error_code: TG_ACCESS_SCOPE_VIOLATION

- field: plan_title
  required: yes
  type: string
  validation: 1..200 chars
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

- field: plan_period_start
  required: yes
  type: date
  validation: valid date
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

- field: plan_period_end
  required: yes
  type: date
  validation: >= plan_period_start
  precondition: none
  error_code: TG_VALIDATION_INVALID_DATE_RANGE

- field: actions
  required: yes
  type: array
  validation: min 1, max endpoint limit
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

- field: actions[].action_type
  required: yes
  type: enum
  validation: allowlist enum
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

- field: actions[].title
  required: yes
  type: string
  validation: 1..200 chars
  precondition: none
  error_code: TG_VALIDATION_REQUIRED

- field: actions[].priority
  required: yes
  type: enum
  validation: allowlist enum
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

## POST /api/v1/growth-plans/{growth_plan_id}/progress
- field: updated_by_employee_id
  required: yes
  type: id
  validation: must be owner, manager, or HR scope
  precondition: plan status active/in progress
  error_code: TG_ACCESS_FORBIDDEN or TG_STATE_INVALID_TRANSITION

- field: progress_items[].growth_action_id
  required: yes
  type: id
  validation: must belong to plan
  precondition: none
  error_code: TG_VALIDATION_ERROR

- field: progress_items[].progress_status
  required: yes
  type: enum
  validation: allowlist enum
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

- field: progress_items[].progress_percent
  required: yes
  type: integer
  validation: 0..100
  precondition: none
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

# 12. role-fit / successor

## GET /api/v1/role-fit/candidates
- field: target_role_id
  required: yes
  type: id
  validation: must exist
  precondition: manager/team, HR, executive
  error_code: TG_NOT_FOUND_ROLE or TG_ACCESS_FORBIDDEN

- field: organization_id
  required: no
  type: id
  validation: accessible org scope
  precondition: none
  error_code: TG_ACCESS_SCOPE_VIOLATION

## POST /api/v1/successor-candidates
- field: critical_role_id
  required: yes
  type: id
  validation: must exist
  precondition: HR only
  error_code: TG_VALIDATION_REQUIRED

- field: employee_id
  required: yes
  type: id
  validation: accessible and active employee
  precondition: HR only
  error_code: TG_NOT_FOUND_EMPLOYEE

- field: readiness_score
  required: yes
  type: decimal
  validation: 0..100
  precondition: HR only
  error_code: TG_VALIDATION_INVALID_SCORE_RANGE

# 13. audit / export

## POST /api/v1/audit-logs/search
- field: date_from
  required: no
  type: date
  validation: valid date
  precondition: HR or limited admin
  error_code: TG_ACCESS_FORBIDDEN

- field: date_to
  required: no
  type: date
  validation: >= date_from when both exist
  precondition: none
  error_code: TG_VALIDATION_INVALID_DATE_RANGE

- field: action_types
  required: no
  type: array
  validation: allowlist enum, max endpoint limit
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

## POST /api/v1/exports/evaluations
- field: export_type_code
  required: yes
  type: enum
  validation: allowlist enum
  precondition: HR
  error_code: TG_VALIDATION_INVALID_ENUM or TG_ACCESS_FORBIDDEN

- field: locale_code
  required: no
  type: locale
  validation: supported locale
  precondition: none
  error_code: TG_VALIDATION_INVALID_LANGUAGE

- field: reporting_currency
  required: no
  type: currency
  validation: supported currency
  precondition: none
  error_code: TG_VALIDATION_INVALID_CURRENCY

# 14. AI assist

## POST /api/v1/ai-assist/review-comment-draft
- field: requested_by_employee_id
  required: yes
  type: id
  validation: auth user and allowed role
  precondition: AI assist enabled for role and screen
  error_code: TG_AI_ASSIST_NOT_ALLOWED_FOR_ROLE or TG_AI_ASSIST_DISABLED

- field: evaluation_sheet_id
  required: yes
  type: id
  validation: accessible sheet
  precondition: manager or HR scope
  error_code: TG_NOT_FOUND_EVALUATION_SHEET or TG_ACCESS_FORBIDDEN

- field: draft_type
  required: yes
  type: enum
  validation: allowlist enum
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

- field: language
  required: yes
  type: locale
  validation: supported language
  precondition: none
  error_code: TG_VALIDATION_INVALID_LANGUAGE

# 15. query parameter strictness examples

## GET /api/v1/employee-certifications
- field: expiring_within_days
  required: no
  type: integer
  validation: >= 0 and <= configured max
  precondition: accessible scope
  error_code: TG_VALIDATION_ERROR

- field: sort_field
  required: no
  type: enum
  validation: allowlist
  precondition: none
  error_code: TG_VALIDATION_UNKNOWN_PARAMETER or TG_VALIDATION_INVALID_ENUM

- field: sort_direction
  required: no
  type: enum
  validation: asc/desc only
  precondition: none
  error_code: TG_VALIDATION_INVALID_ENUM

# 16. lock / concurrency validations
applicable endpoints:
- PATCH /api/v1/employees/{employee_id}
- PATCH /api/v1/employee-skills/{employee_skill_id}
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
- PATCH /api/v1/growth-plans/{growth_plan_id}

rule:
- lock_version required where configured
- mismatch -> TG_CONFLICT_LOCK_VERSION_MISMATCH

# 17. 결론
TalentGrowth の validation matrix は、
endpoint単位で required / type / range / state / permission / error_code を
固定することで、実装とQAの基準を一本化する。
