# ============================================================
# PROJECTFLOW PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
ProjectFlow Phase A delivery control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.ProjectFlow

target_server_source_root_example:
- src/main/java/com/lsam/ProjectFlow

target_test_source_root_example:
- src/test/java/com/lsam/ProjectFlow

phase_a_scope_modules:
- project cockpit query
- risk dependency review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/ProjectFlow/api/controller/delivery/ProjectCockpitQueryController.java
- src/main/java/com/lsam/ProjectFlow/api/controller/delivery/RiskDependencyReviewQueryController.java

- src/main/java/com/lsam/ProjectFlow/api/dto/delivery/request/ProjectCockpitQueryRequest.java
- src/main/java/com/lsam/ProjectFlow/api/dto/delivery/request/RiskDependencyReviewQueryRequest.java

- src/main/java/com/lsam/ProjectFlow/api/dto/delivery/response/ProjectCockpitQueryResponse.java
- src/main/java/com/lsam/ProjectFlow/api/dto/delivery/response/RiskDependencyReviewQueryResponse.java
- src/main/java/com/lsam/ProjectFlow/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/ProjectFlow/application/service/delivery/ProjectCockpitQueryService.java
- src/main/java/com/lsam/ProjectFlow/application/service/delivery/RiskDependencyReviewQueryService.java

- src/main/java/com/lsam/ProjectFlow/application/validator/delivery/ProjectCockpitQueryValidator.java
- src/main/java/com/lsam/ProjectFlow/application/validator/delivery/RiskDependencyReviewQueryValidator.java

- src/main/java/com/lsam/ProjectFlow/application/mapper/delivery/ProjectCockpitQueryMapper.java
- src/main/java/com/lsam/ProjectFlow/application/mapper/delivery/RiskDependencyReviewQueryMapper.java

- src/main/java/com/lsam/ProjectFlow/domain/model/delivery/ProjectDeliveryTimelineItem.java
- src/main/java/com/lsam/ProjectFlow/domain/model/delivery/DependencyReviewItem.java
- src/main/java/com/lsam/ProjectFlow/domain/model/delivery/ProjectCockpitSnapshot.java

- src/main/java/com/lsam/ProjectFlow/domain/port/delivery/DeliveryTimelineRepository.java
- src/main/java/com/lsam/ProjectFlow/domain/port/delivery/DependencyReviewRepository.java
- src/main/java/com/lsam/ProjectFlow/domain/port/delivery/ProjectCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProjectFlow/domain/port/delivery/ProjectFlowAuditPort.java

- src/main/java/com/lsam/ProjectFlow/infrastructure/repository/delivery/JdbcDeliveryTimelineRepository.java
- src/main/java/com/lsam/ProjectFlow/infrastructure/repository/delivery/JdbcDependencyReviewRepository.java
- src/main/java/com/lsam/ProjectFlow/infrastructure/repository/delivery/JdbcProjectCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProjectFlow/infrastructure/audit/delivery/DatabaseProjectFlowAuditAdapter.java

- src/main/java/com/lsam/ProjectFlow/config/delivery/ProjectFlowPhaseAConfig.java

- src/test/java/com/lsam/ProjectFlow/application/service/delivery/ProjectCockpitQueryServiceTest.java
- src/test/java/com/lsam/ProjectFlow/application/service/delivery/RiskDependencyReviewQueryServiceTest.java

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
- cockpit and risk review responses must remain aligned to their fixed payload families
