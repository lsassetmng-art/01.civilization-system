# ============================================================
# ORDERFLOW PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: OrderFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for operational control in OrderFlow.

phase_a_api_goals:
- query order cockpit
- query fulfillment exception review
- prepare later approval and downstream handoff actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/order-flow/order-cockpit/query
- POST /api/v1/order-flow/fulfillment-exception-review/query

endpoint_order_cockpit_query:
  purpose:
    - return approval pending items, fulfillment blockers, and downstream handoff visibility in one surface
  minimum_request:
    - orderId
    - timezone
    - includePendingApproval
    - includeFulfillmentBlockers
    - includeDownstreamHandoff
    - pageSize
  minimum_response:
    - orderId
    - orderTitle
    - healthSummaryMessage
    - pendingApprovalItems
    - fulfillmentBlockerItems
    - downstreamHandoffItems
    - generatedAt

endpoint_fulfillment_exception_review_query:
  purpose:
    - return fulfillment and handoff blocker rows for operational review
  minimum_request:
    - orderId
    - includeResolved
    - includeApprovalPending
    - includeDownstreamBlockers
    - pageSize
  minimum_response:
    - orderId
    - reviewItems
    - summaryMessage
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- internal_error

explicit_non_scope:
- no order write endpoint in this slice
- no approval action write endpoint in this slice
- no shipment release execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and fulfillment actions until query-side surfaces stabilize
