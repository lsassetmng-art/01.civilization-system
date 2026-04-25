# ============================================================
# APPDEVELOPMENTSTUDIO PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: AppDevelopmentStudio
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for development control in AppDevelopmentStudio.

phase_a_api_goals:
- query studio cockpit
- query implementation exception review
- prepare later approval and release-readiness actions without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/app-development-studio/studio-cockpit/query
- POST /api/v1/app-development-studio/implementation-exception-review/query

endpoint_studio_cockpit_query:
  purpose:
    - return implementation exceptions, build blockers, and release readiness in one surface
  minimum_request:
    - studioWorkId
    - timezone
    - includeImplementationExceptions
    - includeBuildBlockers
    - includeReleaseReadiness
    - pageSize
  minimum_response:
    - studioWorkId
    - studioTitle
    - healthSummaryMessage
    - implementationExceptionItems
    - buildBlockerItems
    - releaseReadinessItems
    - generatedAt

endpoint_implementation_exception_review_query:
  purpose:
    - return implementation and release blocker rows for development review
  minimum_request:
    - studioWorkId
    - includeResolved
    - includeBuildBlockers
    - includeReleaseBlockers
    - pageSize
  minimum_response:
    - studioWorkId
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
- no artifact write endpoint in this slice
- no approval action write endpoint in this slice
- no release execution endpoint in this slice
- no bulk import endpoint in this slice

implementation_handoff:
- use these two query endpoints as the only Phase A vertical-slice entry points first
- defer write-side approval and release actions until query-side surfaces stabilize
