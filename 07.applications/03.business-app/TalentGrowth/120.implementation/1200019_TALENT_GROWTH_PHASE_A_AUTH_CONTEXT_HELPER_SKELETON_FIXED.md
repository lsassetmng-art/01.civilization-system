# TALENT GROWTH PHASE A AUTH CONTEXT HELPER SKELETON FIXED

status: draft-phase-a-auth-context-helper-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の auth context helper を
最初に固定するための skeleton 資料である。

# 1. helper purpose
auth context helper は以下を担う。
- current employee resolve
- current company resolve
- role set resolve
- locale / currency preference resolve
- manager team scope baseline resolve
- common route guard input shaping

# 2. minimum auth context shape
~~~typescript
export type TalentGrowthAuthContext = {
  employeeId: string;
  companyId: string;
  roleCodes: string[];
  preferredLanguageCode: string;
  reportingCurrencyCode: string;
  organizationId: string | null;
  managerEmployeeId: string | null;
};
~~~

# 3. helper function candidates
- getAuthContext(request: Request)
- requireAuthenticated(context)
- requireRole(context, allowedRoles)
- requireSameEmployeeOrHr(context, targetEmployeeId)
- requireManagerTeamOrHr(context, targetEmployeeId)
- requireCompanyScope(context, companyId)

# 4. role constants
~~~typescript
export const TG_ROLE = {
  EMPLOYEE: "EMPLOYEE",
  MANAGER: "MANAGER",
  HR: "HR",
  EXECUTIVE: "EXECUTIVE",
  ADMIN: "ADMIN"
} as const;
~~~

# 5. helper skeleton
~~~typescript
export async function getAuthContext(_request: Request): Promise<TalentGrowthAuthContext> {
  // real implementation later:
  // 1. session token parse
  // 2. current user resolve
  // 3. employee/company lookup
  // 4. role lookup
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

export function requireAuthenticated(context: TalentGrowthAuthContext | null) {
  if (!context) {
    throw new Error("TG_AUTH_REQUIRED");
  }
}

export function requireRole(context: TalentGrowthAuthContext, allowedRoles: string[]) {
  const ok = context.roleCodes.some(role => allowedRoles.includes(role));
  if (!ok) {
    throw new Error("TG_ACCESS_FORBIDDEN");
  }
}

export function requireSameEmployeeOrHr(
  context: TalentGrowthAuthContext,
  targetEmployeeId: string
) {
  const self = context.employeeId === targetEmployeeId;
  const hr = context.roleCodes.includes("HR");
  if (!self && !hr) {
    throw new Error("TG_ACCESS_SCOPE_VIOLATION");
  }
}

export function requireManagerTeamOrHr(
  context: TalentGrowthAuthContext,
  _targetEmployeeId: string
) {
  const manager = context.roleCodes.includes("MANAGER");
  const hr = context.roleCodes.includes("HR");
  if (!manager && !hr) {
    throw new Error("TG_ACCESS_SCOPE_VIOLATION");
  }
}
~~~

# 6. helper use examples

## employee self route
- getAuthContext
- requireAuthenticated
- requireSameEmployeeOrHr

## manager review route
- getAuthContext
- requireAuthenticated
- requireRole(MANAGER or HR)
- requireManagerTeamOrHr

## admin-only route
- getAuthContext
- requireAuthenticated
- requireRole(ADMIN)

# 7. guardrails
- no hidden admin super bypass
- no company scope omission
- route layer must call helper explicitly
- repository layer must still receive companyId explicitly
- helper decides actor shape, not DB query itself

# 8. conclusion
phase A auth context helper は、
route guard の共通入口として固定する。
