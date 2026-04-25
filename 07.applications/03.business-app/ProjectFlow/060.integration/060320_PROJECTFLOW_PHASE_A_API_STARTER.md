# ============================================================
# PROJECTFLOW PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: ProjectFlow
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for delivery control in ProjectFlow.

phase_a_api_goals:
- query project cockpit
- query dependency and risk review
- prepare later escalation or review actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/project-flow/project-cockpit/query
- POST /api/v1/project-flow/risk-dependency-review/query

endpoint_project_cockpit_query:
  purpose:
    - return blocked, at-risk, and upcoming milestone visibility in one surface
  minimum_request:
    - projectId
    - timezone
    - includeBlockedItems
    - includeAtRiskItems
    - includeUpcomingMilestones
    - pageSize
  minimum_response:
    - projectId
    - projectTitle
    - healthSummaryMessage
    - blockedItems
    - atRiskItems
    - upcomingMilestones
    - ownerEscalationItems
    - generatedAt

endpoint_risk_dependency_review_query:
  purpose:
    - return dependency and risk review rows for management review
  minimum_request:
    - projectId
    - includeResolved
    - includeDependencies
    - includeDecisionPending
    - pageSize
  minimum_response:
    - projectId
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
- no task mutation endpoint in this slice
- no milestone write endpoint in this slice
- no workflow transition endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side escalation actions until query-side surfaces stabilize
