# ============================================================
# ORDERFLOW FULFILLMENT EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: fulfillment-exception-review-payload

purpose:
Fixes the exact payload family for fulfillment and exception review.

endpoint:
- POST /api/v1/order-flow/fulfillment-exception-review/query

request_fields:
- orderId: uuid string, required
- includeResolved: boolean, required
- includeApprovalPending: boolean, required
- includeDownstreamBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- orderId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedApprovalId
- relatedFulfillmentBlockerId
- relatedHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- requiredByAt
