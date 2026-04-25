# ============================================================
# NAMECARDMANAGER PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact content writing order for Phase A stub files so
file creation can proceed without reopening structure or dependency
questions.

baseline_documents:
- Phase A DDL exact SQL document
- Phase A API DTO field freeze
- Phase A repository and service stub file plan
- Phase A module implementation task breakdown

global_rules:
- additive only
- dto field names must match the freeze document exactly
- package boundaries must match the stub file plan exactly
- do not place Japanese literals in Java source
- controller must stay thin
- service owns orchestration
- repository owns persistence only
- audit path stays separate

content_order_strategy:
- start from the most dependency-light files
- lock contracts before orchestration
- add adapters only after domain ports exist
- add tests after service boundaries stabilize

phase_01_common_error_contract:
  files:
    - api/dto/common/ErrorResponse.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - fields
    - constructor or builder policy placeholder
    - getter policy placeholder
  completion_gate:
    - common error response shape is fixed

phase_02_request_dto_contracts:
  files:
    - api/dto/namecard/request/CreateCaptureSessionRequest.java
    - api/dto/namecard/request/RegisterCaptureImageRequest.java
    - api/dto/namecard/request/FinalizeCaptureSessionRequest.java
    - api/dto/namecard/request/RelationshipQueryRequest.java
    - api/dto/namecard/request/CompanyTimelineQueryRequest.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - exact fields in freeze order
    - no behavior beyond minimal accessor placeholder
  completion_gate:
    - request field names match freeze document exactly

phase_03_response_dto_contracts:
  files:
    - api/dto/namecard/response/CaptureSessionResponse.java
    - api/dto/namecard/response/CaptureImageStagingResponse.java
    - api/dto/namecard/response/FinalizeCaptureSessionResponse.java
    - api/dto/namecard/response/RelationshipQueryResponse.java
    - api/dto/namecard/response/CompanyTimelineQueryResponse.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - exact response fields in freeze order
    - nested item placeholders only where needed
  completion_gate:
    - response field names match freeze or payload source exactly

phase_04_validators:
  files:
    - application/validator/namecard/CreateCaptureSessionValidator.java
    - application/validator/namecard/RegisterCaptureImageValidator.java
    - application/validator/namecard/FinalizeCaptureSessionValidator.java
    - application/validator/namecard/RelationshipQueryValidator.java
    - application/validator/namecard/CompanyTimelineQueryValidator.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - validate method signature
    - required field checks
    - boundary checks
    - error emission placeholder
  completion_gate:
    - each validator has one primary validate entry

phase_05_domain_models:
  files:
    - domain/model/namecard/CaptureSession.java
    - domain/model/namecard/CaptureImageStaging.java
    - domain/model/namecard/CompanyTimelineEvent.java
    - domain/model/namecard/NamecardRelationshipView.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - identity fields
    - state fields
    - constructor policy placeholder
    - invariant comment placeholders
  completion_gate:
    - domain shapes align with DDL and payload family

phase_06_domain_ports:
  files:
    - domain/port/namecard/CaptureSessionRepository.java
    - domain/port/namecard/CaptureImageStagingRepository.java
    - domain/port/namecard/CompanyTimelineEventRepository.java
    - domain/port/namecard/RelationshipQueryRepository.java
    - domain/port/namecard/StagedImageStoragePort.java
    - domain/port/namecard/NamecardAuditPort.java
  write_order:
    - package declaration
    - imports
    - interface declaration
    - method signatures only
    - no infrastructure dependency
  completion_gate:
    - ports compile without adapter knowledge

phase_07_mappers:
  files:
    - application/mapper/namecard/CaptureSessionMapper.java
    - application/mapper/namecard/CaptureImageStagingMapper.java
    - application/mapper/namecard/FinalizeCaptureSessionMapper.java
    - application/mapper/namecard/RelationshipQueryMapper.java
    - application/mapper/namecard/CompanyTimelineQueryMapper.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dto to domain method signature
    - domain to response method signature
    - placeholder bodies
  completion_gate:
    - mapping seams are explicit before services are written

phase_08_services:
  files:
    - application/service/namecard/CaptureSessionService.java
    - application/service/namecard/CaptureImageStagingService.java
    - application/service/namecard/CaptureFinalizeService.java
    - application/service/namecard/RelationshipQueryService.java
    - application/service/namecard/CompanyTimelineQueryService.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dependency fields
    - constructor
    - public execute method
    - transaction boundary comment
    - audit call seam
  completion_gate:
    - each service shows orchestration boundary clearly

phase_09_controllers:
  files:
    - api/controller/namecard/CaptureSessionController.java
    - api/controller/namecard/CaptureImageStagingController.java
    - api/controller/namecard/CaptureFinalizeController.java
    - api/controller/namecard/RelationshipQueryController.java
    - api/controller/namecard/CompanyTimelineQueryController.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - dependency fields
    - endpoint method signature
    - validator call
    - service call
    - response return seam
  completion_gate:
    - controllers remain thin and dependency-safe

phase_10_repository_adapters:
  files:
    - infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
    - infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
    - infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
    - infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - sql access dependency field
    - implemented port methods
    - sql placeholder comments aligned to DDL doc
  completion_gate:
    - adapters match domain ports exactly

phase_11_storage_and_audit_adapters:
  files:
    - infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
    - infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - implemented port methods
    - storage key seam or audit append seam
  completion_gate:
    - external side effects are isolated behind ports

phase_12_configuration:
  files:
    - config/namecard/NamecardPhaseAConfig.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - bean wiring placeholders
    - module boundary comments
  completion_gate:
    - dependency graph is representable

phase_13_tests:
  files:
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
    - src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java
  write_order:
    - package declaration
    - imports
    - class declaration
    - fixture placeholder
    - success test
    - validation failure test
    - conflict or filter test
  completion_gate:
    - baseline regression seam exists for each service

first_slice_recommended_start:
- ErrorResponse
- CreateCaptureSessionRequest
- CaptureSessionResponse
- CreateCaptureSessionValidator
- CaptureSession
- CaptureSessionRepository
- CaptureSessionMapper
- CaptureSessionService
- CaptureSessionController
- JdbcCaptureSessionRepository
- DatabaseNamecardAuditAdapter
- NamecardPhaseAConfig
- CaptureSessionServiceTest

why_this_order:
- starts from contract-first
- keeps early compile graph shallow
- enables first endpoint vertical slice earliest
- avoids repository adapter drift before port definition

non_scope:
- no actual Java file generation in this document
- no framework annotation lock here
- no Android client content order here
- no other BusinessOS app touched

next_action:
- create first-slice file generation command pack
- then create second-slice file generation command pack for image staging
