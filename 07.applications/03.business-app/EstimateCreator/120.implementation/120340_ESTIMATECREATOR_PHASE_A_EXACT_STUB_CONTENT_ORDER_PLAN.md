# ============================================================
# ESTIMATECREATOR PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for EstimateCreator
Phase A stub generation.

baseline_documents:
- Phase A DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A stub file plan
- Phase A module task breakdown

global_rules:
- additive only
- DTO field names match the freeze document exactly
- controller stays thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

content_order_strategy:
- start from dependency-light files
- lock contracts first
- write ports before adapters
- write tests after service boundaries are clear

phase_01_common_error_contract:
  files:
    - api/dto/common/ErrorResponse.java

phase_02_request_dto_contracts:
  files:
    - api/dto/commercial/request/EstimateCockpitQueryRequest.java
    - api/dto/commercial/request/RevisionApprovalReviewQueryRequest.java

phase_03_response_dto_contracts:
  files:
    - api/dto/commercial/response/EstimateCockpitQueryResponse.java
    - api/dto/commercial/response/RevisionApprovalReviewQueryResponse.java

phase_04_validators:
  files:
    - application/validator/commercial/EstimateCockpitQueryValidator.java
    - application/validator/commercial/RevisionApprovalReviewQueryValidator.java

phase_05_domain_models:
  files:
    - domain/model/commercial/EstimateCommercialTimelineItem.java
    - domain/model/commercial/RevisionApprovalReviewItem.java
    - domain/model/commercial/EstimateCockpitSnapshot.java

phase_06_domain_ports:
  files:
    - domain/port/commercial/CommercialTimelineRepository.java
    - domain/port/commercial/RevisionApprovalReviewRepository.java
    - domain/port/commercial/EstimateCockpitSnapshotRepository.java
    - domain/port/commercial/EstimateCreatorAuditPort.java

phase_07_mappers:
  files:
    - application/mapper/commercial/EstimateCockpitQueryMapper.java
    - application/mapper/commercial/RevisionApprovalReviewQueryMapper.java

phase_08_services:
  files:
    - application/service/commercial/EstimateCockpitQueryService.java
    - application/service/commercial/RevisionApprovalReviewQueryService.java

phase_09_controllers:
  files:
    - api/controller/commercial/EstimateCockpitQueryController.java
    - api/controller/commercial/RevisionApprovalReviewQueryController.java

phase_10_repository_adapters:
  files:
    - infrastructure/repository/commercial/JdbcCommercialTimelineRepository.java
    - infrastructure/repository/commercial/JdbcRevisionApprovalReviewRepository.java
    - infrastructure/repository/commercial/JdbcEstimateCockpitSnapshotRepository.java

phase_11_audit_adapter:
  files:
    - infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java

phase_12_configuration:
  files:
    - config/commercial/EstimateCreatorPhaseAConfig.java

phase_13_tests:
  files:
    - src/test/java/com/lsam/EstimateCreator/application/service/commercial/EstimateCockpitQueryServiceTest.java
    - src/test/java/com/lsam/EstimateCreator/application/service/commercial/RevisionApprovalReviewQueryServiceTest.java

first_slice_recommended_start:
- ErrorResponse
- EstimateCockpitQueryRequest
- EstimateCockpitQueryResponse
- EstimateCockpitQueryValidator
- EstimateCommercialTimelineItem
- CommercialTimelineRepository
- EstimateCockpitQueryMapper
- EstimateCockpitQueryService
- EstimateCockpitQueryController
- JdbcCommercialTimelineRepository
- DatabaseEstimateCreatorAuditAdapter
- EstimateCreatorPhaseAConfig
- EstimateCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays revision review query until cockpit boundaries are stable
