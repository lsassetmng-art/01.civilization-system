# TALENT GROWTH PHASE A ROUTE ACTUAL FILE ONE-BLOCK KICKOFF FIXED

status: draft-phase-a-route-actual-file-one-block-kickoff-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の route actual file を
最初にまとめて書き出す one-block kickoff を固定するための資料である。

# 1. target
first actual route files:
- response helper
- auth context helper
- GET /api/v1/me
- GET /api/v1/home
- GET /api/v1/employee/dashboard
- GET /api/v1/employee-certifications
- GET /api/v1/employee-skills
- GET /api/v1/evaluation-sheets/[evaluation_sheet_id]
- GET /api/v1/manager/review-queue
- GET /api/v1/growth-plans
- GET /api/v1/notifications
- POST /api/v1/notifications/read

# 2. one-block kickoff
~~~bash
mkdir -p \
  src/app/api/v1/me \
  src/app/api/v1/home \
  src/app/api/v1/employee/dashboard \
  src/app/api/v1/employee-certifications \
  src/app/api/v1/employee-skills \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id] \
  src/app/api/v1/manager/review-queue \
  src/app/api/v1/growth-plans \
  src/app/api/v1/notifications \
  src/app/api/v1/notifications/read \
  src/server/talent-growth/lib

cat > src/server/talent-growth/lib/response.ts <<'TS'
export type TalentGrowthErrorDetail = {
  field?: string;
  reason?: string;
  code?: string;
};

export function tgOk(data: unknown, requestId = "req_placeholder") {
  return Response.json({
    ok: true,
    data,
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}

export function tgFail(
  code: string,
  message: string,
  details: TalentGrowthErrorDetail[] = [],
  requestId = "req_placeholder",
  status = 400
) {
  return Response.json({
    ok: false,
    error: { code, message, details },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  }, { status });
}

export function tgErrorStatus(code: string): number {
  switch (code) {
    case "TG_AUTH_REQUIRED":
      return 401;
    case "TG_ACCESS_FORBIDDEN":
    case "TG_ACCESS_SCOPE_VIOLATION":
      return 403;
    case "TG_CONFLICT_LOCK_VERSION_MISMATCH":
    case "TG_STATE_INVALID_TRANSITION":
      return 409;
    default:
      return 400;
  }
}

export function tgHandleRouteError(error: unknown, requestId = "req_placeholder") {
  if (error instanceof Error) {
    return tgFail(error.message || "TG_UNKNOWN_ERROR", "request failed", [], requestId, tgErrorStatus(error.message || "TG_UNKNOWN_ERROR"));
  }
  return tgFail("TG_UNKNOWN_ERROR", "request failed", [], requestId, 500);
}
TS

cat > src/server/talent-growth/lib/authContext.ts <<'TS'
export async function getAuthContext(_request: Request) {
  return {
    employeeId: "emp_demo_01",
    companyId: "comp_demo_01",
    roleCodes: ["EMPLOYEE"],
    preferredLanguageCode: "ja",
    reportingCurrencyCode: "JPY",
    organizationId: "org_tohoku_sales",
    managerEmployeeId: "emp_demo_mgr_01"
  };
}
TS

cat > src/app/api/v1/me/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";

export async function GET(request: Request) {
  const requestId = "req_me_01";
  try {
    const auth = await getAuthContext(request);
    return tgOk({
      employee_id: auth.employeeId,
      company_id: auth.companyId,
      full_name: "山田 太郎",
      display_name: "山田 太郎",
      role_codes: auth.roleCodes,
      organization_id: auth.organizationId,
      preferred_language_code: auth.preferredLanguageCode,
      reporting_currency_code: auth.reportingCurrencyCode
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/home/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_home_01";
  try {
    return tgOk({
      role_shortcuts: ["employee_dashboard"],
      notification_unread_count: 2
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee/dashboard/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_employee_dashboard_01";
  try {
    return tgOk({
      employee_id: "emp_demo_01",
      employee_name: "山田 太郎",
      current_role_fit_score: 79.0,
      target_role_fit_score: 68.0,
      growth_potential_score: 81.0,
      current_state_rank: "B"
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee-certifications/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_employee_certifications_01";
  try {
    return tgOk({
      items: [
        {
          employee_certification_id: "ecert_demo_01",
          certification_name_snapshot: "第一種衛生管理者",
          certification_status_code: "EXPIRING_SOON"
        }
      ]
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee-skills/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_employee_skills_01";
  try {
    return tgOk({
      items: [
        {
          employee_skill_id: "eskill_demo_01",
          skill_label: "顧客対応",
          proficiency_level: 4
        }
      ]
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET(
  _request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_evaluation_sheet_01";
  try {
    const { evaluation_sheet_id } = await context.params;
    return tgOk({
      evaluation_sheet_id,
      evaluation_status_code: "SELF_REVIEW_SUBMITTED",
      current_state_rank: "B",
      future_readiness_rank: "B",
      total_evaluation_score: 75.5
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/manager/review-queue/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_manager_review_queue_01";
  try {
    return tgOk({
      items: [
        {
          evaluation_sheet_id: "esheet_demo_01",
          employee_name: "山田 太郎",
          status: "SELF_REVIEW_SUBMITTED"
        }
      ]
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/growth-plans/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_growth_plans_01";
  try {
    return tgOk({
      items: [
        {
          growth_plan_id: "gplan_demo_01",
          plan_title: "2026年上期 成長計画"
        }
      ]
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/notifications/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function GET() {
  const requestId = "req_notifications_01";
  try {
    return tgOk({
      items: [
        {
          notification_id: "notif_demo_01",
          notification_type_code: "REVIEW_REQUEST",
          unread_flag: true
        }
      ]
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/notifications/read/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";

export async function POST(request: Request) {
  const requestId = "req_notifications_read_01";
  try {
    const body = await request.json();
    const ids = Array.isArray(body.notification_ids) ? body.notification_ids : [];
    return tgOk({
      notification_ids: ids,
      marked_as_read_count: ids.length
    }, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS
~~~

# 3. kickoff done definition
- common helper files exist
- representative GET routes exist
- notification read POST exists
- app can compile with exact envelope shape baseline

# 4. guardrails
- keep stub shape aligned with exact payload docs
- no direct DB calls inside route actual file kickoff
- auth context helper imported centrally
- response/error helper imported centrally

# 5. conclusion
phase A route actual files は、
まずこの one-block kickoff で足場を作る方針で固定する。
