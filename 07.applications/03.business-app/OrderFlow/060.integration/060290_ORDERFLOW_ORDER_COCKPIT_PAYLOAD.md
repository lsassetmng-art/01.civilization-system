# ============================================================
# ORDERFLOW ORDER COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-cockpit-payload

purpose:
Fixes the exact payload family for the order cockpit surface.

endpoint:
- POST /api/v1/order-flow/order-cockpit/query

request_fields:
- orderId: uuid string, required
- timezone: string, required
- includePendingApproval: boolean, required
- includeFulfillmentBlockers: boolean, required
- includeDownstreamHandoff: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- orderId: uuid string, required
- orderTitle: string, required
- healthSummaryMessage: string, required
- pendingApprovalItems: array, required
- fulfillmentBlockerItems: array, required
- downstreamHandoffItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- orderExecutionTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- requiredByAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
