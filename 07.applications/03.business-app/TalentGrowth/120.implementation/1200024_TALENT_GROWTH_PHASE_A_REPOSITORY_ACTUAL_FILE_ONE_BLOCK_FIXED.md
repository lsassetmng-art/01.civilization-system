# TALENT GROWTH PHASE A REPOSITORY ACTUAL FILE ONE-BLOCK FIXED

status: draft-phase-a-repository-actual-file-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の repository actual file を
最初にまとめて書き出す one-block として固定するための資料である。

# 1. target repository files
- employeeProfileRepository.ts
- certificationRepository.ts
- skillRepository.ts
- evaluationRepository.ts
- roleRequirementRepository.ts
- growthPlanRepository.ts
- auditRepository.ts
- outboxRepository.ts
- notificationRepository.ts

# 2. one-block kickoff
~~~bash
mkdir -p src/server/talent-growth/repositories

cat > src/server/talent-growth/repositories/employeeProfileRepository.ts <<'TS'
export async function findEmployeeProfile(input: {
  companyId: string;
  employeeId: string;
}) {
  return {
    employee_id: input.employeeId,
    company_id: input.companyId,
    full_name: "山田 太郎"
  };
}
TS

cat > src/server/talent-growth/repositories/certificationRepository.ts <<'TS'
export async function listEmployeeCertificationsRepo(input: {
  companyId: string;
  employeeId: string;
}) {
  return [];
}

export async function insertEmployeeCertificationRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    employee_certification_id: "ecert_new_01"
  };
}

export async function renewEmployeeCertificationRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  employeeCertificationId: string;
  body: any;
}) {
  return {
    employee_certification_id: input.employeeCertificationId
  };
}
TS

cat > src/server/talent-growth/repositories/skillRepository.ts <<'TS'
export async function listEmployeeSkillsRepo(input: {
  companyId: string;
  employeeId: string;
}) {
  return [];
}

export async function insertEmployeeSkillRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    employee_skill_id: "eskill_new_01"
  };
}

export async function updateEmployeeSkillRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  employeeSkillId: string;
  body: any;
}) {
  return {
    employee_skill_id: input.employeeSkillId
  };
}
TS

cat > src/server/talent-growth/repositories/evaluationRepository.ts <<'TS'
export async function findEvaluationSheetRepo(input: {
  companyId: string;
  evaluationSheetId: string;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_DRAFT",
    lock_version: 1
  };
}

export async function updateEvaluationSheetStatusRepo(input: {
  companyId: string;
  evaluationSheetId: string;
  nextStatusCode: string;
  actorEmployeeId: string;
  auditTraceId: string | null;
  lockVersion?: number;
}) {
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: input.nextStatusCode,
    lock_version: 2
  };
}
TS

cat > src/server/talent-growth/repositories/roleRequirementRepository.ts <<'TS'
export async function listRoleRequirementsRepo(input: {
  companyId: string;
}) {
  return [];
}

export async function insertRoleRequirementRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    role_requirement_id: "rr_new_01"
  };
}

export async function updateRoleRequirementRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  roleRequirementId: string;
  body: any;
}) {
  return {
    role_requirement_id: input.roleRequirementId
  };
}
TS

cat > src/server/talent-growth/repositories/growthPlanRepository.ts <<'TS'
export async function listGrowthPlansRepo(input: {
  companyId: string;
  employeeId: string;
}) {
  return [];
}

export async function insertGrowthPlanRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return {
    growth_plan_id: "gplan_new_01"
  };
}

export async function updateGrowthProgressRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  growthPlanId: string;
  body: any;
}) {
  return {
    growth_plan_id: input.growthPlanId
  };
}
TS

cat > src/server/talent-growth/repositories/auditRepository.ts <<'TS'
export async function insertEvaluationAuditRepo(input: {
  companyId: string;
  evaluationSheetId: string;
  changedByEmployeeId: string;
  changedByRoleCode: string;
  actionType: string;
  changedFieldName: string;
  oldValueText?: string | null;
  newValueText?: string | null;
  changeReasonText?: string | null;
  auditTraceId: string | null;
}) {
  return {
    evaluation_change_audit_id: "eaudit_placeholder"
  };
}

export async function searchAuditLogsRepo(input: {
  companyId: string;
  actorEmployeeId: string;
  body: any;
}) {
  return [];
}
TS

cat > src/server/talent-growth/repositories/outboxRepository.ts <<'TS'
export async function insertOutboxEventRepo(input: {
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
    outbox_event_id: "outevt_placeholder"
  };
}
TS

cat > src/server/talent-growth/repositories/notificationRepository.ts <<'TS'
export async function listNotificationsRepo(input: {
  companyId: string;
  employeeId: string;
}) {
  return [];
}

export async function markNotificationsReadRepo(input: {
  companyId: string;
  employeeId: string;
  notificationIds: string[];
}) {
  return input.notificationIds;
}
TS
~~~

# 3. repository file rule
- companyId を必ず受け取る
- DB-focused only
- route / response shape を持たない
- user-facing message を返さない
- lock_version aware update は repository responsibility

# 4. conclusion
phase A repository actual file は、
この one-block で first actual repositories を一括配置する方針で固定する。
