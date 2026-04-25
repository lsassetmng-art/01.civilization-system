# ============================================================
# APPDEVELOPMENTSTUDIO PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: AppDevelopmentStudio
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
AppDevelopmentStudio Phase A development control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.AppDevelopmentStudio

target_server_source_root_example:
- src/main/java/com/lsam/AppDevelopmentStudio

target_test_source_root_example:
- src/test/java/com/lsam/AppDevelopmentStudio

phase_a_scope_modules:
- studio cockpit query
- implementation exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/AppDevelopmentStudio/api/controller/execution/StudioCockpitQueryController.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/controller/execution/ImplementationExceptionReviewQueryController.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/dto/execution/request/StudioCockpitQueryRequest.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/dto/execution/request/ImplementationExceptionReviewQueryRequest.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/dto/execution/response/StudioCockpitQueryResponse.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/dto/execution/response/ImplementationExceptionReviewQueryResponse.java
- src/main/java/com/lsam/AppDevelopmentStudio/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/service/execution/StudioCockpitQueryService.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/service/execution/ImplementationExceptionReviewQueryService.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/validator/execution/StudioCockpitQueryValidator.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/validator/execution/ImplementationExceptionReviewQueryValidator.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/mapper/execution/StudioCockpitQueryMapper.java
- src/main/java/com/lsam/AppDevelopmentStudio/application/mapper/execution/ImplementationExceptionReviewQueryMapper.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/model/execution/DevelopmentControlTimelineItem.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/model/execution/ImplementationExceptionReviewItem.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/model/execution/StudioCockpitSnapshot.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/port/execution/DevelopmentControlTimelineRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/port/execution/ImplementationExceptionReviewRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/port/execution/StudioCockpitSnapshotRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/domain/port/execution/AppDevelopmentStudioAuditPort.java
- src/main/java/com/lsam/AppDevelopmentStudio/infrastructure/repository/execution/JdbcDevelopmentControlTimelineRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/infrastructure/repository/execution/JdbcImplementationExceptionReviewRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/infrastructure/repository/execution/JdbcStudioCockpitSnapshotRepository.java
- src/main/java/com/lsam/AppDevelopmentStudio/infrastructure/audit/execution/DatabaseAppDevelopmentStudioAuditAdapter.java
- src/main/java/com/lsam/AppDevelopmentStudio/config/execution/AppDevelopmentStudioPhaseAConfig.java
- src/test/java/com/lsam/AppDevelopmentStudio/application/service/execution/StudioCockpitQueryServiceTest.java
- src/test/java/com/lsam/AppDevelopmentStudio/application/service/execution/ImplementationExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
