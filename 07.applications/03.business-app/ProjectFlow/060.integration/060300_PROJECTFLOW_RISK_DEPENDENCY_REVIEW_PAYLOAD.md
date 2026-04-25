# ============================================================
# PROJECTFLOW RISK DEPENDENCY REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProjectFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: risk-dependency-review-payload

purpose:
Fixes the exact payload family for reviewing dependency and risk status.

endpoint:
- POST /api/v1/project-flow/risk-dependency-review/query

request_fields:
- projectId: uuid string, required
- riskLevelFilter: string array, optional
- includeResolved: boolean, required
- includeDependencies: boolean, required
- includeDecisionPending: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- projectId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedMilestoneId
- relatedDependencyId
- itemTypeCode
- itemTitle
- itemSummary
- deliveryStateCode
- riskLevelCode
- blockerPresent
- ownerUserId
- decisionPending
- resolved
- dueAt
