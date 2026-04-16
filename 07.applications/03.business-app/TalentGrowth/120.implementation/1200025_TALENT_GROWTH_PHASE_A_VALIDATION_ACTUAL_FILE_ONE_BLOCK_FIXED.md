# TALENT GROWTH PHASE A VALIDATION ACTUAL FILE ONE-BLOCK FIXED

status: draft-phase-a-validation-actual-file-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の validation actual file を
最初にまとめて書き出す one-block として固定するための資料である。

# 1. target validation files
- validationError.ts
- validateCommon.ts
- validateCertification.ts
- validateSkill.ts
- validateEvaluation.ts
- validateRoleRequirement.ts
- validateGrowthPlan.ts

# 2. one-block kickoff
~~~bash
mkdir -p src/server/talent-growth/validation

cat > src/server/talent-growth/validation/validationError.ts <<'TS'
export type ValidationIssue = {
  field: string;
  reason: string;
  code: string;
};

export type ValidationResult =
  | { ok: true }
  | { ok: false; issues: ValidationIssue[] };

export function okResult(): ValidationResult {
  return { ok: true };
}

export function errorResult(issues: ValidationIssue[]): ValidationResult {
  return { ok: false, issues };
}
TS

cat > src/server/talent-growth/validation/validateCommon.ts <<'TS'
import type { ValidationIssue } from "./validationError";

export function requireString(value: unknown, field: string, maxLength?: number): ValidationIssue[] {
  const issues: ValidationIssue[] = [];
  if (typeof value !== "string" || value.trim() === "") {
    issues.push({ field, reason: "required", code: "TG_VALIDATION_REQUIRED" });
    return issues;
  }
  if (maxLength && value.length > maxLength) {
    issues.push({ field, reason: "max_length_exceeded", code: "TG_VALIDATION_ERROR" });
  }
  return issues;
}

export function requireBooleanTrue(value: unknown, field: string): ValidationIssue[] {
  if (value !== true) {
    return [{ field, reason: "must_be_true", code: "TG_VALIDATION_REQUIRED" }];
  }
  return [];
}

export function requireNumberRange(value: unknown, field: string, min: number, max: number): ValidationIssue[] {
  if (typeof value !== "number" || Number.isNaN(value)) {
    return [{ field, reason: "invalid_number", code: "TG_VALIDATION_ERROR" }];
  }
  if (value < min || value > max) {
    return [{ field, reason: "out_of_range", code: "TG_VALIDATION_INVALID_SCORE_RANGE" }];
  }
  return [];
}

export function requireEnum(value: unknown, field: string, allowed: string[]): ValidationIssue[] {
  if (typeof value !== "string" || !allowed.includes(value)) {
    return [{ field, reason: "invalid_enum", code: "TG_VALIDATION_INVALID_ENUM" }];
  }
  return [];
}
TS

cat > src/server/talent-growth/validation/validateCertification.ts <<'TS'
import { errorResult, okResult, type ValidationResult, type ValidationIssue } from "./validationError";
import { requireString } from "./validateCommon";

export function validateCreateCertificationPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireString(body.certification_id, "certification_id", 100));

  if (body.acquired_date && body.expiry_date && body.expiry_date < body.acquired_date) {
    issues.push({
      field: "expiry_date",
      reason: "must_be_greater_than_or_equal_to_acquired_date",
      code: "TG_VALIDATION_INVALID_DATE_RANGE"
    });
  }

  return issues.length ? errorResult(issues) : okResult();
}
TS

cat > src/server/talent-growth/validation/validateSkill.ts <<'TS'
import { errorResult, okResult, type ValidationResult, type ValidationIssue } from "./validationError";
import { requireString, requireNumberRange } from "./validateCommon";

export function validateCreateSkillPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireString(body.skill_id, "skill_id", 100));
  issues.push(...requireNumberRange(body.proficiency_level, "proficiency_level", 1, 5));
  return issues.length ? errorResult(issues) : okResult();
}

export function validatePatchSkillPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  if (body.self_rating != null) {
    issues.push(...requireNumberRange(body.self_rating, "self_rating", 0, 100));
  }
  if (body.manager_rating != null) {
    issues.push(...requireNumberRange(body.manager_rating, "manager_rating", 0, 100));
  }
  return issues.length ? errorResult(issues) : okResult();
}
TS

cat > src/server/talent-growth/validation/validateEvaluation.ts <<'TS'
import { errorResult, okResult, type ValidationResult, type ValidationIssue } from "./validationError";
import { requireString, requireBooleanTrue, requireNumberRange, requireEnum } from "./validateCommon";

export function validateSelfReviewSavePayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  return issues.length ? errorResult(issues) : okResult();
}

export function validateSelfReviewSubmitPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireBooleanTrue(body.submit_confirmed, "submit_confirmed"));
  return issues.length ? errorResult(issues) : okResult();
}

export function validateManagerReviewSavePayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.manager_employee_id, "manager_employee_id", 100));

  if (body.score_inputs) {
    issues.push(...requireNumberRange(body.score_inputs.behavior_score, "score_inputs.behavior_score", 0, 100));
    issues.push(...requireNumberRange(body.score_inputs.performance_score, "score_inputs.performance_score", 0, 100));
    issues.push(...requireNumberRange(body.score_inputs.current_role_fit_score, "score_inputs.current_role_fit_score", 0, 100));
    issues.push(...requireNumberRange(body.score_inputs.target_role_fit_score, "score_inputs.target_role_fit_score", 0, 100));
    issues.push(...requireNumberRange(body.score_inputs.growth_potential_score, "score_inputs.growth_potential_score", 0, 100));
  }

  return issues.length ? errorResult(issues) : okResult();
}

export function validateManagerReviewSubmitPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.manager_employee_id, "manager_employee_id", 100));
  issues.push(...requireBooleanTrue(body.submit_confirmed, "submit_confirmed"));
  return issues.length ? errorResult(issues) : okResult();
}

export function validateSendBackPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireEnum(body.target_role_code, "target_role_code", ["EMPLOYEE", "MANAGER", "HR"]));
  issues.push(...requireString(body.send_back_reason, "send_back_reason", 2000));
  return issues.length ? errorResult(issues) : okResult();
}
TS

cat > src/server/talent-growth/validation/validateRoleRequirement.ts <<'TS'
import { errorResult, okResult, type ValidationResult, type ValidationIssue } from "./validationError";
import { requireString, requireNumberRange } from "./validateCommon";

export function validateRoleRequirementPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.job_role_id, "job_role_id", 100));
  issues.push(...requireString(body.requirement_version, "requirement_version", 50));

  const fields = [
    "overall_weight_skill",
    "overall_weight_certification",
    "overall_weight_experience",
    "overall_weight_performance",
    "overall_weight_behavior",
    "overall_weight_growth"
  ];

  let total = 0;
  for (const field of fields) {
    issues.push(...requireNumberRange(body[field], field, 0, 100));
    if (typeof body[field] === "number") total += body[field];
  }

  if (total !== 100) {
    issues.push({
      field: "total_weight_check",
      reason: "weight_sum_must_equal_100",
      code: "TG_VALIDATION_ERROR"
    });
  }

  return issues.length ? errorResult(issues) : okResult();
}
TS

cat > src/server/talent-growth/validation/validateGrowthPlan.ts <<'TS'
import { errorResult, okResult, type ValidationResult, type ValidationIssue } from "./validationError";
import { requireString, requireEnum } from "./validateCommon";

export function validateGrowthPlanPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireString(body.plan_title, "plan_title", 200));

  if (!Array.isArray(body.actions) || body.actions.length === 0) {
    issues.push({
      field: "actions",
      reason: "must_have_at_least_one_action",
      code: "TG_VALIDATION_REQUIRED"
    });
  }

  if (Array.isArray(body.actions)) {
    body.actions.forEach((action: any, index: number) => {
      issues.push(...requireEnum(action.action_type, `actions[${index}].action_type`, ["TRAINING", "OJT", "TASK", "MENTORING"]));
      issues.push(...requireString(action.title, `actions[${index}].title`, 200));
      issues.push(...requireEnum(action.priority, `actions[${index}].priority`, ["HIGH", "MEDIUM", "LOW"]));
    });
  }

  return issues.length ? errorResult(issues) : okResult();
}
TS
~~~

# 3. validation file rule
- field path を返す
- code first
- reusable helper を validateCommon に寄せる
- route は validation を呼ぶだけに寄せる

# 4. conclusion
phase A validation actual file は、
この one-block で first actual validators を一括配置する方針で固定する。
