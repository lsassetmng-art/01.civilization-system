# TALENT GROWTH PHASE A API ROUTE FILE SKELETON FIXED

status: draft-phase-a-api-route-file-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A で最初に作る API route file skeleton を固定するための資料である。

# 1. phase A route set
- GET /api/v1/me
- GET /api/v1/home
- GET /api/v1/employee/dashboard
- GET /api/v1/employee-certifications
- POST /api/v1/employee-certifications
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal
- GET /api/v1/employee-skills
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{employee_skill_id}
- GET /api/v1/evaluation-sheets/{evaluation_sheet_id}
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
- GET /api/v1/manager/review-queue
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
- GET /api/v1/role-requirements
- POST /api/v1/role-requirements
- PATCH /api/v1/role-requirements/{role_requirement_id}
- GET /api/v1/growth-plans
- POST /api/v1/growth-plans
- POST /api/v1/growth-plans/{growth_plan_id}/progress
- POST /api/v1/audit-logs/search
- GET /api/v1/notifications
- POST /api/v1/notifications/read

# 2. recommended folder split
example semantic split:
- api/v1/me
- api/v1/home
- api/v1/employee/dashboard
- api/v1/employee-certifications
- api/v1/employee-skills
- api/v1/evaluation-sheets/[evaluation_sheet_id]
- api/v1/manager/review-queue
- api/v1/role-requirements
- api/v1/growth-plans
- api/v1/audit-logs
- api/v1/notifications

# 3. per-route skeleton rule
every route file should have:
- auth context load
- scope / role check
- request parse
- validation
- service call
- audit_trace_id / request_id
- standard success or error envelope

# 4. representative route skeleton
~~~typescript
export async function POST(request: Request, context: { params: { evaluation_sheet_id: string } }) {
  const requestId = "req_placeholder";
  const evaluationSheetId = context.params.evaluation_sheet_id;

  // 1. auth context
  // 2. role / scope guard
  // 3. parse body
  // 4. validate payload
  // 5. call service
  // 6. append audit / outbox where needed

  return Response.json({
    ok: true,
    data: {
      evaluation_sheet_id: evaluationSheetId,
      status: "SELF_REVIEW_DRAFT"
    },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  });
}
~~~

# 5. route to service ownership
- dashboard routes -> dashboard service
- certification routes -> certification service
- skill routes -> skill service
- evaluation routes -> evaluation service
- growth routes -> growth service
- audit routes -> audit service
- notification routes -> notification service

# 6. conclusion
phase A route file skeleton は、
service split 前提で薄い route 層として固定する。
