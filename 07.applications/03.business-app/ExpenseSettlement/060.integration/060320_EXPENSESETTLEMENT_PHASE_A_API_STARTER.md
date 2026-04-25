# ============================================================
# EXPENSESETTLEMENT PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: ExpenseSettlement
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for settlement control in ExpenseSettlement.

phase_a_api_goals:
- query expense cockpit
- query expense exception review
- prepare later approval and ERP handoff actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/expense-settlement/expense-cockpit/query
- POST /api/v1/expense-settlement/expense-exception-review/query

endpoint_expense_cockpit_query:
  purpose:
    - return receipt exceptions, compliance blockers, and ERP handoff readiness in one surface
  minimum_request:
    - expenseClaimId
    - timezone
    - includeReceiptExceptions
    - includeComplianceBlockers
    - includeErpHandoffReadiness
    - pageSize
  minimum_response:
    - expenseClaimId
    - expenseTitle
    - healthSummaryMessage
    - receiptExceptionItems
    - complianceBlockerItems
    - erpHandoffItems
    - generatedAt

endpoint_expense_exception_review_query:
  purpose:
    - return expense and ERP blocker rows for settlement review
  minimum_request:
    - expenseClaimId
    - includeResolved
    - includePolicyBreaches
    - includeErpHandoffBlockers
    - pageSize
  minimum_response:
    - expenseClaimId
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
- no claim write endpoint in this slice
- no approval action write endpoint in this slice
- no payout execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and payout actions until query-side surfaces stabilize
