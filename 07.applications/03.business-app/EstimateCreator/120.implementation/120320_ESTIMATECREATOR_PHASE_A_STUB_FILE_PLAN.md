# ============================================================
# ESTIMATECREATOR PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
EstimateCreator Phase A commercial control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.EstimateCreator

target_server_source_root_example:
- src/main/java/com/lsam/EstimateCreator

target_test_source_root_example:
- src/test/java/com/lsam/EstimateCreator

phase_a_scope_modules:
- estimate cockpit query
- revision approval review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/EstimateCreator/api/controller/commercial/EstimateCockpitQueryController.java
- src/main/java/com/lsam/EstimateCreator/api/controller/commercial/RevisionApprovalReviewQueryController.java

- src/main/java/com/lsam/EstimateCreator/api/dto/commercial/request/EstimateCockpitQueryRequest.java
- src/main/java/com/lsam/EstimateCreator/api/dto/commercial/request/RevisionApprovalReviewQueryRequest.java

- src/main/java/com/lsam/EstimateCreator/api/dto/commercial/response/EstimateCockpitQueryResponse.java
- src/main/java/com/lsam/EstimateCreator/api/dto/commercial/response/RevisionApprovalReviewQueryResponse.java
- src/main/java/com/lsam/EstimateCreator/api/dto/common/ErrorResponse.java

- src/main/java/com/lsam/EstimateCreator/application/service/commercial/EstimateCockpitQueryService.java
- src/main/java/com/lsam/EstimateCreator/application/service/commercial/RevisionApprovalReviewQueryService.java

- src/main/java/com/lsam/EstimateCreator/application/validator/commercial/EstimateCockpitQueryValidator.java
- src/main/java/com/lsam/EstimateCreator/application/validator/commercial/RevisionApprovalReviewQueryValidator.java

- src/main/java/com/lsam/EstimateCreator/application/mapper/commercial/EstimateCockpitQueryMapper.java
- src/main/java/com/lsam/EstimateCreator/application/mapper/commercial/RevisionApprovalReviewQueryMapper.java

- src/main/java/com/lsam/EstimateCreator/domain/model/commercial/EstimateCommercialTimelineItem.java
- src/main/java/com/lsam/EstimateCreator/domain/model/commercial/RevisionApprovalReviewItem.java
- src/main/java/com/lsam/EstimateCreator/domain/model/commercial/EstimateCockpitSnapshot.java

- src/main/java/com/lsam/EstimateCreator/domain/port/commercial/CommercialTimelineRepository.java
- src/main/java/com/lsam/EstimateCreator/domain/port/commercial/RevisionApprovalReviewRepository.java
- src/main/java/com/lsam/EstimateCreator/domain/port/commercial/EstimateCockpitSnapshotRepository.java
- src/main/java/com/lsam/EstimateCreator/domain/port/commercial/EstimateCreatorAuditPort.java

- src/main/java/com/lsam/EstimateCreator/infrastructure/repository/commercial/JdbcCommercialTimelineRepository.java
- src/main/java/com/lsam/EstimateCreator/infrastructure/repository/commercial/JdbcRevisionApprovalReviewRepository.java
- src/main/java/com/lsam/EstimateCreator/infrastructure/repository/commercial/JdbcEstimateCockpitSnapshotRepository.java
- src/main/java/com/lsam/EstimateCreator/infrastructure/audit/commercial/DatabaseEstimateCreatorAuditAdapter.java

- src/main/java/com/lsam/EstimateCreator/config/commercial/EstimateCreatorPhaseAConfig.java

- src/test/java/com/lsam/EstimateCreator/application/service/commercial/EstimateCockpitQueryServiceTest.java
- src/test/java/com/lsam/EstimateCreator/application/service/commercial/RevisionApprovalReviewQueryServiceTest.java

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
- cockpit and revision review responses must remain aligned to their fixed payload families
