# TALENT GROWTH API REQUEST RESPONSE EXACT PAYLOAD

status: draft-exact-payload
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要APIについて、
request / response の exact payload を固定するための資料である。

前提:
- JSON API を前提とする
- 多言語 / 多通貨 / multi-device を前提とする
- AI補助は補助APIとして分離する
- 最終評価確定は人間承認前提とする

# 1. 共通レスポンス原則

## 1-1. success envelope
~~~json
{
  "ok": true,
  "data": {},
  "meta": {
    "request_id": "req_01HXYZ...",
    "server_time": "2026-04-12T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

## 1-2. error envelope
~~~json
{
  "ok": false,
  "error": {
    "code": "TG_VALIDATION_ERROR",
    "message": "validation failed",
    "details": [
      {
        "field": "skill_items[0].proficiency_level",
        "reason": "required"
      }
    ]
  },
  "meta": {
    "request_id": "req_01HXYZ...",
    "server_time": "2026-04-12T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 2. 共通ヘッダ / 共通項目

## 2-1. request headers
- Authorization: Bearer <token>
- Content-Type: application/json
- Accept-Language: ja-JP / en-US など
- X-TG-Company-Id: company scope
- X-TG-Device-Type: iphone / android / pc / tablet

## 2-2. 共通ID方針
- company_id
- employee_id
- evaluation_cycle_id
- evaluation_sheet_id
- growth_plan_id
- role_requirement_id
- certification_id
- skill_id
- audit_trace_id

# 3. employee dashboard

## 3-1. GET /api/v1/employee/dashboard
目的:
- employee dashboard 表示用の集約データ取得

### response
~~~json
{
  "ok": true,
  "data": {
    "employee_id": "emp_01HX001",
    "employee_name": "山田 太郎",
    "current_role_fit_score": 78.5,
    "target_role_fit_score": 66.0,
    "growth_potential_score": 82.0,
    "current_state_rank": "B",
    "next_review_due_at": "2026-06-30",
    "pending_items": [
      {
        "item_code": "CERT_RENEWAL",
        "label": "資格更新が必要です",
        "count": 1
      }
    ],
    "expiring_certifications": [
      {
        "employee_certification_id": "ecert_01",
        "certification_name": "第一種衛生管理者",
        "expiry_date": "2026-05-15",
        "days_left": 33
      }
    ],
    "top_growth_actions": [
      {
        "growth_action_id": "gact_01",
        "action_type": "TRAINING",
        "title": "中級マネジメント研修",
        "priority": "HIGH",
        "due_date": "2026-05-31"
      }
    ],
    "score_trend": {
      "previous_total_score": 71.0,
      "current_total_score": 75.5,
      "delta": 4.5
    }
  },
  "meta": {
    "request_id": "req_emp_dash_01",
    "server_time": "2026-04-12T12:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 4. self review save / submit

## 4-1. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
目的:
- 自己評価の一時保存

### request
~~~json
{
  "employee_id": "emp_01HX001",
  "self_review_comment": "現職では店舗運営の再現性は高いが、後輩育成は改善余地がある。",
  "academic_items": [
    {
      "employee_academic_history_id": "acad_01",
      "is_confirmed": true
    }
  ],
  "certification_items": [
    {
      "employee_certification_id": "ecert_01",
      "is_confirmed": true,
      "employee_note": "更新申請準備中"
    }
  ],
  "skill_items": [
    {
      "employee_skill_id": "eskill_01",
      "proficiency_level": 4,
      "self_comment": "クレーム初動対応は単独で実施可能",
      "evidence_ids": ["evi_01", "evi_02"]
    }
  ],
  "achievement_items": [
    {
      "employee_achievement_id": "ach_01",
      "self_comment": "担当売場の月次粗利改善に寄与"
    }
  ]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "SELF_REVIEW_DRAFT",
    "saved_at": "2026-04-12T12:10:00+09:00"
  },
  "meta": {
    "request_id": "req_self_save_01",
    "server_time": "2026-04-12T12:10:00+09:00",
    "version": "v1"
  }
}
~~~

## 4-2. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
目的:
- 自己評価を提出する

### request
~~~json
{
  "employee_id": "emp_01HX001",
  "final_self_review_comment": "今期は店舗運営安定化は達成。次期は育成と数値管理を伸ばしたい。",
  "submit_confirmed": true
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "SELF_REVIEW_SUBMITTED",
    "submitted_at": "2026-04-12T12:20:00+09:00",
    "next_action": {
      "action_code": "WAIT_MANAGER_REVIEW",
      "label": "上長レビュー待ち"
    }
  },
  "meta": {
    "request_id": "req_self_submit_01",
    "server_time": "2026-04-12T12:20:00+09:00",
    "version": "v1"
  }
}
~~~

# 5. manager review

## 5-1. GET /api/v1/manager/review-queue
目的:
- 上長レビュー待ち一覧取得

### response
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "evaluation_sheet_id": "esheet_01",
        "employee_id": "emp_01HX001",
        "employee_name": "山田 太郎",
        "organization_name": "東北営業部",
        "current_state_rank": "B",
        "status": "SELF_REVIEW_SUBMITTED",
        "submitted_at": "2026-04-12T12:20:00+09:00",
        "expiring_certification_count": 1,
        "evidence_count": 8
      }
    ]
  },
  "meta": {
    "request_id": "req_mgr_queue_01",
    "server_time": "2026-04-12T12:30:00+09:00",
    "version": "v1"
  }
}
~~~

## 5-2. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
目的:
- 上長レビューの一時保存

### request
~~~json
{
  "manager_employee_id": "emp_mgr_01",
  "manager_review_comment": "運営安定性は高い。育成観点は次期強化。",
  "score_inputs": {
    "behavior_score": 72.0,
    "performance_score": 79.0,
    "current_role_fit_score": 80.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 83.0
  },
  "competency_items": [
    {
      "competency_code": "LEADERSHIP",
      "manager_rating": 3,
      "comment": "指示待ち傾向が一部残る"
    }
  ],
  "evidence_ids": ["evi_10", "evi_11"]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "MANAGER_REVIEW_DRAFT",
    "saved_at": "2026-04-12T12:45:00+09:00"
  },
  "meta": {
    "request_id": "req_mgr_save_01",
    "server_time": "2026-04-12T12:45:00+09:00",
    "version": "v1"
  }
}
~~~

## 5-3. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
目的:
- 上長レビュー提出

### request
~~~json
{
  "manager_employee_id": "emp_mgr_01",
  "submit_confirmed": true,
  "recommended_next_step": "HR_REVIEW"
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "MANAGER_REVIEW_SUBMITTED",
    "submitted_at": "2026-04-12T13:00:00+09:00",
    "next_action": {
      "action_code": "WAIT_HR_REVIEW",
      "label": "人事レビュー待ち"
    }
  },
  "meta": {
    "request_id": "req_mgr_submit_01",
    "server_time": "2026-04-12T13:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 6. HR calibration

## 6-1. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/calibration/save
目的:
- 校正内容の一時保存

### request
~~~json
{
  "hr_employee_id": "emp_hr_01",
  "calibration_session_id": "calsess_01",
  "pre_calibration_rank": "B",
  "post_calibration_rank": "B",
  "adjusted_scores": {
    "current_role_fit_score": 79.0,
    "growth_potential_score": 81.0
  },
  "calibration_reason": "部門間評価基準差の是正",
  "meeting_note": "同職種他者比較上、現評価は妥当だが成長性を微調整",
  "evidence_ids": ["evi_20"]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "CALIBRATION_IN_PROGRESS",
    "saved_at": "2026-04-12T13:20:00+09:00"
  },
  "meta": {
    "request_id": "req_cal_save_01",
    "server_time": "2026-04-12T13:20:00+09:00",
    "version": "v1"
  }
}
~~~

## 6-2. POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/approve
目的:
- 評価確定

### request
~~~json
{
  "approver_employee_id": "emp_hr_01",
  "approval_comment": "校正完了。公開可。",
  "publish_after_approval": true
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "evaluation_sheet_id": "esheet_01",
    "status": "APPROVED",
    "approved_at": "2026-04-12T13:40:00+09:00",
    "published_at": "2026-04-12T13:41:00+09:00",
    "result_summary": {
      "total_evaluation_score": 76.5,
      "current_role_fit_score": 79.0,
      "target_role_fit_score": 68.0,
      "growth_potential_score": 81.0,
      "current_state_rank": "B",
      "future_readiness_rank": "A"
    }
  },
  "meta": {
    "request_id": "req_approve_01",
    "server_time": "2026-04-12T13:41:00+09:00",
    "version": "v1"
  }
}
~~~

# 7. growth plan

## 7-1. POST /api/v1/growth-plans
目的:
- 成長計画作成

### request
~~~json
{
  "employee_id": "emp_01HX001",
  "evaluation_sheet_id": "esheet_01",
  "plan_title": "2026年上期 成長計画",
  "target_role_id": "role_store_manager",
  "plan_period_start": "2026-05-01",
  "plan_period_end": "2026-10-31",
  "actions": [
    {
      "action_type": "TRAINING",
      "title": "数値管理基礎研修",
      "priority": "HIGH",
      "due_date": "2026-06-15",
      "reason": "target_role_fit_gap:NUMERIC_MANAGEMENT"
    },
    {
      "action_type": "OJT",
      "title": "新人育成OJT担当",
      "priority": "MEDIUM",
      "due_date": "2026-08-31",
      "reason": "behavior_gap:PEOPLE_DEVELOPMENT"
    }
  ]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "growth_plan_id": "gplan_01",
    "status": "ACTIVE",
    "created_at": "2026-04-12T14:00:00+09:00"
  },
  "meta": {
    "request_id": "req_growth_create_01",
    "server_time": "2026-04-12T14:00:00+09:00",
    "version": "v1"
  }
}
~~~

## 7-2. POST /api/v1/growth-plans/{growth_plan_id}/progress
目的:
- 成長計画進捗更新

### request
~~~json
{
  "updated_by_employee_id": "emp_01HX001",
  "progress_items": [
    {
      "growth_action_id": "gact_01",
      "progress_status": "IN_PROGRESS",
      "progress_percent": 50,
      "note": "研修前半を受講済み"
    }
  ]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "growth_plan_id": "gplan_01",
    "updated_at": "2026-04-12T14:10:00+09:00"
  },
  "meta": {
    "request_id": "req_growth_progress_01",
    "server_time": "2026-04-12T14:10:00+09:00",
    "version": "v1"
  }
}
~~~

# 8. certification renewal

## 8-1. POST /api/v1/employee-certifications/{employee_certification_id}/renewal
目的:
- 資格更新記録

### request
~~~json
{
  "employee_id": "emp_01HX001",
  "renewed_at": "2026-05-10",
  "new_expiry_date": "2029-05-09",
  "renewal_cost": {
    "source_amount": 15000,
    "source_currency": "JPY",
    "reporting_amount": 15000,
    "reporting_currency": "JPY",
    "fx_rate": 1.0
  },
  "evidence_ids": ["evi_cert_01"],
  "note": "更新講習完了"
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "employee_certification_id": "ecert_01",
    "status": "ACTIVE",
    "updated_expiry_date": "2029-05-09"
  },
  "meta": {
    "request_id": "req_cert_renew_01",
    "server_time": "2026-05-10T18:00:00+09:00",
    "version": "v1"
  }
}
~~~

# 9. role-fit candidates

## 9-1. GET /api/v1/role-fit/candidates?organization_id=org_01&target_role_id=role_store_manager
目的:
- 配置 / 昇格候補抽出

### response
~~~json
{
  "ok": true,
  "data": {
    "target_role_id": "role_store_manager",
    "items": [
      {
        "employee_id": "emp_01HX001",
        "employee_name": "山田 太郎",
        "current_role_fit_score": 79.0,
        "target_role_fit_score": 68.0,
        "promotion_readiness_score": 64.0,
        "successor_readiness_score": 61.0,
        "top_gaps": [
          "NUMERIC_MANAGEMENT",
          "PEOPLE_DEVELOPMENT"
        ]
      }
    ]
  },
  "meta": {
    "request_id": "req_rolefit_01",
    "server_time": "2026-04-12T14:20:00+09:00",
    "version": "v1"
  }
}
~~~

# 10. AI assist

## 10-1. POST /api/v1/ai-assist/review-comment-draft
目的:
- 評価コメント下書き生成
注意:
- 最終確定には使わない

### request
~~~json
{
  "requested_by_employee_id": "emp_mgr_01",
  "evaluation_sheet_id": "esheet_01",
  "draft_type": "MANAGER_REVIEW_COMMENT",
  "language": "ja",
  "input_summary": {
    "current_role_fit_score": 79.0,
    "target_role_fit_score": 68.0,
    "growth_potential_score": 81.0,
    "top_strengths": ["STORE_OPERATION", "CUSTOMER_RESPONSE"],
    "top_gaps": ["NUMERIC_MANAGEMENT", "PEOPLE_DEVELOPMENT"]
  }
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "ai_draft_id": "aidraft_01",
    "draft_text": "現職の運営安定性は高く、顧客対応力も評価できる。一方で次役割を見据えると数値管理と人材育成の強化が必要である。",
    "must_review_by_human": true,
    "reference_logged": true
  },
  "meta": {
    "request_id": "req_ai_draft_01",
    "server_time": "2026-04-12T14:30:00+09:00",
    "version": "v1"
  }
}
~~~

# 11. audit log search

## 11-1. POST /api/v1/audit-logs/search
目的:
- 監査ログ検索

### request
~~~json
{
  "company_id": "comp_01",
  "date_from": "2026-04-01",
  "date_to": "2026-04-30",
  "actor_employee_id": "emp_hr_01",
  "entity_type": "EVALUATION_SHEET",
  "entity_id": "esheet_01",
  "action_types": ["APPROVE", "CALIBRATION_SAVE", "AI_REFERENCE"]
}
~~~

### response
~~~json
{
  "ok": true,
  "data": {
    "items": [
      {
        "audit_log_id": "alog_01",
        "occurred_at": "2026-04-12T13:20:00+09:00",
        "actor_employee_id": "emp_hr_01",
        "entity_type": "EVALUATION_SHEET",
        "entity_id": "esheet_01",
        "action_type": "CALIBRATION_SAVE",
        "audit_trace_id": "atrace_01"
      }
    ]
  },
  "meta": {
    "request_id": "req_audit_search_01",
    "server_time": "2026-04-12T14:40:00+09:00",
    "version": "v1"
  }
}
~~~

# 12. 結論
TalentGrowth の API payload は、
評価、成長、資格更新、候補抽出、監査、AI補助を
分離しながら exact payload を固定する。

特に、
- 評価保存
- 評価提出
- 校正
- 承認
- 成長計画
- 監査検索
の payload は初期から固定対象とする。
