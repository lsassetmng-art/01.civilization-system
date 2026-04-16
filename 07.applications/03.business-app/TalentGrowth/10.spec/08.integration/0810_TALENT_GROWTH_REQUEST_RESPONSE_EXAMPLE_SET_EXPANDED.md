# TALENT GROWTH REQUEST RESPONSE EXAMPLE SET EXPANDED

status: draft-example-set-expanded
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
主要APIの request / response example を増補し、
実装・テスト・モック作成に使える例セットを固定するための資料である。

# 1. GET /api/v1/employee-certifications example
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "employee_certification_id": "ecert_01",
        "employee_id": "emp_01HX001",
        "certification_id": "cert_01",
        "certification_name_snapshot": "第一種衛生管理者",
        "issuer_name_snapshot": "厚生労働省",
        "acquired_date": "2023-05-01",
        "expiry_date": "2026-05-15",
        "renewal_required": true,
        "certification_status_code": "EXPIRING_SOON",
        "days_left": 33
      }
    ]
  },
  "meta": {
    "request_id": "req_cert_list_01",
    "server_time": "2026-04-12T15:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 2. PATCH /api/v1/employees/{employee_id} example request
~~~json
{
  "display_name": "山田 太郎",
  "email": "boss@example.com",
  "phone": "09012345678",
  "career_preference_text": "店舗運営の上流管理を経験したい",
  "lock_version": 3
}
~~~

# 3. POST /api/v1/role-requirements example request
~~~json
{
  "job_family_id": "jfam_store",
  "job_role_id": "jrole_store_manager",
  "grade_id": "grade_g3",
  "requirement_version": "2026-H1",
  "effective_from": "2026-05-01",
  "effective_to": null,
  "overall_weight_skill": 30,
  "overall_weight_certification": 15,
  "overall_weight_experience": 10,
  "overall_weight_performance": 15,
  "overall_weight_behavior": 10,
  "overall_weight_growth": 20,
  "skills": [
    {
      "skill_id": "skill_numeric_management",
      "required_level": 4,
      "preferred_level": 5,
      "weight_score": 15,
      "mandatory_flag": true
    }
  ],
  "certifications": [
    {
      "certification_id": "cert_hygiene_manager",
      "mandatory_flag": true,
      "preferred_flag": false,
      "weight_score": 15
    }
  ]
}
~~~

# 4. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back example
~~~json
{
  "target_role_code": "EMPLOYEE",
  "send_back_reason": "根拠不足のため再提出してください"
}
~~~

# 5. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/reopen example
~~~json
{
  "reopen_reason": "公開後に重大な入力誤りが判明したため",
  "requested_by_employee_id": "emp_hr_01"
}
~~~

# 6. POST /api/v1/exports/evaluations example
~~~json
{
  "export_type_code": "EVALUATION_RESULT_EXPORT",
  "locale_code": "ja-JP",
  "reporting_currency": "JPY",
  "filters": {
    "evaluation_cycle_id": "ecycle_01",
    "organization_id": "org_01",
    "current_state_rank": "B"
  }
}
~~~

# 7. GET /api/v1/exports/{export_job_id} example response
~~~json
{
  "ok": true,
  "data": {
    "export_job_id": "expjob_01",
    "status_code": "COMPLETED",
    "file_format": "CSV",
    "row_count": 148,
    "requested_at": "2026-04-12T15:10:00+09:00",
    "completed_at": "2026-04-12T15:11:12+09:00",
    "file_id": "file_export_01"
  },
  "meta": {
    "request_id": "req_export_status_01",
    "server_time": "2026-04-12T15:11:15+09:00",
    "version": "v1"
  }
}
~~~

# 8. POST /api/v1/ai-assist/growth-suggestion-draft example
~~~json
{
  "requested_by_employee_id": "emp_mgr_01",
  "evaluation_sheet_id": "esheet_01",
  "language": "ja",
  "input_summary": {
    "top_gaps": ["NUMERIC_MANAGEMENT", "PEOPLE_DEVELOPMENT"],
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0
  }
}
~~~

# 9. 結論
TalentGrowth の example set は、
主要 endpoint の request / response を増補し、
モックと結合試験の土台に使えるように固定する。
