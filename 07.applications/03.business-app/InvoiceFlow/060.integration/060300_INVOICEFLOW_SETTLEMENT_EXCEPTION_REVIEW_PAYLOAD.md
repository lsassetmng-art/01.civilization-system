# ============================================================
# INVOICEFLOW SETTLEMENT EXCEPTION REVIEW PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: settlement-exception-review-payload

purpose:
Fixes the exact payload family for settlement and exception review.

endpoint:
- POST /api/v1/invoice-flow/settlement-exception-review/query

request_fields:
- invoiceId: uuid string, required
- includeResolved: boolean, required
- includeApprovalPending: boolean, required
- includeDownstreamFinanceBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- invoiceId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedApprovalId
- relatedSettlementBlockerId
- relatedFinanceBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- dueAt
