# ============================================================
# TALENTGROWTH PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: TalentGrowth
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
TalentGrowth Phase A management control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.TalentGrowth

target_server_source_root_example:
- src/main/java/com/lsam/TalentGrowth

target_test_source_root_example:
- src/test/java/com/lsam/TalentGrowth

phase_a_scope_modules:
- growth cockpit query
- growth exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/TalentGrowth/api/controller/execution/GrowthCockpitQueryController.java
- src/main/java/com/lsam/TalentGrowth/api/controller/execution/GrowthExceptionReviewQueryController.java
- src/main/java/com/lsam/TalentGrowth/api/dto/execution/request/GrowthCockpitQueryRequest.java
- src/main/java/com/lsam/TalentGrowth/api/dto/execution/request/GrowthExceptionReviewQueryRequest.java
- src/main/java/com/lsam/TalentGrowth/api/dto/execution/response/GrowthCockpitQueryResponse.java
- src/main/java/com/lsam/TalentGrowth/api/dto/execution/response/GrowthExceptionReviewQueryResponse.java
- src/main/java/com/lsam/TalentGrowth/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/TalentGrowth/application/service/execution/GrowthCockpitQueryService.java
- src/main/java/com/lsam/TalentGrowth/application/service/execution/GrowthExceptionReviewQueryService.java
- src/main/java/com/lsam/TalentGrowth/application/validator/execution/GrowthCockpitQueryValidator.java
- src/main/java/com/lsam/TalentGrowth/application/validator/execution/GrowthExceptionReviewQueryValidator.java
- src/main/java/com/lsam/TalentGrowth/application/mapper/execution/GrowthCockpitQueryMapper.java
- src/main/java/com/lsam/TalentGrowth/application/mapper/execution/GrowthExceptionReviewQueryMapper.java
- src/main/java/com/lsam/TalentGrowth/domain/model/execution/GrowthControlTimelineItem.java
- src/main/java/com/lsam/TalentGrowth/domain/model/execution/ReadinessExceptionReviewItem.java
- src/main/java/com/lsam/TalentGrowth/domain/model/execution/GrowthCockpitSnapshot.java
- src/main/java/com/lsam/TalentGrowth/domain/port/execution/GrowthControlTimelineRepository.java
- src/main/java/com/lsam/TalentGrowth/domain/port/execution/GrowthExceptionReviewRepository.java
- src/main/java/com/lsam/TalentGrowth/domain/port/execution/GrowthCockpitSnapshotRepository.java
- src/main/java/com/lsam/TalentGrowth/domain/port/execution/TalentGrowthAuditPort.java
- src/main/java/com/lsam/TalentGrowth/infrastructure/repository/execution/JdbcGrowthControlTimelineRepository.java
- src/main/java/com/lsam/TalentGrowth/infrastructure/repository/execution/JdbcGrowthExceptionReviewRepository.java
- src/main/java/com/lsam/TalentGrowth/infrastructure/repository/execution/JdbcGrowthCockpitSnapshotRepository.java
- src/main/java/com/lsam/TalentGrowth/infrastructure/audit/execution/DatabaseTalentGrowthAuditAdapter.java
- src/main/java/com/lsam/TalentGrowth/config/execution/TalentGrowthPhaseAConfig.java
- src/test/java/com/lsam/TalentGrowth/application/service/execution/GrowthCockpitQueryServiceTest.java
- src/test/java/com/lsam/TalentGrowth/application/service/execution/GrowthExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
