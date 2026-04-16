# TALENT GROWTH PHASE A END-TO-END KICKOFF ONE-BLOCK FIXED

status: draft-phase-a-end-to-end-kickoff-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A を
route / service / repository / validation / helper / build / smoke まで
一気に着手するための end-to-end kickoff one-block を固定するための資料である。

# 1. target scope
phase A kickoff target:
- helper files
- validation files
- service files
- repository files
- representative read/write route files
- build / smoke execution baseline

# 2. kickoff rule
- まず path を作る
- 次に helper を置く
- 次に validation / service / repository を置く
- 次に route を置く
- 最後に build / curl smoke へ進む
- route から DB を直接触らない
- state-changing write は service -> tx-aware repository -> audit/outbox 前提

# 3. end-to-end kickoff one-block
~~~bash
mkdir -p \
  src/app/api/v1/me \
  src/app/api/v1/home \
  src/app/api/v1/employee/dashboard \
  src/app/api/v1/employee-certifications \
  src/app/api/v1/employee-certifications/[employee_certification_id]/renewal \
  src/app/api/v1/employee-skills \
  src/app/api/v1/employee-skills/[employee_skill_id] \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id] \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back \
  src/app/api/v1/manager/review-queue \
  src/app/api/v1/role-requirements \
  src/app/api/v1/role-requirements/[role_requirement_id] \
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
  src/server/talent-growth/lib/db.ts \
  src/server/talent-growth/lib/response.ts \
  src/server/talent-growth/lib/authContext.ts \
  src/server/talent-growth/services/dashboardService.ts \
  src/server/talent-growth/services/certificationService.ts \
  src/server/talent-growth/services/skillService.ts \
  src/server/talent-growth/services/evaluationService.ts \
  src/server/talent-growth/services/roleRequirementService.ts \
  src/server/talent-growth/services/growthPlanService.ts \
  src/server/talent-growth/services/notificationService.ts \
  src/server/talent-growth/services/auditService.ts \
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
  src/server/talent-growth/validation/validationError.ts \
  src/server/talent-growth/validation/validateCommon.ts \
  src/server/talent-growth/validation/validateCertification.ts \
  src/server/talent-growth/validation/validateSkill.ts \
  src/server/talent-growth/validation/validateEvaluation.ts \
  src/server/talent-growth/validation/validateRoleRequirement.ts \
  src/server/talent-growth/validation/validateGrowthPlan.ts \
  src/app/api/v1/me/route.ts \
  src/app/api/v1/home/route.ts \
  src/app/api/v1/employee/dashboard/route.ts \
  src/app/api/v1/employee-certifications/route.ts \
  src/app/api/v1/employee-certifications/[employee_certification_id]/renewal/route.ts \
  src/app/api/v1/employee-skills/route.ts \
  src/app/api/v1/employee-skills/[employee_skill_id]/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit/route.ts \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back/route.ts \
  src/app/api/v1/manager/review-queue/route.ts \
  src/app/api/v1/role-requirements/route.ts \
  src/app/api/v1/role-requirements/[role_requirement_id]/route.ts \
  src/app/api/v1/growth-plans/route.ts \
  src/app/api/v1/growth-plans/[growth_plan_id]/progress/route.ts \
  src/app/api/v1/audit-logs/search/route.ts \
  src/app/api/v1/notifications/route.ts \
  src/app/api/v1/notifications/read/route.ts
~~~

# 4. kickoff done definition
- folder split visible
- helper files exist
- validation files exist
- service files exist
- repository files exist
- representative routes exist
- build and curl smoke can start

# 5. non-negotiables
- no direct DB access in route
- no direct notification delivery in route/service
- no missing audit for score/state change
- no outbox bypass
- no offline final submit
- no blanket admin raw access

# 6. conclusion
phase A kickoff は、
この one-block を入口として end-to-end に着手する方針で固定する。
