# ============================================================
# ESTIMATECREATOR ESTIMATE COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: EstimateCreator
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: estimate-cockpit-payload

purpose:
Fixes the exact payload family for the estimate cockpit surface.

endpoint:
- POST /api/v1/estimate-creator/estimate-cockpit/query

request_fields:
- estimateId: uuid string, required
- timezone: string, required
- includePendingApproval: boolean, required
- includeConversionBlockers: boolean, required
- includeRecentRevisions: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- estimateId: uuid string, required
- estimateTitle: string, required
- healthSummaryMessage: string, required
- pendingApprovalItems: array, required
- conversionBlockerItems: array, required
- recentRevisionItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- estimateCommercialTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- commercialStateCode
- validUntilAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
