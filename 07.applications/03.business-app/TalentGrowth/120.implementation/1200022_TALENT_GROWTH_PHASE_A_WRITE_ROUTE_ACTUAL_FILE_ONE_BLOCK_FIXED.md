# TALENT GROWTH PHASE A WRITE ROUTE ACTUAL FILE ONE-BLOCK FIXED

status: draft-phase-a-write-route-actual-file-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の write route actual file を
最初にまとめて書き出す one-block として固定するための資料である。

# 1. target write routes
- POST /api/v1/employee-certifications
- POST /api/v1/employee-certifications/{employee_certification_id}/renewal
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{employee_skill_id}
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/self-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/save
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/manager-review/submit
- POST /api/v1/evaluation-sheets/{evaluation_sheet_id}/send-back
- POST /api/v1/role-requirements
- PATCH /api/v1/role-requirements/{role_requirement_id}
- POST /api/v1/growth-plans
- POST /api/v1/growth-plans/{growth_plan_id}/progress

# 2. one-block kickoff
~~~bash
mkdir -p \
  src/app/api/v1/employee-certifications \
  src/app/api/v1/employee-certifications/[employee_certification_id]/renewal \
  src/app/api/v1/employee-skills \
  src/app/api/v1/employee-skills/[employee_skill_id] \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit \
  src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back \
  src/app/api/v1/role-requirements \
  src/app/api/v1/role-requirements/[role_requirement_id] \
  src/app/api/v1/growth-plans \
  src/app/api/v1/growth-plans/[growth_plan_id]/progress

cat > src/app/api/v1/employee-certifications/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateCreateCertificationPayload } from "@/server/talent-growth/validation/validateCertification";
import { createEmployeeCertification } from "@/server/talent-growth/services/certificationService";

export async function POST(request: Request) {
  const requestId = "req_create_certification_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();

    const validation = validateCreateCertificationPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await createEmployeeCertification({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee-certifications/[employee_certification_id]/renewal/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { renewEmployeeCertification } from "@/server/talent-growth/services/certificationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ employee_certification_id: string }> }
) {
  const requestId = "req_renew_certification_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { employee_certification_id } = await context.params;

    const result = await renewEmployeeCertification({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      employeeCertificationId: employee_certification_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee-skills/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateCreateSkillPayload } from "@/server/talent-growth/validation/validateSkill";
import { createEmployeeSkill } from "@/server/talent-growth/services/skillService";

export async function POST(request: Request) {
  const requestId = "req_create_skill_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();

    const validation = validateCreateSkillPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await createEmployeeSkill({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/employee-skills/[employee_skill_id]/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validatePatchSkillPayload } from "@/server/talent-growth/validation/validateSkill";
import { patchEmployeeSkill } from "@/server/talent-growth/services/skillService";

export async function PATCH(
  request: Request,
  context: { params: Promise<{ employee_skill_id: string }> }
) {
  const requestId = "req_patch_skill_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { employee_skill_id } = await context.params;

    const validation = validatePatchSkillPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await patchEmployeeSkill({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      employeeSkillId: employee_skill_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/save/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateSelfReviewSavePayload } from "@/server/talent-growth/validation/validateEvaluation";
import { saveSelfReviewDraft } from "@/server/talent-growth/services/evaluationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_self_review_save_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { evaluation_sheet_id } = await context.params;

    const validation = validateSelfReviewSavePayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await saveSelfReviewDraft({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      evaluationSheetId: evaluation_sheet_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/self-review/submit/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateSelfReviewSubmitPayload } from "@/server/talent-growth/validation/validateEvaluation";
import { submitSelfReview } from "@/server/talent-growth/services/evaluationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_self_review_submit_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { evaluation_sheet_id } = await context.params;

    const validation = validateSelfReviewSubmitPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await submitSelfReview({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      evaluationSheetId: evaluation_sheet_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/save/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateManagerReviewSavePayload } from "@/server/talent-growth/validation/validateEvaluation";
import { saveManagerReview } from "@/server/talent-growth/services/evaluationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_manager_review_save_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { evaluation_sheet_id } = await context.params;

    const validation = validateManagerReviewSavePayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await saveManagerReview({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      evaluationSheetId: evaluation_sheet_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/manager-review/submit/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateManagerReviewSubmitPayload } from "@/server/talent-growth/validation/validateEvaluation";
import { submitManagerReview } from "@/server/talent-growth/services/evaluationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_manager_review_submit_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { evaluation_sheet_id } = await context.params;

    const validation = validateManagerReviewSubmitPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await submitManagerReview({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      evaluationSheetId: evaluation_sheet_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/evaluation-sheets/[evaluation_sheet_id]/send-back/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateSendBackPayload } from "@/server/talent-growth/validation/validateEvaluation";
import { sendBack } from "@/server/talent-growth/services/evaluationService";

export async function POST(
  request: Request,
  context: { params: Promise<{ evaluation_sheet_id: string }> }
) {
  const requestId = "req_send_back_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { evaluation_sheet_id } = await context.params;

    const validation = validateSendBackPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await sendBack({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      evaluationSheetId: evaluation_sheet_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/role-requirements/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateRoleRequirementPayload } from "@/server/talent-growth/validation/validateRoleRequirement";
import { createRoleRequirement } from "@/server/talent-growth/services/roleRequirementService";

export async function POST(request: Request) {
  const requestId = "req_create_role_requirement_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();

    const validation = validateRoleRequirementPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await createRoleRequirement({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/role-requirements/[role_requirement_id]/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateRoleRequirementPayload } from "@/server/talent-growth/validation/validateRoleRequirement";
import { patchRoleRequirement } from "@/server/talent-growth/services/roleRequirementService";

export async function PATCH(
  request: Request,
  context: { params: Promise<{ role_requirement_id: string }> }
) {
  const requestId = "req_patch_role_requirement_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { role_requirement_id } = await context.params;

    const validation = validateRoleRequirementPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await patchRoleRequirement({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      roleRequirementId: role_requirement_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/growth-plans/route.ts <<'TS'
import { tgOk, tgHandleRouteError, tgFailValidation } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { validateGrowthPlanPayload } from "@/server/talent-growth/validation/validateGrowthPlan";
import { createGrowthPlan } from "@/server/talent-growth/services/growthPlanService";

export async function POST(request: Request) {
  const requestId = "req_create_growth_plan_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();

    const validation = validateGrowthPlanPayload(body);
    if (!validation.ok) return tgFailValidation(validation.issues, requestId);

    const result = await createGrowthPlan({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS

cat > src/app/api/v1/growth-plans/[growth_plan_id]/progress/route.ts <<'TS'
import { tgOk, tgHandleRouteError } from "@/server/talent-growth/lib/response";
import { getAuthContext } from "@/server/talent-growth/lib/authContext";
import { updateGrowthProgress } from "@/server/talent-growth/services/growthPlanService";

export async function POST(
  request: Request,
  context: { params: Promise<{ growth_plan_id: string }> }
) {
  const requestId = "req_growth_progress_01";
  try {
    const auth = await getAuthContext(request);
    const body = await request.json();
    const { growth_plan_id } = await context.params;

    const result = await updateGrowthProgress({
      companyId: auth.companyId,
      actorEmployeeId: auth.employeeId,
      growthPlanId: growth_plan_id,
      body
    });

    return tgOk(result, requestId);
  } catch (error) {
    return tgHandleRouteError(error, requestId);
  }
}
TS
~~~

# 3. actual write route done definition
- write route files exist
- shared helper imports are unified
- validation path is connected
- service call shape is fixed
- exact envelope is maintained

# 4. route guardrails
- no direct repository call from route
- no direct outbox insert from route
- no direct audit insert from route
- route validates and delegates
- all write routes return exact meta envelope

# 5. conclusion
phase A write routes は、
この one-block で first actual files を一括配置する方針で固定する。
