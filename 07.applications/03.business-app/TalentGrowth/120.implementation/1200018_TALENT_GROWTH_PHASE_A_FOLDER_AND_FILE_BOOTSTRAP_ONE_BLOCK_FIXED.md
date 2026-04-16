# TALENT GROWTH PHASE A FOLDER AND FILE BOOTSTRAP ONE-BLOCK FIXED

status: draft-phase-a-folder-and-file-bootstrap-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の実装に必要な
folder / file bootstrap を
一括で作る one-block として固定するための資料である。

# 1. bootstrap target
app folders:
- route files
- service files
- repository files
- validation files
- shared helper files

# 2. bootstrap one-block
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
  src/server/talent-growth/lib \
  src/server/talent-growth/services \
  src/server/talent-growth/repositories \
  src/server/talent-growth/validation

touch \
  src/app/api/v1/me/route.ts \
  src/app/api/v1/home/route.ts \
  src/app/api/v1/employee/dashboard/route.ts \
  src/app/api/v1/employee-certifications/route.ts \
  src/app/api/v1/employee-skills/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back/route.ts \
  src/app/api/v1/manager/review-queue/route.ts \
  src/app/api/v1/role-requirements/route.ts \
  src/app/api/v1/growth-plans/route.ts \
  src/app/api/v1/growth-plans/[growth_plan_id]/progress/route.ts \
  src/app/api/v1/audit-logs/search/route.ts \
  src/app/api/v1/notifications/route.ts \
  src/app/api/v1/notifications/read/route.ts \
  src/server/talent-growth/lib/response.ts \
  src/server/talent-growth/lib/authContext.ts \
  src/server/talent-growth/services/dashboardService.ts \
  src/server/talent-growth/services/certificationService.ts \
  src/server/talent-growth/services/skillService.ts \
  src/server/talent-growth/services/evaluationService.ts \
  src/server/talent-growth/services/roleRequirementService.ts \
  src/server/talent-growth/services/growthPlanService.ts \
  src/server/talent-growth/services/auditService.ts \
  src/server/talent-growth/services/notificationService.ts \
  src/server/talent-growth/services/outboxService.ts \
  src/server/talent-growth/services/validationService.ts \
  src/server/talent-growth/repositories/employeeProfileRepository.ts \
  src/server/talent-growth/repositories/certificationRepository.ts \
  src/server/talent-growth/repositories/skillRepository.ts \
  src/server/talent-growth/repositories/evaluationRepository.ts \
  src/server/talent-growth/repositories/roleRequirementRepository.ts \
  src/server/talent-growth/repositories/growthPlanRepository.ts \
  src/server/talent-growth/repositories/auditRepository.ts \
  src/server/talent-growth/repositories/outboxRepository.ts \
  src/server/talent-growth/repositories/notificationRepository.ts \
  src/server/talent-growth/validation/validateCommon.ts \
  src/server/talent-growth/validation/validateCertification.ts \
  src/server/talent-growth/validation/validateSkill.ts \
  src/server/talent-growth/validation/validateEvaluation.ts \
  src/server/talent-growth/validation/validateRoleRequirement.ts \
  src/server/talent-growth/validation/validateGrowthPlan.ts \
  src/server/talent-growth/validation/validationError.ts
~~~

# 3. bootstrap done definition
- target folders exist
- target files exist
- build can begin without path confusion
- route / service / repository / validation split is visible

# 4. conclusion
phase A bootstrap は、
手で作らず一括作成で始める方針を正式化する。
