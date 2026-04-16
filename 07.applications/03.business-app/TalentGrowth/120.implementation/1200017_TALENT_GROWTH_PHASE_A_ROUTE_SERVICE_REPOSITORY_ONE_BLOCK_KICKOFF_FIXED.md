# TALENT GROWTH PHASE A ROUTE SERVICE REPOSITORY ONE-BLOCK KICKOFF FIXED

status: draft-phase-a-route-service-repository-one-block-kickoff-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A を
route / service / repository 単位で
一気に着手する kickoff one-block を固定するための資料である。

# 1. target scope
phase A kickoff target:
- read route baseline
- write route baseline
- service skeleton baseline
- repository skeleton baseline
- shared validation baseline
- audit / outbox baseline hooks

# 2. architectural split
route layer:
- request parse
- auth context load
- validation call
- service call
- success/error envelope

service layer:
- state machine
- scope decision
- transaction orchestration
- audit append
- outbox append

repository layer:
- select / insert / update
- company scope explicit
- lock_version aware update
- minimal DB return data

# 3. kickoff one-block example
~~~bash
mkdir -p \
  src/app/api/v1/me \
  src/app/api/v1/home \
  src/app/api/v1/employee/dashboard \
  src/app/api/v1/employee-certifications \
  src/app/api/v1/employee-skills \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id] \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back \
  src/app/api/v1/manager/review-queue \
  src/app/api/v1/role-requirements \
  src/app/api/v1/growth-plans \
  src/app/api/v1/growth-plans/[growth_plan_id]/progress \
  src/app/api/v1/audit-logs/search \
  src/app/api/v1/notifications \
  src/app/api/v1/notifications/read \
  src/server/talent-growth/services \
  src/server/talent-growth/repositories \
  src/server/talent-growth/validation \
  src/server/talent-growth/lib

cat > src/server/talent-growth/lib/response.ts <<'TS'
export function ok(data: unknown, requestId = "req_placeholder") {
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

export function fail(code: string, message: string, details: unknown[] = [], requestId = "req_placeholder") {
  return Response.json({
    ok: false,
    error: { code, message, details },
    meta: {
      request_id: requestId,
      server_time: new Date().toISOString(),
      version: "v1"
    }
  }, { status: 400 });
}
TS

cat > src/server/talent-growth/services/evaluationService.ts <<'TS'
export async function getEvaluationSheetById(input: {
  companyId: string;
  evaluationSheetId: string;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_SUBMITTED"
  };
}

export async function saveSelfReviewDraft(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: unknown;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_DRAFT",
    sync_status: "SAVED"
  };
}

export async function submitSelfReview(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: unknown;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_SUBMITTED"
  };
}

export async function saveManagerReview(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: unknown;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "MANAGER_REVIEW_DRAFT",
    lock_version: 2
  };
}

export async function submitManagerReview(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: unknown;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "MANAGER_REVIEW_SUBMITTED"
  };
}

export async function sendBack(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: unknown;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SENT_BACK"
  };
}
TS

cat > src/server/talent-growth/services/dashboardService.ts <<'TS'
export async function getEmployeeDashboard() {
  return {
    employee_id: "emp_demo_01",
    employee_name: "山田 太郎",
    current_role_fit_score: 79.0,
    target_role_fit_score: 68.0,
    growth_potential_score: 81.0,
    current_state_rank: "B"
  };
}
TS

cat > src/server/talent-growth/services/certificationService.ts <<'TS'
export async function listEmployeeCertifications() {
  return {
    items: [
      {
        employee_certification_id: "ecert_demo_01",
        certification_name_snapshot: "第一種衛生管理者",
        certification_status_code: "EXPIRING_SOON"
      }
    ]
  };
}

export async function createEmployeeCertification(body: unknown) {
  return {
    employee_certification_id: "ecert_new_01",
    status: "CREATED"
  };
}

export async function renewEmployeeCertification(input: {
  employeeCertificationId: string;
  body: unknown;
}) {
  return {
    employee_certification_id: input.employeeCertificationId,
    status: "RENEWED"
  };
}
TS

cat > src/server/talent-growth/services/skillService.ts <<'TS'
export async function listEmployeeSkills() {
  return {
    items: [
      {
        employee_skill_id: "eskill_demo_01",
        skill_label: "顧客対応",
        proficiency_level: 4
      }
    ]
  };
}

export async function createEmployeeSkill(body: unknown) {
  return {
    employee_skill_id: "eskill_new_01",
    status: "CREATED"
  };
}

export async function patchEmployeeSkill(input: {
  employeeSkillId: string;
  body: unknown;
}) {
  return {
    employee_skill_id: input.employeeSkillId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/roleRequirementService.ts <<'TS'
export async function listRoleRequirements() {
  return {
    items: [
      {
        role_requirement_id: "rr_demo_store_manager_2026h1",
        requirement_version: "2026-H1"
      }
    ]
  };
}

export async function createRoleRequirement(body: unknown) {
  return {
    role_requirement_id: "rr_new_01",
    status: "CREATED"
  };
}

export async function patchRoleRequirement(input: {
  roleRequirementId: string;
  body: unknown;
}) {
  return {
    role_requirement_id: input.roleRequirementId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/growthPlanService.ts <<'TS'
export async function listGrowthPlans() {
  return {
    items: [
      {
        growth_plan_id: "gplan_demo_01",
        plan_title: "2026年上期 成長計画"
      }
    ]
  };
}

export async function createGrowthPlan(body: unknown) {
  return {
    growth_plan_id: "gplan_new_01",
    status: "CREATED"
  };
}

export async function updateGrowthProgress(input: {
  growthPlanId: string;
  body: unknown;
}) {
  return {
    growth_plan_id: input.growthPlanId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/notificationService.ts <<'TS'
export async function listNotifications() {
  return {
    items: [
      {
        notification_id: "notif_demo_01",
        notification_type_code: "REVIEW_REQUEST",
        unread_flag: true
      }
    ]
  };
}

export async function markNotificationsRead(body: { notification_ids?: string[] }) {
  return {
    notification_ids: body.notification_ids ?? [],
    marked_as_read_count: Array.isArray(body.notification_ids) ? body.notification_ids.length : 0
  };
}
TS

cat > src/server/talent-growth/services/auditService.ts <<'TS'
export async function searchAuditLogs() {
  return {
    items: [
      {
        entity_id: "esheet_demo_01",
        action_type: "MANAGER_REVIEW_SAVE",
        audit_trace_id: "atrace_demo_01"
      }
    ]
  };
}
TS
~~~

# 4. kickoff completion rule
kickoff one-block is complete when:
- route files exist
- service files exist
- repository placeholders exist
- common response helper exists
- app can boot with stub endpoints

# 5. guardrails
- route layer thin
- service layer owns orchestration
- repository layer owns SQL
- no direct notification send
- no missing audit/outbox hooks in write planning

# 6. conclusion
phase A kickoff は、
まず route / service / repository の空骨格をまとめて置く方式で固定する。
