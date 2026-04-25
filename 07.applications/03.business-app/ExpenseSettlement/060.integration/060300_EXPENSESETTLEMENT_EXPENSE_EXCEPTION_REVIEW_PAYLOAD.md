# ============================================================
# EXPENSESETTLEMENT EXPENSE_EXCEPTION_REVIEW_PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: ExpenseSettlement
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: expense-exception-review-payload

purpose:
Fixes the exact payload family for expense and settlement exception review.

endpoint:
- POST /api/v1/expense-settlement/expense-exception-review/query

request_fields:
- expenseClaimId: uuid string, required
- includeResolved: boolean, required
- includePolicyBreaches: boolean, required
- includeErpHandoffBlockers: boolean, required
- pageSize: integer, required
- pageToken: string, optional

response_fields:
- expenseClaimId: uuid string, required
- reviewItems: array, required
- summaryMessage: string, required
- nextPageToken: string, nullable
- generatedAt: ISO-8601 string, required

reviewItem_fields:
- reviewItemId
- relatedApprovalId
- relatedExceptionId
- relatedErpHandoffBlockerId
- itemTypeCode
- itemTitle
- itemSummary
- settlementStateCode
- exceptionPresent
- approvalRequired
- ownerUserId
- resolved
- dueAt
