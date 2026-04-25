# ============================================================
# QUICKFORECAST PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: QuickForecast
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
QuickForecast Phase A management control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.QuickForecast

target_server_source_root_example:
- src/main/java/com/lsam/QuickForecast

target_test_source_root_example:
- src/test/java/com/lsam/QuickForecast

phase_a_scope_modules:
- forecast cockpit query
- scenario exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/QuickForecast/api/controller/execution/ForecastCockpitQueryController.java
- src/main/java/com/lsam/QuickForecast/api/controller/execution/ScenarioExceptionReviewQueryController.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/request/ForecastCockpitQueryRequest.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/request/ScenarioExceptionReviewQueryRequest.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/response/ForecastCockpitQueryResponse.java
- src/main/java/com/lsam/QuickForecast/api/dto/execution/response/ScenarioExceptionReviewQueryResponse.java
- src/main/java/com/lsam/QuickForecast/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/QuickForecast/application/service/execution/ForecastCockpitQueryService.java
- src/main/java/com/lsam/QuickForecast/application/service/execution/ScenarioExceptionReviewQueryService.java
- src/main/java/com/lsam/QuickForecast/application/validator/execution/ForecastCockpitQueryValidator.java
- src/main/java/com/lsam/QuickForecast/application/validator/execution/ScenarioExceptionReviewQueryValidator.java
- src/main/java/com/lsam/QuickForecast/application/mapper/execution/ForecastCockpitQueryMapper.java
- src/main/java/com/lsam/QuickForecast/application/mapper/execution/ScenarioExceptionReviewQueryMapper.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ManagementForecastTimelineItem.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ScenarioExceptionReviewItem.java
- src/main/java/com/lsam/QuickForecast/domain/model/execution/ForecastCockpitSnapshot.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ManagementForecastTimelineRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/ForecastCockpitSnapshotRepository.java
- src/main/java/com/lsam/QuickForecast/domain/port/execution/QuickForecastAuditPort.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcManagementForecastTimelineRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcScenarioExceptionReviewRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/repository/execution/JdbcForecastCockpitSnapshotRepository.java
- src/main/java/com/lsam/QuickForecast/infrastructure/audit/execution/DatabaseQuickForecastAuditAdapter.java
- src/main/java/com/lsam/QuickForecast/config/execution/QuickForecastPhaseAConfig.java
- src/test/java/com/lsam/QuickForecast/application/service/execution/ForecastCockpitQueryServiceTest.java
- src/test/java/com/lsam/QuickForecast/application/service/execution/ScenarioExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
