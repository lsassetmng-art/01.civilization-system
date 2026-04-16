# TALENT GROWTH PHASE A SERVICE ACTUAL FILE ONE-BLOCK FIXED

status: draft-phase-a-service-actual-file-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の service actual file を
最初にまとめて書き出す one-block として固定するための資料である。

# 1. target service files
- dashboardService.ts
- certificationService.ts
- skillService.ts
- evaluationService.ts
- roleRequirementService.ts
- growthPlanService.ts
- notificationService.ts
- auditService.ts
- outboxService.ts
- validationService.ts

# 2. one-block kickoff
~~~bash
mkdir -p src/server/talent-growth/services

cat > src/server/talent-growth/services/dashboardService.ts <<'TS'
export async function getEmployeeDashboard(input: {
  companyId: string;
  employeeId: string;
}) {
  return {
    employee_id: input.employeeId,
    employee_name: "山田 太郎",
    current_role_fit_score: 79.0,
    target_role_fit_score: 68.0,
    growth_potential_score: 81.0,
    current_state_rank: "B"
  };
}
TS

cat > src/server/talent-growth/services/certificationService.ts <<'TS'
export async function listEmployeeCertifications(input: {
  companyId: string;
  employeeId: string;
}) {
  return {
    items: [
      {
        employee_certification_id: "ecert_demo_01",
        employee_id: input.employeeId,
        certification_name_snapshot: "第一種衛生管理者",
        certification_status_code: "EXPIRING_SOON"
      }
    ]
  };
}

export async function createEmployeeCertification(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    employee_certification_id: "ecert_new_01",
    status: "CREATED",
    company_id: input.companyId
  };
}

export async function renewEmployeeCertification(input: {
  companyId: string;
  actorEmployeeId: string;
  employeeCertificationId: string;
  body: any;
}) {
  return {
    employee_certification_id: input.employeeCertificationId,
    status: "RENEWED"
  };
}
TS

cat > src/server/talent-growth/services/skillService.ts <<'TS'
export async function listEmployeeSkills(input: {
  companyId: string;
  employeeId: string;
}) {
  return {
    items: [
      {
        employee_skill_id: "eskill_demo_01",
        employee_id: input.employeeId,
        skill_label: "顧客対応",
        proficiency_level: 4
      }
    ]
  };
}

export async function createEmployeeSkill(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    employee_skill_id: "eskill_new_01",
    status: "CREATED"
  };
}

export async function patchEmployeeSkill(input: {
  companyId: string;
  actorEmployeeId: string;
  employeeSkillId: string;
  body: any;
}) {
  return {
    employee_skill_id: input.employeeSkillId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/evaluationService.ts <<'TS'
export async function getEvaluationSheetById(input: {
  companyId: string;
  evaluationSheetId: string;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_SUBMITTED",
    current_state_rank: "B",
    future_readiness_rank: "B",
    total_evaluation_score: 75.5
  };
}

export async function saveSelfReviewDraft(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: any;
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
  body: any;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_SUBMITTED",
    audit_trace_id: "atrace_placeholder"
  };
}

export async function saveManagerReview(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: any;
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
  body: any;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "MANAGER_REVIEW_SUBMITTED",
    audit_trace_id: "atrace_placeholder"
  };
}

export async function sendBack(input: {
  companyId: string;
  actorEmployeeId: string;
  evaluationSheetId: string;
  body: any;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SENT_BACK",
    audit_trace_id: "atrace_placeholder"
  };
}
TS

cat > src/server/talent-growth/services/roleRequirementService.ts <<'TS'
export async function listRoleRequirements(input: {
  companyId: string;
}) {
  return {
    items: [
      {
        role_requirement_id: "rr_demo_store_manager_2026h1",
        requirement_version: "2026-H1"
      }
    ]
  };
}

export async function createRoleRequirement(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    role_requirement_id: "rr_new_01",
    status: "CREATED"
  };
}

export async function patchRoleRequirement(input: {
  companyId: string;
  actorEmployeeId: string;
  roleRequirementId: string;
  body: any;
}) {
  return {
    role_requirement_id: input.roleRequirementId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/growthPlanService.ts <<'TS'
export async function listGrowthPlans(input: {
  companyId: string;
  employeeId: string;
}) {
  return {
    items: [
      {
        growth_plan_id: "gplan_demo_01",
        employee_id: input.employeeId,
        plan_title: "2026年上期 成長計画"
      }
    ]
  };
}

export async function createGrowthPlan(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    growth_plan_id: "gplan_new_01",
    status: "CREATED"
  };
}

export async function updateGrowthProgress(input: {
  companyId: string;
  actorEmployeeId: string;
  growthPlanId: string;
  body: any;
}) {
  return {
    growth_plan_id: input.growthPlanId,
    status: "UPDATED"
  };
}
TS

cat > src/server/talent-growth/services/notificationService.ts <<'TS'
export async function listNotifications(input: {
  companyId: string;
  employeeId: string;
}) {
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

export async function markNotificationsRead(input: {
  companyId: string;
  employeeId: string;
  notificationIds: string[];
}) {
  return {
    notification_ids: input.notificationIds,
    marked_as_read_count: input.notificationIds.length
  };
}
TS

cat > src/server/talent-growth/services/auditService.ts <<'TS'
export async function searchAuditLogs(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
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

cat > src/server/talent-growth/services/outboxService.ts <<'TS'
export async function appendOutboxEvent(input: {
  companyId: string;
  eventName: string;
  eventDomain: string;
  entityType: string;
  entityId: string;
  payloadJson: unknown;
  auditTraceId: string | null;
  actorEmployeeId: string;
}) {
  return {
    outbox_event_id: "outevt_placeholder",
    status: "READY"
  };
}
TS

cat > src/server/talent-growth/services/validationService.ts <<'TS'
export function assertValidationOk(validation: { ok: boolean; issues?: unknown[] }) {
  if (!validation.ok) {
    const error = new Error("TG_VALIDATION_ERROR");
    throw error;
  }
}
TS
~~~

# 3. service file rule
- routeから直接DBを触らない
- serviceが状態遷移とaudit/outbox責務を持つ
- repository呼び出しの集約点とする
- user-facing envelopeは返さず domain result を返す

# 4. conclusion
phase A service actual file は、
この one-block で first actual services を一括配置する方針で固定する。
