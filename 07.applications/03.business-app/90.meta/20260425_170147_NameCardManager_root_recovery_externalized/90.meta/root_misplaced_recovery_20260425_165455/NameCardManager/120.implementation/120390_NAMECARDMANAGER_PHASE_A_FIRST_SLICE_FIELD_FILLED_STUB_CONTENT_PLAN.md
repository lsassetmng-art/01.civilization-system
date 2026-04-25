# ============================================================
# NAMECARDMANAGER PHASE A FIRST SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-first-slice-field-filled-plan

purpose:
Defines what the first slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture session create path

target_files:
- ErrorResponse.java
- CreateCaptureSessionRequest.java
- CaptureSessionResponse.java
- CreateCaptureSessionValidator.java
- CaptureSession.java
- CaptureSessionRepository.java
- CaptureSessionMapper.java
- CaptureSessionService.java
- CaptureSessionController.java
- JdbcCaptureSessionRepository.java
- DatabaseNamecardAuditAdapter.java
- NamecardPhaseAConfig.java
- CaptureSessionServiceTest.java

field_fill_rules:
- exact field names must follow the Phase A API DTO field freeze
- no field rename allowed
- nullable fields are explicit
- DTO classes stay behavior-light
- controller remains thin
- repository interface exposes persistence contract only

expected_stub_content_by_file:
- ErrorResponse.java:
  - fields:
    - errorCode
    - errorMessage
    - requestId
    - details
- CreateCaptureSessionRequest.java:
  - fields:
    - companyId
    - sourcePlatform
    - localeCode
    - deviceLabel
- CaptureSessionResponse.java:
  - fields:
    - captureSessionId
    - companyId
    - captureStatus
    - sourcePlatform
    - localeCode
    - deviceLabel
    - startedAt
    - finalizedAt
    - abandonedAt
    - createdAt
    - updatedAt
- CreateCaptureSessionValidator.java:
  - method seam:
    - validate(CreateCaptureSessionRequest request)
  - checks:
    - companyId required
    - sourcePlatform required
- CaptureSession.java:
  - fields aligned to capture_session row family
- CaptureSessionRepository.java:
  - method seams:
    - insert(CaptureSession captureSession)
    - findById(String captureSessionId)
- CaptureSessionMapper.java:
  - method seams:
    - toDomain(CreateCaptureSessionRequest request, String actorUserId)
    - toResponse(CaptureSession captureSession)
- CaptureSessionService.java:
  - dependency seams:
    - CaptureSessionRepository
    - NamecardAuditPort
    - CaptureSessionMapper
  - execute seam:
    - createCaptureSession(CreateCaptureSessionRequest request, String actorUserId)
- CaptureSessionController.java:
  - endpoint seam:
    - createCaptureSession(CreateCaptureSessionRequest request)
- JdbcCaptureSessionRepository.java:
  - implements CaptureSessionRepository
  - sql placeholder aligned to namecard_capture_session table
- DatabaseNamecardAuditAdapter.java:
  - method seam:
    - appendCreateCaptureSessionAudit(...)
- NamecardPhaseAConfig.java:
  - bean wiring placeholders for first slice
- CaptureSessionServiceTest.java:
  - tests:
    - createCaptureSession_success
    - createCaptureSession_validation_failure

first_slice_done_definition:
- request and response DTOs hold exact fields
- validator seam exists
- service orchestration seam exists
- repository interface seam exists
- test names and purpose are fixed

next_action:
- apply the same field-fill strategy to second and third slices
