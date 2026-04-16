# TALENT GROWTH API STUB RESPONSE SET FIXED

status: draft-api-stub-response-set-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth phase A 実装で先に frontend をつなげるための
API stub response set を固定するための資料である。

前提:
- mock dataset 固定済み
- exact payload 固定済み
- ここでは representative response を phase A 優先で固定する

# 1. stub use rule
- stub は exact payload shape を崩さない
- stable ids を使う
- generated_at / request_id / version を入れる
- error stub も同時に持つ
- state transition で response を切り替えられるようにする

# 2. GET /api/v1/me stub
~~~json
{
  "ok": true,
  "data": {
    "employee_id": "emp_demo_01",
    "company_id": "comp_demo_01",
    "full_name": "山田 太郎",
    "display_name": "山田 太郎",
    "role_codes": ["EMPLOYEE"],
    "organization_id": "org_tohoku_sales",
    "preferred_language_code": "ja",
    "reporting_currency_code": "JPY"
  },
  "meta": {
    "request_id": "stub_me_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 3. GET /api/v1/employee/dashboard stub
~~~json
{
  "ok": true,
  "data": {
    "employee_id": "emp_demo_01",
    "employee_name": "山田 太郎",
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 81.0,
    "current_state_rank": "B",
    "next_review_due_at": "2026-06-30",
    "pending_items": [
      {
        "item_code": "SELF_REVIEW_SUBMITTED",
        "label": "上長レビュー待ち",
        "count": 1
      }
    ],
    "expiring_certifications": [
      {
        "employee_certification_id": "ecert_demo_01",
        "certification_name": "第一種衛生管理者",
        "expiry_date": "2026-05-15",
        "days_left": 32
      }
    ],
    "top_growth_actions": [
      {
        "growth_action_id": "gact_demo_01",
        "action_type": "TRAINING",
        "title": "数値管理基礎研修",
        "priority": "HIGH",
        "due_date": "2026-06-15"
      }
    ],
    "score_trend": {
      "previous_total_score": 71.0,
      "current_total_score": 75.5,
      "delta": 4.5
    }
  },
  "meta": {
    "request_id": "stub_emp_dash_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 4. GET /api/v1/employee-certifications stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "employee_certification_id": "ecert_demo_01",
        "employee_id": "emp_demo_01",
        "certification_id": "cert_hygiene_manager",
        "certification_name_snapshot": "第一種衛生管理者",
        "issuer_name_snapshot": "厚生労働省",
        "acquired_date": "2023-05-01",
        "expiry_date": "2026-05-15",
        "renewal_required": true,
        "certification_status_code": "EXPIRING_SOON",
        "days_left": 32
      }
    ]
  },
  "meta": {
    "request_id": "stub_cert_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 5. GET /api/v1/employee-skills stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "employee_skill_id": "eskill_demo_01",
        "employee_id": "emp_demo_01",
        "skill_id": "skill_customer_response",
        "skill_label": "顧客対応",
        "proficiency_level": 4,
        "self_rating": 82,
        "manager_rating": 80,
        "evidence_count": 2,
        "employee_comment": "クレーム初動対応は単独で実施可能"
      },
      {
        "employee_skill_id": "eskill_demo_03",
        "employee_id": "emp_demo_01",
        "skill_id": "skill_numeric_management",
        "skill_label": "数値管理",
        "proficiency_level": 2,
        "self_rating": 55,
        "manager_rating": 58,
        "evidence_count": 0,
        "employee_comment": "月次分析は弱い"
      }
    ]
  },
  "meta": {
    "request_id": "stub_skill_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 6. GET /api/v1/evaluation-sheets/{evaluation_sheet_id} stub
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_demo_01",
    "employee_id": "emp_demo_01",
    "employee_name": "山田 太郎",
    "manager_employee_id": "emp_demo_mgr_01",
    "evaluation_cycle_id": "ecycle_demo_2026h1",
    "cycle_name": "2026年上期評価",
    "evaluation_status_code": "SELF_REVIEW_SUBMITTED",
    "current_state_rank": "B",
    "future_readiness_rank": "B",
    "total_evaluation_score": 75.5,
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 81.0,
    "promotion_readiness_score": 64.0,
    "successor_readiness_score": 61.0,
    "self_review_comment": "現職では店舗運営の再現性は高いが、数値管理と後輩育成に課題がある。",
    "skill_items": [
      {
        "employee_skill_id": "eskill_demo_01",
        "skill_label": "顧客対応",
        "proficiency_level": 4,
        "self_comment": "クレーム初動対応は単独で実施可能",
        "evidence_ids": ["evi_demo_01"]
      },
      {
        "employee_skill_id": "eskill_demo_03",
        "skill_label": "数値管理",
        "proficiency_level": 2,
        "self_comment": "日次管理は可能だが月次分析は弱い",
        "evidence_ids": []
      }
    ],
    "achievement_items": [
      {
        "employee_achievement_id": "ach_demo_01",
        "achievement_title": "月次粗利改善",
        "self_comment": "担当売場の粗利改善に寄与"
      }
    ]
  },
  "meta": {
    "request_id": "stub_eval_sheet_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 7. GET /api/v1/manager/review-queue stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "evaluation_sheet_id": "esheet_demo_01",
        "employee_id": "emp_demo_01",
        "employee_name": "山田 太郎",
        "organization_name": "東北営業部",
        "current_state_rank": "B",
        "status": "SELF_REVIEW_SUBMITTED",
        "submitted_at": "2026-04-13T09:30:00+09:00",
        "expiring_certification_count": 1,
        "evidence_count": 4
      }
    ]
  },
  "meta": {
    "request_id": "stub_mgr_queue_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 8. GET /api/v1/growth-plans stub
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "growth_plan_id": "gplan_demo_01",
        "employee_id": "emp_demo_01",
        "plan_title": "2026年上期 成長計画",
        "target_job_role_id": "jrole_store_manager",
        "target_job_role_label": "店長",
        "plan_period_start": "2026-05-01",
        "plan_period_end": "2026-10-31",
        "growth_plan_status_code": "ACTIVE",
        "next_review_due_at": "2026-06-30",
        "actions": [
          {
            "growth_action_id": "gact_demo_01",
            "action_type_code": "TRAINING",
            "action_title": "数値管理基礎研修",
            "priority_code": "HIGH",
            "completion_percent": 50
          }
        ]
      }
    ]
  },
  "meta": {
    "request_id": "stub_growth_list_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 9. GET /api/v1/hr/dashboard stub
~~~json
{
  "ok": true,
  "data": {
    "active_cycle_count": 1,
    "pending_hr_review_count": 3,
    "pending_calibration_count": 1,
    "certification_expiring_soon_rate": 12.5,
    "average_current_role_fit_score": 77.2,
    "evaluator_bias_alert_count": 2,
    "successor_coverage_rate": 66.7
  },
  "meta": {
    "request_id": "stub_hr_dash_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 10. representative error stubs

## validation error
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_VALIDATION_INVALID_DATE_RANGE",
    "message": "validation failed",
    "details": [
      {
        "field": "new_expiry_date",
        "reason": "must be greater than or equal to renewed_at"
      }
    ]
  },
  "meta": {
    "request_id": "stub_err_01",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

## access forbidden
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_ACCESS_FORBIDDEN",
    "message": "forbidden",
    "details": []
  },
  "meta": {
    "request_id": "stub_err_02",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

## state invalid transition
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_STATE_INVALID_TRANSITION",
    "message": "invalid state transition",
    "details": [
      {
        "field": "evaluation_status_code",
        "reason": "current state does not allow submit"
      }
    ]
  },
  "meta": {
    "request_id": "stub_err_03",
    "server_time": "2026-04-13T11:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 11. stub switching recommendation
state patterns:
- draft pattern
- submitted pattern
- sent back pattern
- approved pattern
- published pattern

recommended strategy:
- one fixture file per state
- shared actor/master baseline
- endpoint response switch by scenario id

# 12. conclusion
TalentGrowth の API stub response set は、
phase A frontend / integration 実装を進める代表 fixture 群として固定する。
