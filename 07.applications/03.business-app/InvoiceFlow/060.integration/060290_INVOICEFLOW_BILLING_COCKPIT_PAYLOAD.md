# ============================================================
# INVOICEFLOW BILLING COCKPIT PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-cockpit-payload

purpose:
Fixes the exact payload family for the billing cockpit surface.

endpoint:
- POST /api/v1/invoice-flow/billing-cockpit/query

request_fields:
- invoiceId: uuid string, required
- timezone: string, required
- includePendingApproval: boolean, required
- includeSettlementBlockers: boolean, required
- includeDownstreamFinance: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- invoiceId: uuid string, required
- invoiceTitle: string, required
- healthSummaryMessage: string, required
- pendingApprovalItems: array, required
- settlementBlockerItems: array, required
- downstreamFinanceItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- billingExecutionTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- executionStateCode
- dueAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
