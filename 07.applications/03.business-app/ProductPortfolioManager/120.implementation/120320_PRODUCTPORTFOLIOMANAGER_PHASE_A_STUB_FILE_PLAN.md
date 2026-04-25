# ============================================================
# PRODUCTPORTFOLIOMANAGER PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProductPortfolioManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
ProductPortfolioManager Phase A management control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.ProductPortfolioManager

target_server_source_root_example:
- src/main/java/com/lsam/ProductPortfolioManager

target_test_source_root_example:
- src/test/java/com/lsam/ProductPortfolioManager

phase_a_scope_modules:
- portfolio cockpit query
- scenario exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/ProductPortfolioManager/api/controller/execution/PortfolioCockpitQueryController.java
- src/main/java/com/lsam/ProductPortfolioManager/api/controller/execution/ScenarioExceptionReviewQueryController.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/request/PortfolioCockpitQueryRequest.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/request/ScenarioExceptionReviewQueryRequest.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/response/PortfolioCockpitQueryResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/execution/response/ScenarioExceptionReviewQueryResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/ProductPortfolioManager/application/service/execution/PortfolioCockpitQueryService.java
- src/main/java/com/lsam/ProductPortfolioManager/application/service/execution/ScenarioExceptionReviewQueryService.java
- src/main/java/com/lsam/ProductPortfolioManager/application/validator/execution/PortfolioCockpitQueryValidator.java
- src/main/java/com/lsam/ProductPortfolioManager/application/validator/execution/ScenarioExceptionReviewQueryValidator.java
- src/main/java/com/lsam/ProductPortfolioManager/application/mapper/execution/PortfolioCockpitQueryMapper.java
- src/main/java/com/lsam/ProductPortfolioManager/application/mapper/execution/ScenarioExceptionReviewQueryMapper.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PortfolioControlTimelineItem.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PrioritizationExceptionReviewItem.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/model/execution/PortfolioCockpitSnapshot.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/PortfolioControlTimelineRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/ScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/PortfolioCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/domain/port/execution/ProductPortfolioManagerAuditPort.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcPortfolioControlTimelineRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/repository/execution/JdbcPortfolioCockpitSnapshotRepository.java
- src/main/java/com/lsam/ProductPortfolioManager/infrastructure/audit/execution/DatabaseProductPortfolioManagerAuditAdapter.java
- src/main/java/com/lsam/ProductPortfolioManager/config/execution/ProductPortfolioManagerPhaseAConfig.java
- src/test/java/com/lsam/ProductPortfolioManager/application/service/execution/PortfolioCockpitQueryServiceTest.java
- src/test/java/com/lsam/ProductPortfolioManager/application/service/execution/ScenarioExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
