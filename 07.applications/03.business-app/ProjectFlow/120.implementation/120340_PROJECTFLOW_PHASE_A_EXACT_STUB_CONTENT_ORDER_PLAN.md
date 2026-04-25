# ============================================================
# PROJECTFLOW PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for ProjectFlow
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
    - api/dto/delivery/request/ProjectCockpitQueryRequest.java
    - api/dto/delivery/request/RiskDependencyReviewQueryRequest.java

phase_03_response_dto_contracts:
  files:
    - api/dto/delivery/response/ProjectCockpitQueryResponse.java
    - api/dto/delivery/response/RiskDependencyReviewQueryResponse.java

phase_04_validators:
  files:
    - application/validator/delivery/ProjectCockpitQueryValidator.java
    - application/validator/delivery/RiskDependencyReviewQueryValidator.java

phase_05_domain_models:
  files:
    - domain/model/delivery/ProjectDeliveryTimelineItem.java
    - domain/model/delivery/DependencyReviewItem.java
    - domain/model/delivery/ProjectCockpitSnapshot.java

phase_06_domain_ports:
  files:
    - domain/port/delivery/DeliveryTimelineRepository.java
    - domain/port/delivery/DependencyReviewRepository.java
    - domain/port/delivery/ProjectCockpitSnapshotRepository.java
    - domain/port/delivery/ProjectFlowAuditPort.java

phase_07_mappers:
  files:
    - application/mapper/delivery/ProjectCockpitQueryMapper.java
    - application/mapper/delivery/RiskDependencyReviewQueryMapper.java

phase_08_services:
  files:
    - application/service/delivery/ProjectCockpitQueryService.java
    - application/service/delivery/RiskDependencyReviewQueryService.java

phase_09_controllers:
  files:
    - api/controller/delivery/ProjectCockpitQueryController.java
    - api/controller/delivery/RiskDependencyReviewQueryController.java

phase_10_repository_adapters:
  files:
    - infrastructure/repository/delivery/JdbcDeliveryTimelineRepository.java
    - infrastructure/repository/delivery/JdbcDependencyReviewRepository.java
    - infrastructure/repository/delivery/JdbcProjectCockpitSnapshotRepository.java

phase_11_audit_adapter:
  files:
    - infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java

phase_12_configuration:
  files:
    - config/delivery/ProjectFlowPhaseAConfig.java

phase_13_tests:
  files:
    - src/test/java/com/lsam/ProjectFlow/application/service/delivery/ProjectCockpitQueryServiceTest.java
    - src/test/java/com/lsam/ProjectFlow/application/service/delivery/RiskDependencyReviewQueryServiceTest.java

first_slice_recommended_start:
- ErrorResponse
- ProjectCockpitQueryRequest
- ProjectCockpitQueryResponse
- ProjectCockpitQueryValidator
- ProjectDeliveryTimelineItem
- DeliveryTimelineRepository
- ProjectCockpitQueryMapper
- ProjectCockpitQueryService
- ProjectCockpitQueryController
- JdbcDeliveryTimelineRepository
- DatabaseProjectFlowAuditAdapter
- ProjectFlowPhaseAConfig
- ProjectCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays risk-review query until cockpit boundaries are stable
