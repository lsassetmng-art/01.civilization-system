# ============================================================
# ESTIMATECREATOR PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: EstimateCreator
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for commercial control in EstimateCreator.

phase_a_api_goals:
- query estimate cockpit
- query revision and approval review
- prepare later approval request or conversion actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/estimate-creator/estimate-cockpit/query
- POST /api/v1/estimate-creator/revision-approval-review/query

endpoint_estimate_cockpit_query:
  purpose:
    - return approval pending items, conversion blockers, and recent revisions in one surface
  minimum_request:
    - estimateId
    - timezone
    - includePendingApproval
    - includeConversionBlockers
    - includeRecentRevisions
    - pageSize
  minimum_response:
    - estimateId
    - estimateTitle
    - healthSummaryMessage
    - pendingApprovalItems
    - conversionBlockerItems
    - recentRevisionItems
    - generatedAt

endpoint_revision_approval_review_query:
  purpose:
    - return revision and approval review rows for governance review
  minimum_request:
    - estimateId
    - includeResolved
    - includePricingExceptions
    - includeApprovalPending
    - pageSize
  minimum_response:
    - estimateId
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
- no estimate draft write endpoint in this slice
- no approval request write endpoint in this slice
- no conversion execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and conversion actions until query-side surfaces stabilize
