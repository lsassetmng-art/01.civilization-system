# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-api-starter

purpose:
Defines the Phase A API starter boundary for the newly added
capture staging and company timeline capabilities. This document
does not replace the existing exact payload foundation. It narrows
the first implementation slice.

phase_a_api_goals:
- create capture session
- upload or register staged images
- finalize capture session into normalized draft path
- query relationship view using fixed request family
- query company timeline using fixed request family

phase_a_endpoint_set:
- POST /api/v1/namecard/capture-sessions
- POST /api/v1/namecard/capture-sessions/{capture_session_id}/images
- POST /api/v1/namecard/capture-sessions/{capture_session_id}/finalize
- POST /api/v1/namecard/relationship/query
- POST /api/v1/namecard/company-timeline/query

endpoint_post_capture_sessions:
  purpose:
    - starts a capture session before image staging begins
  request_minimum:
    - companyId
    - sourcePlatform
    - localeCode
  response_minimum:
    - captureSessionId
    - captureStatus
    - startedAt

endpoint_post_capture_session_images:
  purpose:
    - registers staged image metadata under a session
  request_minimum:
    - captureSessionId
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
  response_minimum:
    - captureImageStagingId
    - stagingStatus
    - acceptedAt

endpoint_post_capture_session_finalize:
  purpose:
    - closes staging and moves to normalized draft path
  request_minimum:
    - captureSessionId
    - finalizeMode
  response_minimum:
    - captureSessionId
    - captureStatus
    - generatedDraftId
    - warnings

endpoint_post_relationship_query:
  purpose:
    - returns relationship-oriented view based on the exact request family
  request_reference:
    - use the already added relationship query exact payload as source of truth
  phase_a_constraints:
    - supported for direct card context and company context
    - no advanced graph expansion beyond declared payload

endpoint_post_company_timeline_query:
  purpose:
    - returns company timeline event list based on the exact request family
  request_reference:
    - use the already added company timeline exact payload as source of truth
  phase_a_constraints:
    - server-side paging required
    - event type filter supported
    - date range filter supported
    - no free-form aggregation builder in phase_a

phase_a_response_rules:
- exact field names must stay stable once implemented
- all time values use ISO-8601
- no binary image data in API response body
- visibility-filtered data must be removed server-side
- audit and history remain separate concerns

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- processing_not_ready
- internal_error

explicit_non_scope:
- no bulk import API in this slice
- no advanced enrichment orchestration in this slice
- no ERP publication execution in this slice
- no offline sync replay expansion in this slice
- no fuzzy relationship inference API in this slice

implementation_handoff:
- controllers should implement only the endpoint set in this document first
- exact DTOs must align with existing payload foundation documents
- repository calls must follow the additive DDL plan
