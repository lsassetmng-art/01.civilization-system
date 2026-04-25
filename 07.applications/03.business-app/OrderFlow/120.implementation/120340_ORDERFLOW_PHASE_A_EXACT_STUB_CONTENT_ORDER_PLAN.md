# ============================================================
# ORDERFLOW PHASE A EXACT STUB CONTENT ORDER PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-exact-stub-content-order-plan

purpose:
Defines the exact file content writing order for OrderFlow
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
    - api/dto/execution/request/OrderCockpitQueryRequest.java
    - api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java

phase_03_response_dto_contracts:
  files:
    - api/dto/execution/response/OrderCockpitQueryResponse.java
    - api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java

phase_04_validators:
  files:
    - application/validator/execution/OrderCockpitQueryValidator.java
    - application/validator/execution/FulfillmentExceptionReviewQueryValidator.java

phase_05_domain_models:
  files:
    - domain/model/execution/OrderExecutionTimelineItem.java
    - domain/model/execution/FulfillmentExceptionReviewItem.java
    - domain/model/execution/OrderCockpitSnapshot.java

phase_06_domain_ports:
  files:
    - domain/port/execution/ExecutionTimelineRepository.java
    - domain/port/execution/FulfillmentExceptionReviewRepository.java
    - domain/port/execution/OrderCockpitSnapshotRepository.java
    - domain/port/execution/OrderFlowAuditPort.java

phase_07_mappers:
  files:
    - application/mapper/execution/OrderCockpitQueryMapper.java
    - application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java

phase_08_services:
  files:
    - application/service/execution/OrderCockpitQueryService.java
    - application/service/execution/FulfillmentExceptionReviewQueryService.java

phase_09_controllers:
  files:
    - api/controller/execution/OrderCockpitQueryController.java
    - api/controller/execution/FulfillmentExceptionReviewQueryController.java

phase_10_repository_adapters:
  files:
    - infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
    - infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
    - infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java

phase_11_audit_adapter:
  files:
    - infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java

phase_12_configuration:
  files:
    - config/execution/OrderFlowPhaseAConfig.java

phase_13_tests:
  files:
    - src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
    - src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java

first_slice_recommended_start:
- ErrorResponse
- OrderCockpitQueryRequest
- OrderCockpitQueryResponse
- OrderCockpitQueryValidator
- OrderExecutionTimelineItem
- ExecutionTimelineRepository
- OrderCockpitQueryMapper
- OrderCockpitQueryService
- OrderCockpitQueryController
- JdbcExecutionTimelineRepository
- DatabaseOrderFlowAuditAdapter
- OrderFlowPhaseAConfig
- OrderCockpitQueryServiceTest

why_this_order:
- starts from contract-first
- keeps the first compile graph shallow
- enables the cockpit query as the narrowest first vertical slice
- delays exception review query until cockpit boundaries are stable
