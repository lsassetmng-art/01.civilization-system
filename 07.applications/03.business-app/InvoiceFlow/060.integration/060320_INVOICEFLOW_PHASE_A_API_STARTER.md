# ============================================================
# INVOICEFLOW PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: InvoiceFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for financial control in InvoiceFlow.

phase_a_api_goals:
- query billing cockpit
- query settlement exception review
- prepare later approval and downstream finance actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/invoice-flow/billing-cockpit/query
- POST /api/v1/invoice-flow/settlement-exception-review/query

endpoint_billing_cockpit_query:
  purpose:
    - return approval pending items, settlement blockers, and downstream finance visibility in one surface
  minimum_request:
    - invoiceId
    - timezone
    - includePendingApproval
    - includeSettlementBlockers
    - includeDownstreamFinance
    - pageSize
  minimum_response:
    - invoiceId
    - invoiceTitle
    - healthSummaryMessage
    - pendingApprovalItems
    - settlementBlockerItems
    - downstreamFinanceItems
    - generatedAt

endpoint_settlement_exception_review_query:
  purpose:
    - return settlement and finance blocker rows for financial review
  minimum_request:
    - invoiceId
    - includeResolved
    - includeApprovalPending
    - includeDownstreamFinanceBlockers
    - pageSize
  minimum_response:
    - invoiceId
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
- no invoice write endpoint in this slice
- no approval action write endpoint in this slice
- no settlement execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and settlement actions until query-side surfaces stabilize
