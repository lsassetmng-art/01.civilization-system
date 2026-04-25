# ============================================================
# TALENTGROWTH PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: TalentGrowth
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
growth cockpit and growth exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_growth_cockpit_query:
  route: POST /api/v1/talent-growth/growth-cockpit/query
  request_fields:
    - growthPlanId: uuid string, required
    - timezone: string, required
    - includeReadinessExceptions: boolean, required
    - includeManagementAttention: boolean, required
    - includeDecisionSupportReadiness: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - growthPlanId: uuid string, required
    - growthTitle: string, required
    - healthSummaryMessage: string, required
    - readinessExceptionItems: array, required
    - managementAttentionItems: array, required
    - decisionSupportItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

cockpitItem_fields:
- growthControlTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- growthStateCode: string, required
- effectiveAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_growth_exception_review_query:
  route: POST /api/v1/talent-growth/growth-exception-review/query
  request_fields:
    - growthPlanId: uuid string, required
    - includeResolved: boolean, required
    - includeThresholdBreaches: boolean, required
    - includeDecisionSupportBlockers: boolean, required
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - growthPlanId: uuid string, required
    - reviewItems: array, required
    - summaryMessage: string, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId: uuid string, required
- relatedPathId: uuid string, nullable
- relatedExceptionId: uuid string, nullable
- relatedDecisionSupportBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- growthStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- effectiveAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- growthStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
