# TALENT GROWTH PHASE A VALIDATION FUNCTION SKELETON FIXED

status: draft-phase-a-validation-function-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の validation function 群を
最初に固定するための skeleton 資料である。

# 1. validation policy recap
- field path を返す
- error code first
- route では薄く呼び出す
- business rule validation と payload validation を分ける
- state transition validation は evaluation service と連携する
- validation は user-facing message ではなく machine-readable を優先する

# 2. validation layer split
phase A validation layers:
- request field validation
- enum / range validation
- state precondition validation
- scope / actor precondition validation
- lock_version validation
- aggregate rule validation

# 3. recommended validation module split
- validateCommon.ts
- validateCertification.ts
- validateSkill.ts
- validateEvaluation.ts
- validateRoleRequirement.ts
- validateGrowthPlan.ts
- validationError.ts

# 4. common validation result shape
~~~typescript
export type ValidationIssue = {
  field: string;
  reason: string;
  code: string;
};

export type ValidationResult =
  | { ok: true }
  | { ok: false; issues: ValidationIssue[] };
~~~

# 5. common helper skeleton
~~~typescript
export function okResult(): ValidationResult {
  return { ok: true };
}

export function errorResult(issues: ValidationIssue[]): ValidationResult {
  return { ok: false, issues };
}

export function requireString(
  value: unknown,
  field: string,
  maxLength?: number
): ValidationIssue[] {
  const issues: ValidationIssue[] = [];
  if (typeof value !== "string" || value.trim() === "") {
    issues.push({
      field,
      reason: "required",
      code: "TG_VALIDATION_REQUIRED"
    });
    return issues;
  }
  if (maxLength && value.length > maxLength) {
    issues.push({
      field,
      reason: "max_length_exceeded",
      code: "TG_VALIDATION_ERROR"
    });
  }
  return issues;
}

export function requireBooleanTrue(
  value: unknown,
  field: string
): ValidationIssue[] {
  if (value !== true) {
    return [{
      field,
      reason: "must_be_true",
      code: "TG_VALIDATION_REQUIRED"
    }];
  }
  return [];
}

export function requireNumberRange(
  value: unknown,
  field: string,
  min: number,
  max: number
): ValidationIssue[] {
  if (typeof value !== "number" || Number.isNaN(value)) {
    return [{
      field,
      reason: "invalid_number",
      code: "TG_VALIDATION_ERROR"
    }];
  }
  if (value < min || value > max) {
    return [{
      field,
      reason: "out_of_range",
      code: "TG_VALIDATION_INVALID_SCORE_RANGE"
    }];
  }
  return [];
}

export function requireEnum(
  value: unknown,
  field: string,
  allowed: string[]
): ValidationIssue[] {
  if (typeof value !== "string" || !allowed.includes(value)) {
    return [{
      field,
      reason: "invalid_enum",
      code: "TG_VALIDATION_INVALID_ENUM"
    }];
  }
  return [];
}
~~~

# 6. certification validation skeleton
~~~typescript
export function validateCreateCertificationPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];

  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireString(body.certification_id, "certification_id", 100));

  if (body.license_number != null && typeof body.license_number !== "string") {
    issues.push({
      field: "license_number",
      reason: "invalid_type",
      code: "TG_VALIDATION_ERROR"
    });
  }

  if (body.acquired_date && body.expiry_date && body.expiry_date < body.acquired_date) {
    issues.push({
      field: "expiry_date",
      reason: "must_be_greater_than_or_equal_to_acquired_date",
      code: "TG_VALIDATION_INVALID_DATE_RANGE"
    });
  }

  return issues.length ? errorResult(issues) : okResult();
}
~~~

# 7. skill validation skeleton
~~~typescript
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
  if (body.employee_comment != null && typeof body.employee_comment !== "string") {
    issues.push({
      field: "employee_comment",
      reason: "invalid_type",
      code: "TG_VALIDATION_ERROR"
    });
  }
  return issues.length ? errorResult(issues) : okResult();
}
~~~

# 8. self review validation skeleton
~~~typescript
export function validateSelfReviewSavePayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];

  issues.push(...requireString(body.employee_id, "employee_id", 100));

  if (body.self_review_comment != null && typeof body.self_review_comment !== "string") {
    issues.push({
      field: "self_review_comment",
      reason: "invalid_type",
      code: "TG_VALIDATION_ERROR"
    });
  }

  if (Array.isArray(body.skill_items)) {
    body.skill_items.forEach((item: any, index: number) => {
      issues.push(...requireString(item.employee_skill_id, `skill_items[${index}].employee_skill_id`, 100));
      if (item.proficiency_level != null) {
        issues.push(...requireNumberRange(item.proficiency_level, `skill_items[${index}].proficiency_level`, 1, 5));
      }
    });
  }

  return issues.length ? errorResult(issues) : okResult();
}

export function validateSelfReviewSubmitPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireString(body.employee_id, "employee_id", 100));
  issues.push(...requireBooleanTrue(body.submit_confirmed, "submit_confirmed"));
  return issues.length ? errorResult(issues) : okResult();
}
~~~

# 9. manager review validation skeleton
~~~typescript
export function validateManagerReviewSavePayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];

  issues.push(...requireString(body.manager_employee_id, "manager_employee_id", 100));

  if (body.manager_review_comment != null && typeof body.manager_review_comment !== "string") {
    issues.push({
      field: "manager_review_comment",
      reason: "invalid_type",
      code: "TG_VALIDATION_ERROR"
    });
  }

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
~~~

# 10. send back validation skeleton
~~~typescript
export function validateSendBackPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];
  issues.push(...requireEnum(body.target_role_code, "target_role_code", ["EMPLOYEE", "MANAGER", "HR"]));
  issues.push(...requireString(body.send_back_reason, "send_back_reason", 2000));
  return issues.length ? errorResult(issues) : okResult();
}
~~~

# 11. role requirement validation skeleton
~~~typescript
export function validateRoleRequirementPayload(body: any): ValidationResult {
  const issues: ValidationIssue[] = [];

  issues.push(...requireString(body.job_role_id, "job_role_id", 100));
  issues.push(...requireString(body.requirement_version, "requirement_version", 50));

  const weightFields = [
    "overall_weight_skill",
    "overall_weight_certification",
    "overall_weight_experience",
    "overall_weight_performance",
    "overall_weight_behavior",
    "overall_weight_growth"
  ];

  let total = 0;
  for (const field of weightFields) {
    const value = body[field];
    issues.push(...requireNumberRange(value, field, 0, 100));
    if (typeof value === "number" && !Number.isNaN(value)) total += value;
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
~~~

# 12. growth plan validation skeleton
~~~typescript
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
~~~

# 13. lock / state validation skeleton
~~~typescript
export function validateLockVersion(
  providedLockVersion: unknown,
  currentLockVersion: number
): ValidationResult {
  if (typeof providedLockVersion !== "number") {
    return errorResult([{
      field: "lock_version",
      reason: "required",
      code: "TG_VALIDATION_REQUIRED"
    }]);
  }

  if (providedLockVersion !== currentLockVersion) {
    return errorResult([{
      field: "lock_version",
      reason: "mismatch",
      code: "TG_CONFLICT_LOCK_VERSION_MISMATCH"
    }]);
  }

  return okResult();
}

export function validateEvaluationState(
  currentState: string,
  allowedStates: string[]
): ValidationResult {
  if (!allowedStates.includes(currentState)) {
    return errorResult([{
      field: "evaluation_status_code",
      reason: "invalid_transition",
      code: "TG_STATE_INVALID_TRANSITION"
    }]);
  }
  return okResult();
}
~~~

# 14. conclusion
phase A validation は、
field validation / state validation / lock validation を分けた関数群として固定する。
