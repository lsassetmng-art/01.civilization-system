# TALENT GROWTH SEARCH FILTER PARAMETER EXACT POLICY

status: draft-search-filter-policy
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の一覧 / 検索 / 分析APIで使う
search / filter / sort / pagination parameter を固定するための資料である。

# 1. 共通原則
- filter は exact key で受ける
- fuzzy search は q に集約する
- sort は field + direction に分ける
- pagination は limit + cursor を基本にする
- 未権限絞込は silently broaden せず error とする

# 2. 共通parameter

## search
- q

## scope filters
- company_id
- organization_id
- organization_ids[]
- employee_id
- employee_ids[]

## date filters
- date_from
- date_to
- created_from
- created_to
- updated_from
- updated_to

## status filters
- status_code
- status_codes[]

## sort
- sort_field
- sort_direction

## pagination
- limit
- cursor

# 3. employee list filters
想定API:
- GET /api/v1/employees

filters:
- q
- organization_id
- employment_type_code
- current_job_family_id
- current_job_role_id
- current_grade_id
- manager_employee_id
- is_active
- certification_status_code
- expiring_within_days
- growth_plan_status_code

sort_fields:
- full_name
- hire_date
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- next_review_due_at
- updated_at

# 4. review queue filters
想定API:
- GET /api/v1/manager/review-queue

filters:
- q
- organization_id
- evaluation_cycle_id
- status_code
- submitted_from
- submitted_to
- expiring_within_days
- has_evidence_flag

sort_fields:
- submitted_at
- employee_name
- current_state_rank
- evidence_count
- expiring_certification_count

# 5. evaluation sheet filters
想定API:
- GET /api/v1/evaluation-sheets

filters:
- q
- evaluation_cycle_id
- employee_id
- manager_employee_id
- current_job_role_id
- target_job_role_id
- evaluation_status_code
- current_state_rank
- future_readiness_rank
- total_score_from
- total_score_to
- role_fit_from
- role_fit_to
- growth_potential_from
- growth_potential_to
- published_from
- published_to

sort_fields:
- updated_at
- total_evaluation_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- published_at

# 6. certification filters
想定API:
- GET /api/v1/employee-certifications

filters:
- q
- employee_id
- certification_id
- certification_status_code
- renewal_required
- expiry_from
- expiry_to
- expiring_within_days
- organization_id

sort_fields:
- expiry_date
- acquired_date
- updated_at
- certification_name_snapshot

# 7. growth plan filters
想定API:
- GET /api/v1/growth-plans

filters:
- q
- employee_id
- manager_employee_id
- target_job_role_id
- growth_plan_status_code
- due_from
- due_to
- priority_code
- action_type_code

sort_fields:
- plan_period_start
- plan_period_end
- next_review_due_at
- updated_at

# 8. audit log filters
想定API:
- POST /api/v1/audit-logs/search

filters:
- actor_employee_id
- actor_role_code
- entity_type
- entity_id
- action_type
- action_types[]
- date_from
- date_to
- audit_trace_id
- has_ai_reference_flag

sort_fields:
- occurred_at
- actor_employee_id
- action_type

# 9. analytics filters
想定API:
- GET /api/v1/analytics/distribution
- GET /api/v1/analytics/9box
- GET /api/v1/analytics/training-roi

filters:
- organization_id
- organization_ids[]
- current_job_family_id
- current_job_role_id
- current_grade_id
- employment_type_code
- country_code
- period_start
- period_end
- evaluation_cycle_id
- reporting_currency
- compare_dimension_code

sort_fields:
- organization_name
- average_total_score
- average_role_fit_score
- average_growth_potential
- roi_ratio

# 10. exact examples

## 10-1. employee list
~~~text
GET /api/v1/employees?q=山田&organization_id=org_01&current_job_role_id=role_store_staff&expiring_within_days=60&sort_field=updated_at&sort_direction=desc&limit=20
~~~

## 10-2. evaluation sheets
~~~text
GET /api/v1/evaluation-sheets?evaluation_cycle_id=ecycle_01&evaluation_status_code=MANAGER_REVIEW_SUBMITTED&growth_potential_from=70&sort_field=published_at&sort_direction=desc&limit=50
~~~

## 10-3. certification list
~~~text
GET /api/v1/employee-certifications?renewal_required=true&expiring_within_days=90&organization_id=org_01&sort_field=expiry_date&sort_direction=asc&limit=50
~~~

## 10-4. growth plans
~~~text
GET /api/v1/growth-plans?manager_employee_id=emp_mgr_01&growth_plan_status_code=IN_PROGRESS&priority_code=HIGH&sort_field=next_review_due_at&sort_direction=asc&limit=20
~~~

## 10-5. audit log search
~~~json
{
  "actor_role_code": "HR",
  "entity_type": "EVALUATION_SHEET",
  "date_from": "2026-04-01",
  "date_to": "2026-04-30",
  "action_types": ["APPROVE", "REOPEN", "AI_REFERENCE"],
  "limit": 100
}
~~~

# 11. バリデーション原則
- unknown parameter は error
- empty string は null 扱いしない
- array filter は最大件数制限を持つ
- date_from > date_to は error
- sort_field は allowlist のみ許可
- sort_direction は asc / desc のみ

# 12. 結論
TalentGrowth の検索 / 絞込 / 並び替えは、
APIごとに曖昧運用せず、
exact parameter で固定する。

特に、
- review queue
- evaluation sheets
- certifications
- growth plans
- audit logs
- analytics
は初期から strict parameter policy を持つ。
