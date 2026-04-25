# ============================================================
# NAMECARDMANAGER PHASE A MODULE IMPLEMENTATION TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-module-implementation-task-breakdown

purpose:
Breaks the Phase A stub file plan into module-by-module execution tasks
so implementation can proceed in a narrow, dependency-safe order.

baseline_dependencies:
- Phase A DDL exact SQL document
- Phase A API DTO field freeze
- Phase A repository and service stub file plan
- previously fixed relationship query payload
- previously fixed company timeline payload

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no ERP execution in Phase A
- audit write path remains separate from business mutation path
- no Japanese literals in Java source

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes for Phase A endpoints
  target_files:
    - CreateCaptureSessionRequest.java
    - RegisterCaptureImageRequest.java
    - FinalizeCaptureSessionRequest.java
    - RelationshipQueryRequest.java
    - CompanyTimelineQueryRequest.java
    - CaptureSessionResponse.java
    - CaptureImageStagingResponse.java
    - FinalizeCaptureSessionResponse.java
    - RelationshipQueryResponse.java
    - CompanyTimelineQueryResponse.java
    - ErrorResponse.java
  tasks:
    - reflect exact field names from DTO freeze document
    - declare nullable and required fields explicitly
    - keep DTO package boundaries isolated from infrastructure
  done_definition:
    - all DTO classes compile
    - no field rename from freeze document
    - response contracts are structurally fixed

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - CreateCaptureSessionValidator.java
    - RegisterCaptureImageValidator.java
    - FinalizeCaptureSessionValidator.java
    - RelationshipQueryValidator.java
    - CompanyTimelineQueryValidator.java
  tasks:
    - required field validation
    - enum-like text code validation
    - paging and date range boundary validation
    - Phase A scope rejection for unsupported combinations
  done_definition:
    - each endpoint has dedicated validator
    - validation error mapping strategy is fixed

module_03_capture_session_create:
  goal:
    - create capture session end to end
  target_files:
    - CaptureSessionController.java
    - CaptureSessionService.java
    - CaptureSession.java
    - CaptureSessionRepository.java
    - JdbcCaptureSessionRepository.java
    - CaptureSessionMapper.java
  tasks:
    - wire controller to validator and service
    - implement create session orchestration
    - persist capture session row
    - map domain result to response DTO
    - emit audit append after success
  done_definition:
    - create endpoint works against repository boundary
    - capture session row persistence path is stable
    - audit append hook is defined

module_04_capture_image_staging_register:
  goal:
    - register one staged image under a capture session
  target_files:
    - CaptureImageStagingController.java
    - CaptureImageStagingService.java
    - CaptureImageStaging.java
    - CaptureImageStagingRepository.java
    - JdbcCaptureImageStagingRepository.java
    - ObjectStorageStagedImageStorageAdapter.java
    - CaptureImageStagingMapper.java
  tasks:
    - validate session existence and state
    - register image metadata only
    - preserve image order logic
    - keep binary payload outside repository
    - emit audit append after success
  done_definition:
    - staged image row insert path is stable
    - storage key handling boundary is explicit
    - session-image relation is enforced

module_05_capture_finalize:
  goal:
    - close staging and move session into finalized workflow state
  target_files:
    - CaptureFinalizeController.java
    - CaptureFinalizeService.java
    - FinalizeCaptureSessionMapper.java
  tasks:
    - validate finalize mode
    - load session and staged images
    - determine generatedDraftId handoff rule
    - update capture status and finalized timestamp
    - return warning code array when partial issues exist
    - emit audit append after success
  done_definition:
    - finalize path handles state transition safely
    - conflict case rules are fixed
    - response shape matches DTO freeze

module_06_relationship_query_bridge:
  goal:
    - connect existing relationship query exact payload to service and repository flow
  target_files:
    - RelationshipQueryController.java
    - RelationshipQueryService.java
    - RelationshipQueryRepository.java
    - JdbcRelationshipQueryRepository.java
    - RelationshipQueryMapper.java
    - NamecardRelationshipView.java
  tasks:
    - preserve exact payload field names
    - bind company scope and visibility filtering
    - connect existing relationship data sources without graph over-expansion
    - serialize response using fixed payload family
  done_definition:
    - relationship query endpoint is payload-compatible
    - visibility filtering occurs server-side
    - unsupported expansion paths remain blocked

module_07_company_timeline_query:
  goal:
    - expose timeline event rows through stable paging and filtering
  target_files:
    - CompanyTimelineQueryController.java
    - CompanyTimelineQueryService.java
    - CompanyTimelineEvent.java
    - CompanyTimelineEventRepository.java
    - JdbcCompanyTimelineEventRepository.java
    - CompanyTimelineQueryMapper.java
  tasks:
    - implement company scope filter
    - implement event type filter
    - implement date range filter
    - implement stable paging order using event_sort_ts desc
    - serialize exact response shape from fixed payload family
  done_definition:
    - timeline query works with paging and filter rules
    - row family aligns to Phase A DDL document
    - response shape aligns to exact payload document

module_08_audit_bridge:
  goal:
    - append auditable events after state-changing operations
  target_files:
    - NamecardAuditPort.java
    - DatabaseNamecardAuditAdapter.java
  tasks:
    - define audit append boundary
    - separate audit append from business mutation repository
    - write create, register, finalize event audit entries
  done_definition:
    - audit write is explicit and separate
    - mutation services can call audit port consistently

module_09_configuration:
  goal:
    - provide the minimum configuration and wiring boundary
  target_files:
    - NamecardPhaseAConfig.java
  tasks:
    - wire controller to service
    - wire service to repositories, storage adapter, and audit port
    - keep Phase A scope isolated from unrelated modules
  done_definition:
    - dependency wiring strategy is fixed
    - module boundaries remain clean

module_10_tests:
  goal:
    - establish minimum test safety net for Phase A slice
  target_files:
    - CaptureSessionServiceTest.java
    - CaptureImageStagingServiceTest.java
    - CaptureFinalizeServiceTest.java
    - RelationshipQueryServiceTest.java
    - CompanyTimelineQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - state conflict test
    - visibility filter test
    - paging and date filter test
  done_definition:
    - each service has baseline tests
    - critical Phase A paths are regression-checkable

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_capture_session_create
- module_04_capture_image_staging_register
- module_05_capture_finalize
- module_06_relationship_query_bridge
- module_07_company_timeline_query
- module_08_audit_bridge
- module_09_configuration
- module_10_tests

phase_a_ready_to_code_gate:
- dto names frozen
- validators fixed
- repository boundaries explicit
- service transaction boundaries explicit
- query payload compatibility preserved
- audit append boundary explicit

non_scope:
- no actual Java file generation in this document
- no Android client implementation here
- no OCR provider lock here
- no ERP publication execution here
- no other BusinessOS app touched

next_action:
- create exact stub content order plan
- then create file generation command pack for the first module slice
