# ============================================================
# TALENTGROWTH GROWTH_COCKPIT_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: TalentGrowth
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-cockpit-payload

purpose:
Fixes the exact payload family for the growth cockpit surface.

endpoint:
- POST /api/v1/talent-growth/growth-cockpit/query

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
- growthControlTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- growthStateCode
- effectiveAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
