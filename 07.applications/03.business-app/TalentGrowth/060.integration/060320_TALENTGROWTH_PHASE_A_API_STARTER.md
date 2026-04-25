# ============================================================
# TALENTGROWTH PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: TalentGrowth
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for growth management control in TalentGrowth.

phase_a_api_goals:
- query growth cockpit
- query growth exception review
- prepare later approval and decision-support actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/talent-growth/growth-cockpit/query
- POST /api/v1/talent-growth/growth-exception-review/query

endpoint_growth_cockpit_query:
  purpose:
    - return readiness exceptions, management attention, and decision-support readiness in one surface
  minimum_request:
    - growthPlanId
    - timezone
    - includeReadinessExceptions
    - includeManagementAttention
    - includeDecisionSupportReadiness
    - pageSize
  minimum_response:
    - growthPlanId
    - growthTitle
    - healthSummaryMessage
    - readinessExceptionItems
    - managementAttentionItems
    - decisionSupportItems
    - generatedAt

endpoint_growth_exception_review_query:
  purpose:
    - return growth and decision-support blocker rows for management review
  minimum_request:
    - growthPlanId
    - includeResolved
    - includeThresholdBreaches
    - includeDecisionSupportBlockers
    - pageSize
  minimum_response:
    - growthPlanId
    - reviewItems
    - summaryMessage
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- internal_error

explicit_non_scope:
- no talent write endpoint in this slice
- no approval action write endpoint in this slice
- no publication execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and publication actions until query-side surfaces stabilize
