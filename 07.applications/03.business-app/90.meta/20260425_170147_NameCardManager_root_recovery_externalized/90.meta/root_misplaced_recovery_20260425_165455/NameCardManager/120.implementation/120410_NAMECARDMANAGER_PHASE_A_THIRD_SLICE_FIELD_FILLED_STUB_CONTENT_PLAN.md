# ============================================================
# NAMECARDMANAGER PHASE A THIRD SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-third-slice-field-filled-plan

purpose:
Defines what the third slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture finalize
- relationship query
- company timeline query

target_files:
- FinalizeCaptureSessionRequest.java
- RelationshipQueryRequest.java
- CompanyTimelineQueryRequest.java
- FinalizeCaptureSessionResponse.java
- RelationshipQueryResponse.java
- CompanyTimelineQueryResponse.java
- FinalizeCaptureSessionValidator.java
- RelationshipQueryValidator.java
- CompanyTimelineQueryValidator.java
- CompanyTimelineEvent.java
- NamecardRelationshipView.java
- CompanyTimelineEventRepository.java
- RelationshipQueryRepository.java
- NamecardAuditPort.java
- FinalizeCaptureSessionMapper.java
- RelationshipQueryMapper.java
- CompanyTimelineQueryMapper.java
- CaptureFinalizeService.java
- RelationshipQueryService.java
- CompanyTimelineQueryService.java
- CaptureFinalizeController.java
- RelationshipQueryController.java
- CompanyTimelineQueryController.java
- JdbcCompanyTimelineEventRepository.java
- JdbcRelationshipQueryRepository.java
- DatabaseNamecardAuditAdapter.java
- CaptureFinalizeServiceTest.java
- RelationshipQueryServiceTest.java
- CompanyTimelineQueryServiceTest.java

field_fill_rules:
- finalize fields follow the DTO freeze exactly
- relationship query fields follow the existing relationship payload exactly
- company timeline fields follow the existing company timeline payload exactly
- no local field rename allowed
- visibility filtering occurs server-side
- paging order must align to event_sort_ts desc

expected_stub_content_by_file:
- FinalizeCaptureSessionRequest.java:
  - fields:
    - finalizeMode
    - preferredPrimaryImageId
    - noteText
- RelationshipQueryRequest.java:
  - fields:
    - copy exactly from relationship query payload source
- CompanyTimelineQueryRequest.java:
  - fields:
    - copy exactly from company timeline query payload source
- FinalizeCaptureSessionResponse.java:
  - fields:
    - captureSessionId
    - captureStatus
    - generatedDraftId
    - warningCodes
    - finalizedAt
    - updatedAt
- RelationshipQueryResponse.java:
  - fields:
    - copy exactly from relationship query payload source
- CompanyTimelineQueryResponse.java:
  - fields:
    - copy exactly from company timeline query payload source
- FinalizeCaptureSessionValidator.java:
  - method seam:
    - validate(FinalizeCaptureSessionRequest request)
  - checks:
    - finalizeMode required
- RelationshipQueryValidator.java:
  - method seam:
    - validate(RelationshipQueryRequest request)
- CompanyTimelineQueryValidator.java:
  - method seam:
    - validate(CompanyTimelineQueryRequest request)
  - checks:
    - paging boundary
    - date range boundary
- CompanyTimelineEvent.java:
  - fields aligned to company_timeline_event row family
- NamecardRelationshipView.java:
  - fields aligned to relationship response family
- CompanyTimelineEventRepository.java:
  - method seams:
    - queryTimeline(...)
- RelationshipQueryRepository.java:
  - method seams:
    - queryRelationship(...)
- NamecardAuditPort.java:
  - method seams:
    - appendFinalizeCaptureAudit(...)
    - appendRelationshipQueryAudit(...)
    - appendCompanyTimelineQueryAudit(...)
- FinalizeCaptureSessionMapper.java:
  - method seams:
    - toFinalizeResultResponse(...)
- RelationshipQueryMapper.java:
  - method seams:
    - toRelationshipResponse(...)
- CompanyTimelineQueryMapper.java:
  - method seams:
    - toTimelineResponse(...)
- CaptureFinalizeService.java:
  - dependency seams:
    - CaptureSessionRepository
    - CaptureImageStagingRepository
    - NamecardAuditPort
    - FinalizeCaptureSessionMapper
  - execute seam:
    - finalizeCaptureSession(String captureSessionId, FinalizeCaptureSessionRequest request, String actorUserId)
- RelationshipQueryService.java:
  - dependency seams:
    - RelationshipQueryRepository
    - RelationshipQueryMapper
  - execute seam:
    - queryRelationship(RelationshipQueryRequest request, String actorUserId)
- CompanyTimelineQueryService.java:
  - dependency seams:
    - CompanyTimelineEventRepository
    - CompanyTimelineQueryMapper
  - execute seam:
    - queryCompanyTimeline(CompanyTimelineQueryRequest request, String actorUserId)
- CaptureFinalizeController.java:
  - endpoint seam:
    - finalizeCaptureSession(String captureSessionId, FinalizeCaptureSessionRequest request)
- RelationshipQueryController.java:
  - endpoint seam:
    - queryRelationship(RelationshipQueryRequest request)
- CompanyTimelineQueryController.java:
  - endpoint seam:
    - queryCompanyTimeline(CompanyTimelineQueryRequest request)
- JdbcCompanyTimelineEventRepository.java:
  - implements CompanyTimelineEventRepository
- JdbcRelationshipQueryRepository.java:
  - implements RelationshipQueryRepository
- DatabaseNamecardAuditAdapter.java:
  - extend audit append seams for finalize and query operations
- CaptureFinalizeServiceTest.java:
  - tests:
    - finalizeCaptureSession_success
    - finalizeCaptureSession_conflict
- RelationshipQueryServiceTest.java:
  - tests:
    - queryRelationship_success
    - queryRelationship_visibility_filtered
- CompanyTimelineQueryServiceTest.java:
  - tests:
    - queryCompanyTimeline_success
    - queryCompanyTimeline_paging
    - queryCompanyTimeline_date_filter

third_slice_done_definition:
- finalize, relationship, and timeline file seams are fixed
- exact payload alignment is explicit
- visibility and paging rules are fixed
- test names and purpose are fixed

next_action:
- close Phase A readiness with a bundled audit memo
