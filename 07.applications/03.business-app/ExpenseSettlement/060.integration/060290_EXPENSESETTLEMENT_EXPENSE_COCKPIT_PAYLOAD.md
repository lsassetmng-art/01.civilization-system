# ============================================================
# EXPENSESETTLEMENT EXPENSE_COCKPIT_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ExpenseSettlement
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: expense-cockpit-payload

purpose:
Fixes the exact payload family for the expense cockpit surface.

endpoint:
- POST /api/v1/expense-settlement/expense-cockpit/query

request_fields:
- expenseClaimId: uuid string, required
- timezone: string, required
- includeReceiptExceptions: boolean, required
- includeComplianceBlockers: boolean, required
- includeErpHandoffReadiness: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- expenseClaimId: uuid string, required
- expenseTitle: string, required
- healthSummaryMessage: string, required
- receiptExceptionItems: array, required
- complianceBlockerItems: array, required
- erpHandoffItems: array, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

cockpitItem_fields:
- settlementControlTimelineItemId
- itemTypeCode
- itemTitle
- itemSummary
- settlementStateCode
- dueAt
- exceptionPresent
- ownerUserId
- approvalRequired

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- arrays return empty arrays when no data
