# ============================================================
# ESTIMATECREATOR REVISION APPROVAL REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: EstimateCreator
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: revision-approval-review-payload

purpose:
Fixes the exact payload family for revision and approval review.

endpoint:
- POST /api/v1/estimate-creator/revision-approval-review/query

request_fields:
- estimateId: uuid string, required
- includeResolved: boolean, required
- includePricingExceptions: boolean, required
- includeApprovalPending: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- estimateId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedRevisionId
- relatedApprovalId
- itemTypeCode
- itemTitle
- itemSummary
- commercialStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- validUntilAt
