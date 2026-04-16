# TALENT GROWTH PHASE A ACTUAL ROUTE FILE ONE-BLOCK FIXED

status: draft-phase-a-actual-route-file-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の route file を
最初にまとめて作るための one-block を固定するための資料である。

# 1. scope
phase A で最初に作る route:
- GET /api/v1/me
- GET /api/v1/home
- GET /api/v1/employee/dashboard
- GET /api/v1/employee-certifications
- GET /api/v1/employee-skills
- GET /api/v1/evaluation-sheets/[evaluation_sheet_id]
- GET /api/v1/manager/review-queue
- GET /api/v1/growth-plans
- POST /api/v1/audit-logs/search
- GET /api/v1/notifications

# 2. one-block example
~~~bash
mkdir -p src/app/api/v1/me \
  src/app/api/v1/home \
  src/app/api/v1/employee/dashboard \
  src/app/api/v1/employee-certifications \
  src/app/api/v1/employee-skills \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id] \
  src/app/api/v1/manager/review-queue \
  src/app/api/v1/growth-plans \
  src/app/api/v1/audit-logs/search \
  src/app/api/v1/notifications

cat > src/app/api/v1/me/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      employee_id: "emp_demo_01",
      company_id: "comp_demo_01",
      full_name: "山田 太郎",
      display_name: "山田 太郎",
      role_codes: ["EMPLOYEE"],
      organization_id: "org_tohoku_sales",
      preferred_language_code: "ja",
      reporting_currency_code: "JPY"
    },
    meta: {
      request_id: "stub_me_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/home/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      role_shortcuts: ["employee_dashboard"],
      notification_unread_count: 2
    },
    meta: {
      request_id: "stub_home_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/employee/dashboard/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      employee_id: "emp_demo_01",
      employee_name: "山田 太郎",
      current_role_fit_score: 79.0,
      target_role_fit_score: 68.0,
      growth_potential_score: 81.0,
      current_state_rank: "B",
      next_review_due_at: "2026-06-30",
      pending_items: [
        {
          item_code: "SELF_REVIEW_SUBMITTED",
          label: "上長レビュー待ち",
          count: 1
        }
      ],
      expiring_certifications: [
        {
          employee_certification_id: "ecert_demo_01",
          certification_name: "第一種衛生管理者",
          expiry_date: "2026-05-15",
          days_left: 32
        }
      ],
      top_growth_actions: [
        {
          growth_action_id: "gact_demo_01",
          action_type: "TRAINING",
          title: "数値管理基礎研修",
          priority: "HIGH",
          due_date: "2026-06-15"
        }
      ]
    },
    meta: {
      request_id: "stub_emp_dash_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/employee-certifications/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          employee_certification_id: "ecert_demo_01",
          employee_id: "emp_demo_01",
          certification_id: "cert_hygiene_manager",
          certification_name_snapshot: "第一種衛生管理者",
          issuer_name_snapshot: "厚生労働省",
          acquired_date: "2023-05-01",
          expiry_date: "2026-05-15",
          renewal_required: true,
          certification_status_code: "EXPIRING_SOON",
          days_left: 32
        }
      ]
    },
    meta: {
      request_id: "stub_cert_list_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/employee-skills/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          employee_skill_id: "eskill_demo_01",
          employee_id: "emp_demo_01",
          skill_id: "skill_customer_response",
          skill_label: "顧客対応",
          proficiency_level: 4,
          self_rating: 82,
          manager_rating: 80,
          evidence_count: 2,
          employee_comment: "クレーム初動対応は単独で実施可能"
        },
        {
          employee_skill_id: "eskill_demo_03",
          employee_id: "emp_demo_01",
          skill_id: "skill_numeric_management",
          skill_label: "数値管理",
          proficiency_level: 2,
          self_rating: 55,
          manager_rating: 58,
          evidence_count: 0,
          employee_comment: "月次分析は弱い"
        }
      ]
    },
    meta: {
      request_id: "stub_skill_list_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/route.ts <<'TS'
export async function GET(
  _request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const { evaluation_sheet_id } = await context.params;

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id,
      employee_id: "emp_demo_01",
      employee_name: "山田 太郎",
      manager_employee_id: "emp_demo_mgr_01",
      evaluation_cycle_id: "ecycle_demo_2026h1",
      cycle_name: "2026年上期評価",
      evaluation_status_code: "SELF_REVIEW_SUBMITTED",
      current_state_rank: "B",
      future_readiness_rank: "B",
      total_evaluation_score: 75.5,
      current_role_fit_score: 79.0,
      target_role_fit_score: 68.0,
      growth_potential_score: 81.0,
      promotion_readiness_score: 64.0,
      successor_readiness_score: 61.0
    },
    meta: {
      request_id: "stub_eval_sheet_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/manager/review-queue/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          evaluation_sheet_id: "esheet_demo_01",
          employee_id: "emp_demo_01",
          employee_name: "山田 太郎",
          organization_name: "東北営業部",
          current_state_rank: "B",
          status: "SELF_REVIEW_SUBMITTED",
          submitted_at: "2026-04-13T09:30:00+09:00",
          expiring_certification_count: 1,
          evidence_count: 4
        }
      ]
    },
    meta: {
      request_id: "stub_mgr_queue_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/growth-plans/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          growth_plan_id: "gplan_demo_01",
          employee_id: "emp_demo_01",
          plan_title: "2026年上期 成長計画",
          target_job_role_id: "jrole_store_manager",
          target_job_role_label: "店長",
          plan_period_start: "2026-05-01",
          plan_period_end: "2026-10-31",
          growth_plan_status_code: "ACTIVE",
          next_review_due_at: "2026-06-30"
        }
      ]
    },
    meta: {
      request_id: "stub_growth_list_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/audit-logs/search/route.ts <<'TS'
export async function POST() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          occurred_at: "2026-04-13T10:00:00+09:00",
          actor_employee_id: "emp_demo_mgr_01",
          actor_role_code: "MANAGER",
          entity_type: "EVALUATION_SHEET",
          entity_id: "esheet_demo_01",
          action_type: "MANAGER_REVIEW_SAVE",
          audit_trace_id: "atrace_demo_01"
        }
      ]
    },
    meta: {
      request_id: "stub_audit_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS

cat > src/app/api/v1/notifications/route.ts <<'TS'
export async function GET() {
  return Response.json({
    ok: true,
    data: {
      items: [
        {
          notification_id: "notif_demo_01",
          notification_type_code: "REVIEW_REQUEST",
          target_employee_id: "emp_demo_mgr_01",
          title_key: "tg.notify.review_request.title",
          body_key: "tg.notify.review_request.body",
          deep_link_type: "EVALUATION_SHEET",
          deep_link_target_id: "esheet_demo_01",
          unread_flag: true
        }
      ]
    },
    meta: {
      request_id: "stub_notif_01",
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
TS
~~~

# 3. route file policy
- first step is stub correctness
- exact payload must match design docs
- request_id / server_time / version are mandatory
- route layer stays thin
- service split later is acceptable

# 4. conclusion
phase A の最初の route file は、
この one-block で一気に scaffold する方針を正式化する。
