# ============================================================
# ORDERFLOW PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
order cockpit and fulfillment exception review.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_order_cockpit_query:
  route: POST /api/v1/order-flow/order-cockpit/query
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
- orderExecutionTimelineItemId: uuid string, required
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- requiredByAt: ISO-8601 string, nullable
- exceptionPresent: boolean, required
- ownerUserId: uuid string, nullable
- approvalRequired: boolean, required

endpoint_02_fulfillment_exception_review_query:
  route: POST /api/v1/order-flow/fulfillment-exception-review/query
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
- reviewItemId: uuid string, required
- relatedApprovalId: uuid string, nullable
- relatedFulfillmentBlockerId: uuid string, nullable
- relatedHandoffBlockerId: uuid string, nullable
- itemTypeCode: string, required
- itemTitle: string, required
- itemSummary: string, nullable
- executionStateCode: string, required
- exceptionPresent: boolean, required
- approvalRequired: boolean, required
- ownerUserId: uuid string, nullable
- resolved: boolean, required
- requiredByAt: ISO-8601 string, nullable

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
