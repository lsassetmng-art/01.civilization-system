# ============================================================
# NAMECARDMANAGER PHASE A SECOND SLICE FIELD FILLED STUB CONTENT PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-second-slice-field-filled-plan

purpose:
Defines what the second slice stub files should contain once they move
from empty shell classes into field-filled implementation stubs.

slice_target:
- capture image staging register path

target_files:
- RegisterCaptureImageRequest.java
- CaptureImageStagingResponse.java
- RegisterCaptureImageValidator.java
- CaptureImageStaging.java
- CaptureImageStagingRepository.java
- StagedImageStoragePort.java
- CaptureImageStagingMapper.java
- CaptureImageStagingService.java
- CaptureImageStagingController.java
- JdbcCaptureImageStagingRepository.java
- ObjectStorageStagedImageStorageAdapter.java
- CaptureImageStagingServiceTest.java

field_fill_rules:
- exact field names must follow the Phase A API DTO field freeze
- no binary payload field enters relational repository seam
- storage key is the boundary, not image bytes
- service must validate capture session context before insert

expected_stub_content_by_file:
- RegisterCaptureImageRequest.java:
  - fields:
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
    - imageHash
    - imageWidth
    - imageHeight
- CaptureImageStagingResponse.java:
  - fields:
    - captureImageStagingId
    - captureSessionId
    - companyId
    - imageStorageKey
    - imageSideCode
    - imageOrderNo
    - qualityScore
    - ocrAttemptCount
    - stagingStatus
    - lastProcessedAt
    - createdAt
    - updatedAt
- RegisterCaptureImageValidator.java:
  - method seam:
    - validate(RegisterCaptureImageRequest request)
  - checks:
    - imageStorageKey required
    - imageSideCode required
    - imageOrderNo required
- CaptureImageStaging.java:
  - fields aligned to capture_image_staging row family
- CaptureImageStagingRepository.java:
  - method seams:
    - insert(CaptureImageStaging staging)
    - findBySessionId(String captureSessionId)
- StagedImageStoragePort.java:
  - method seams:
    - exists(String imageStorageKey)
    - registerReference(String imageStorageKey)
- CaptureImageStagingMapper.java:
  - method seams:
    - toDomain(String captureSessionId, RegisterCaptureImageRequest request, String companyId)
    - toResponse(CaptureImageStaging staging)
- CaptureImageStagingService.java:
  - dependency seams:
    - CaptureSessionRepository
    - CaptureImageStagingRepository
    - StagedImageStoragePort
    - NamecardAuditPort
    - CaptureImageStagingMapper
  - execute seam:
    - registerCaptureImage(String captureSessionId, RegisterCaptureImageRequest request, String actorUserId)
- CaptureImageStagingController.java:
  - endpoint seam:
    - registerCaptureImage(String captureSessionId, RegisterCaptureImageRequest request)
- JdbcCaptureImageStagingRepository.java:
  - implements CaptureImageStagingRepository
  - sql placeholder aligned to namecard_capture_image_staging table
- ObjectStorageStagedImageStorageAdapter.java:
  - implements StagedImageStoragePort
- CaptureImageStagingServiceTest.java:
  - tests:
    - registerCaptureImage_success
    - registerCaptureImage_validation_failure
    - registerCaptureImage_session_not_found

second_slice_done_definition:
- request and response DTOs hold exact fields
- session existence check seam is fixed
- storage boundary is explicit
- repository seam and service seam are fixed
- test names and purpose are fixed

next_action:
- apply the same field-fill strategy to third slice
