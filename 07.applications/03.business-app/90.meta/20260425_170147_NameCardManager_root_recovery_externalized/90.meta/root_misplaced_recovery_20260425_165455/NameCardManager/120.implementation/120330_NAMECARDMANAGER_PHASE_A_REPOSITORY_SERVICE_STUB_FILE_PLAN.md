# ============================================================
# NAMECARDMANAGER PHASE A REPOSITORY SERVICE STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-stub-file-plan

purpose:
Defines the first implementation-ready stub file plan for the
Phase A capture staging and company timeline slice.
This document fixes file boundaries before code creation begins.

implementation_policy:
- additive only
- do not rewrite unrelated existing modules
- preserve existing exact payload foundation
- preserve existing physical schema core assumptions
- do not embed Japanese literals in Java source
- strings and localized text remain outside Java runtime code

target_package_base:
- com.lsam.NameCardManager

target_server_source_root_example:
- src/main/java/com/lsam/NameCardManager

target_test_source_root_example:
- src/test/java/com/lsam/NameCardManager

phase_a_scope_modules:
- capture session create
- capture image staging register
- capture session finalize
- relationship query bridge
- company timeline query
- audit write bridge

recommended_stub_tree:
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureSessionController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureImageStagingController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CaptureFinalizeController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/RelationshipQueryController.java
- src/main/java/com/lsam/NameCardManager/api/controller/namecard/CompanyTimelineQueryController.java

- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CreateCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RegisterCaptureImageRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/FinalizeCaptureSessionRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/RelationshipQueryRequest.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/request/CompanyTimelineQueryRequest.java

- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CaptureImageStagingResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/FinalizeCaptureSessionResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/RelationshipQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/namecard/response/CompanyTimelineQueryResponse.java
- src/main/java/com/lsam/NameCardManager/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryService.java
- src/main/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryService.java

- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CreateCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RegisterCaptureImageValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/FinalizeCaptureSessionValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/RelationshipQueryValidator.java
- src/main/java/com/lsam/NameCardManager/application/validator/namecard/CompanyTimelineQueryValidator.java

- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CaptureImageStagingMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/FinalizeCaptureSessionMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/RelationshipQueryMapper.java
- src/main/java/com/lsam/NameCardManager/application/mapper/namecard/CompanyTimelineQueryMapper.java

- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureSession.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CaptureImageStaging.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/CompanyTimelineEvent.java
- src/main/java/com/lsam/NameCardManager/domain/model/namecard/NamecardRelationshipView.java

- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/CompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/RelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/StagedImageStoragePort.java
- src/main/java/com/lsam/NameCardManager/domain/port/namecard/NamecardAuditPort.java

- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureSessionRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCaptureImageStagingRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcCompanyTimelineEventRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/repository/namecard/JdbcRelationshipQueryRepository.java
- src/main/java/com/lsam/NameCardManager/infrastructure/storage/namecard/ObjectStorageStagedImageStorageAdapter.java
- src/main/java/com/lsam/NameCardManager/infrastructure/audit/namecard/DatabaseNamecardAuditAdapter.java

- src/main/java/com/lsam/NameCardManager/config/namecard/NamecardPhaseAConfig.java

- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureSessionServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureImageStagingServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CaptureFinalizeServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/RelationshipQueryServiceTest.java
- src/test/java/com/lsam/NameCardManager/application/service/namecard/CompanyTimelineQueryServiceTest.java

file_role_notes:
- controller:
  - request to service entry
  - auth context handoff
  - response return only
- request dto:
  - exact API field contract
- response dto:
  - exact API response contract
- validator:
  - required field check
  - enum and phase boundary check
- mapper:
  - dto and domain conversion only
- service:
  - use case orchestration
  - transaction boundary coordination
- domain model:
  - runtime meaning carrier
- domain port:
  - stable boundary for persistence and external services
- jdbc repository:
  - SQL-backed persistence adapter
- storage adapter:
  - staged image storage key handling
- audit adapter:
  - audit append bridge only
- config:
  - bean wiring for Phase A scope

minimum_stub_creation_order:
- 01 request and response dto
- 02 validators
- 03 controllers
- 04 domain models
- 05 domain ports
- 06 services
- 07 jdbc repositories
- 08 storage and audit adapters
- 09 config
- 10 service tests

module_dependency_rule:
- controller depends on dto, validator, service
- service depends on domain model, mapper, port
- repository adapter depends on port contract and sql access layer
- dto must not depend on infrastructure
- domain model must not depend on controller

alignment_requirements:
- dto field names must follow the Phase A API DTO freeze document
- row family assumptions must follow the Phase A DDL exact SQL document
- relationship query and company timeline query must follow previously fixed exact payload documents

non_scope:
- no actual Java file generation in this step
- no Spring annotation decision lock in this step
- no framework replacement in this step
- no Android client file plan in this step
- no other BusinessOS app touched

next_action:
- break this plan into module-by-module implementation task list
- then create exact file skeleton content order
