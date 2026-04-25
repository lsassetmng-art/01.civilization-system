# ============================================================
# INVOICEFLOW PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
billing cockpit and settlement exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_billing_cockpit_query:
  route: POST /api/v1/invoice-flow/billing-cockpit/query
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
- billingExecutionTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- dueAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_settlement_exception_review_query:
  route: POST /api/v1/invoice-flow/settlement-exception-review/query
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
- reviewItemId: uuid string, required
- relatedApprovalId: uuid string, nullable
- relatedSettlementBlockerId: uuid string, nullable
- relatedFinanceBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
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
- executionStateCode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
