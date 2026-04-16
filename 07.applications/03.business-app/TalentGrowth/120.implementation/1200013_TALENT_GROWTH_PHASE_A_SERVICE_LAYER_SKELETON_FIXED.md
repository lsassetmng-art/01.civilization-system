# TALENT GROWTH PHASE A SERVICE LAYER SKELETON FIXED

status: draft-phase-a-service-layer-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の service layer 分割と責務を固定するための資料である。

# 1. service split
phase A services:
- authContextService
- dashboardService
- certificationService
- skillService
- evaluationService
- roleRequirementService
- growthPlanService
- auditService
- notificationService
- outboxService
- validationService

# 2. service ownership

## authContextService
responsibility:
- auth user resolve
- role resolve
- company scope resolve
- manager team scope resolve

## dashboardService
responsibility:
- employee dashboard aggregation
- manager dashboard aggregation baseline
- HR dashboard aggregation baseline

## certificationService
responsibility:
- list certifications
- create certification
- renew certification
- expiry state update baseline

## skillService
responsibility:
- list skills
- create skill
- update skill
- add evidence baseline

## evaluationService
responsibility:
- evaluation sheet read
- self review save / submit
- manager review save / submit
- send back
- state machine enforcement
- lock_version enforcement baseline
- score detail write baseline

## roleRequirementService
responsibility:
- list requirements
- create requirement
- update requirement
- clone requirement baseline
- weight validation

## growthPlanService
responsibility:
- list growth plans
- create growth plan
- update progress
- recommendation baseline linkage

## auditService
responsibility:
- append audit rows
- search audit rows
- audit_trace_id propagation support

## outboxService
responsibility:
- append outbox events
- event payload shaping
- event_name policy alignment

## notificationService
responsibility:
- in-app notification read
- notification list
- delivery baseline read model support

## validationService
responsibility:
- request payload validation
- field error shaping
- validation code mapping

# 3. representative service function list

## evaluationService
- getEvaluationSheetById(...)
- saveSelfReviewDraft(...)
- submitSelfReview(...)
- saveManagerReview(...)
- submitManagerReview(...)
- sendBack(...)
- assertEvaluationState(...)
- assertWritableByRole(...)

## certificationService
- listEmployeeCertifications(...)
- createEmployeeCertification(...)
- renewEmployeeCertification(...)
- calculateCertificationStatus(...)

## growthPlanService
- listGrowthPlans(...)
- createGrowthPlan(...)
- updateGrowthProgress(...)
- validateGrowthPlanActions(...)

## roleRequirementService
- listRoleRequirements(...)
- createRoleRequirement(...)
- updateRoleRequirement(...)
- validateRoleRequirementWeights(...)

# 4. service transaction rule
use one business transaction when:
- score/state changes
- audit append required
- outbox append required

example:
- self review submit:
  - validate
  - update evaluation sheet
  - append evaluation comment/detail if needed
  - append audit
  - append outbox
  - commit once

# 5. service return rule
service returns structured domain result:
- success payload
- state after mutation
- lock_version after mutation
- appended outbox_event_id optional
- audit_trace_id

# 6. service guardrails
- no SQL in route layer
- no direct Response shaping in repository layer
- no notification delivery logic inside business service
- no admin bypass hidden in service
- state machine checks centralized

# 7. representative service skeleton
~~~typescript
export async function submitSelfReview(input: {
  actorEmployeeId: string;
  companyId: string;
  evaluationSheetId: string;
  submitConfirmed: boolean;
}) {
  // 1. load sheet
  // 2. assert state = SELF_REVIEW_DRAFT
  // 3. assert actor scope
  // 4. update sheet status
  // 5. append audit
  // 6. append outbox
  // 7. return result
  return {
    evaluation_sheet_id: input.evaluationSheetId,
    evaluation_status_code: "SELF_REVIEW_SUBMITTED",
    audit_trace_id: "atrace_placeholder"
  };
}
~~~

# 8. conclusion
phase A の service layer は、
state machine / audit / outbox を中心に厚く持つ構成で固定する。
