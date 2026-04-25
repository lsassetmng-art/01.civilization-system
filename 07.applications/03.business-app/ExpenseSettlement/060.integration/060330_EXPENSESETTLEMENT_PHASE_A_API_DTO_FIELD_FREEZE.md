# ============================================================
# EXPENSESETTLEMENT PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: ExpenseSettlement
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
expense cockpit and expense exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_expense_cockpit_query:
  route: POST /api/v1/expense-settlement/expense-cockpit/query
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
- settlementControlTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- settlementStateCode: string, required
- dueAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_expense_exception_review_query:
  route: POST /api/v1/expense-settlement/expense-exception-review/query
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
- reviewItemId: uuid string, required
- relatedApprovalId: uuid string, nullable
- relatedExceptionId: uuid string, nullable
- relatedErpHandoffBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- settlementStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- dueAt: ISO-8601 string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- itemTypeCode is a text code, not localized label
- settlementStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
