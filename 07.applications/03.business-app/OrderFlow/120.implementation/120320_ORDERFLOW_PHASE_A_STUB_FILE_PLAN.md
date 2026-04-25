# ============================================================
# ORDERFLOW PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
OrderFlow Phase A operational control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.OrderFlow

target_server_source_root_example:
- src/main/java/com/lsam/OrderFlow

target_test_source_root_example:
- src/test/java/com/lsam/OrderFlow

phase_a_scope_modules:
- order cockpit query
- fulfillment exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/OrderFlow/api/controller/execution/OrderCockpitQueryController.java
- src/main/java/com/lsam/OrderFlow/api/controller/execution/FulfillmentExceptionReviewQueryController.java

- src/main/java/com/lsam/OrderFlow/api/dto/execution/request/OrderCockpitQueryRequest.java
- src/main/java/com/lsam/OrderFlow/api/dto/execution/request/FulfillmentExceptionReviewQueryRequest.java

- src/main/java/com/lsam/OrderFlow/api/dto/execution/response/OrderCockpitQueryResponse.java
- src/main/java/com/lsam/OrderFlow/api/dto/execution/response/FulfillmentExceptionReviewQueryResponse.java
- src/main/java/com/lsam/OrderFlow/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryService.java
- src/main/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryService.java

- src/main/java/com/lsam/OrderFlow/application/validator/execution/OrderCockpitQueryValidator.java
- src/main/java/com/lsam/OrderFlow/application/validator/execution/FulfillmentExceptionReviewQueryValidator.java

- src/main/java/com/lsam/OrderFlow/application/mapper/execution/OrderCockpitQueryMapper.java
- src/main/java/com/lsam/OrderFlow/application/mapper/execution/FulfillmentExceptionReviewQueryMapper.java

- src/main/java/com/lsam/OrderFlow/domain/model/execution/OrderExecutionTimelineItem.java
- src/main/java/com/lsam/OrderFlow/domain/model/execution/FulfillmentExceptionReviewItem.java
- src/main/java/com/lsam/OrderFlow/domain/model/execution/OrderCockpitSnapshot.java

- src/main/java/com/lsam/OrderFlow/domain/port/execution/ExecutionTimelineRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/FulfillmentExceptionReviewRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/OrderCockpitSnapshotRepository.java
- src/main/java/com/lsam/OrderFlow/domain/port/execution/OrderFlowAuditPort.java

- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcExecutionTimelineRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcFulfillmentExceptionReviewRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/repository/execution/JdbcOrderCockpitSnapshotRepository.java
- src/main/java/com/lsam/OrderFlow/infrastructure/audit/execution/DatabaseOrderFlowAuditAdapter.java

- src/main/java/com/lsam/OrderFlow/config/execution/OrderFlowPhaseAConfig.java

- src/test/java/com/lsam/OrderFlow/application/service/execution/OrderCockpitQueryServiceTest.java
- src/test/java/com/lsam/OrderFlow/application/service/execution/FulfillmentExceptionReviewQueryServiceTest.java

file_role_notes:
- controller:
  - request entry
  - auth context handoff
  - response return only
- dto:
  - exact API contract
- validator:
  - required field and boundary checks
- mapper:
  - dto to domain and domain to response conversion
- service:
  - use case orchestration and summary assembly
- domain model:
  - runtime meaning carrier
- port:
  - stable repository and audit boundary
- jdbc repository:
  - SQL-backed adapter
- audit adapter:
  - append-only audit bridge
- config:
  - bean wiring and module isolation

minimum_stub_creation_order:
- 01 common error dto
- 02 request and response dto
- 03 validators
- 04 domain models
- 05 domain ports
- 06 mappers
- 07 services
- 08 controllers
- 09 jdbc repositories
- 10 audit adapter
- 11 config
- 12 service tests

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
