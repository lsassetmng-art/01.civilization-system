# ============================================================
# TALENTGROWTH GROWTH_EXCEPTION_REVIEW_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: TalentGrowth
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-exception-review-payload

purpose:
Fixes the exact payload family for growth and readiness exception review.

endpoint:
- POST /api/v1/talent-growth/growth-exception-review/query

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
- reviewItemId
- relatedPathId
- relatedExceptionId
- relatedDecisionSupportBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- growthStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- effectiveAt
