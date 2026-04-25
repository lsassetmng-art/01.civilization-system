# ============================================================
# PROJECTFLOW PROJECT COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ProjectFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: project-cockpit-payload

purpose:
Fixes the exact payload family for the project cockpit surface.

endpoint:
- POST /api/v1/project-flow/project-cockpit/query

request_fields:
- projectId: uuid string, required
- timezone: string, required
- includeBlockedItems: boolean, required
- includeAtRiskItems: boolean, required
- includeUpcomingMilestones: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- projectId: uuid string, required
- projectTitle: string, required
- healthSummaryMessage: string, required
- blockedItems: array, required
- atRiskItems: array, required
- upcomingMilestones: array, required
- ownerEscalationItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- projectDeliveryTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- deliveryStateCode
- dueAt
- scheduledStartAt
- scheduledEndAt
- riskLevelCode
- blockerPresent
- ownerUserId
- escalationRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
