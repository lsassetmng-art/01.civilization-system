# ============================================================
# EXPENSESETTLEMENT PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ExpenseSettlement
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
ExpenseSettlement Phase A settlement control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.ExpenseSettlement

target_server_source_root_example:
- src/main/java/com/lsam/ExpenseSettlement

target_test_source_root_example:
- src/test/java/com/lsam/ExpenseSettlement

phase_a_scope_modules:
- expense cockpit query
- expense exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/ExpenseSettlement/api/controller/execution/ExpenseCockpitQueryController.java
- src/main/java/com/lsam/ExpenseSettlement/api/controller/execution/ExpenseExceptionReviewQueryController.java
- src/main/java/com/lsam/ExpenseSettlement/api/dto/execution/request/ExpenseCockpitQueryRequest.java
- src/main/java/com/lsam/ExpenseSettlement/api/dto/execution/request/ExpenseExceptionReviewQueryRequest.java
- src/main/java/com/lsam/ExpenseSettlement/api/dto/execution/response/ExpenseCockpitQueryResponse.java
- src/main/java/com/lsam/ExpenseSettlement/api/dto/execution/response/ExpenseExceptionReviewQueryResponse.java
- src/main/java/com/lsam/ExpenseSettlement/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/ExpenseSettlement/application/service/execution/ExpenseCockpitQueryService.java
- src/main/java/com/lsam/ExpenseSettlement/application/service/execution/ExpenseExceptionReviewQueryService.java
- src/main/java/com/lsam/ExpenseSettlement/application/validator/execution/ExpenseCockpitQueryValidator.java
- src/main/java/com/lsam/ExpenseSettlement/application/validator/execution/ExpenseExceptionReviewQueryValidator.java
- src/main/java/com/lsam/ExpenseSettlement/application/mapper/execution/ExpenseCockpitQueryMapper.java
- src/main/java/com/lsam/ExpenseSettlement/application/mapper/execution/ExpenseExceptionReviewQueryMapper.java
- src/main/java/com/lsam/ExpenseSettlement/domain/model/execution/SettlementControlTimelineItem.java
- src/main/java/com/lsam/ExpenseSettlement/domain/model/execution/ExpenseExceptionReviewItem.java
- src/main/java/com/lsam/ExpenseSettlement/domain/model/execution/ExpenseCockpitSnapshot.java
- src/main/java/com/lsam/ExpenseSettlement/domain/port/execution/SettlementControlTimelineRepository.java
- src/main/java/com/lsam/ExpenseSettlement/domain/port/execution/ExpenseExceptionReviewRepository.java
- src/main/java/com/lsam/ExpenseSettlement/domain/port/execution/ExpenseCockpitSnapshotRepository.java
- src/main/java/com/lsam/ExpenseSettlement/domain/port/execution/ExpenseSettlementAuditPort.java
- src/main/java/com/lsam/ExpenseSettlement/infrastructure/repository/execution/JdbcSettlementControlTimelineRepository.java
- src/main/java/com/lsam/ExpenseSettlement/infrastructure/repository/execution/JdbcExpenseExceptionReviewRepository.java
- src/main/java/com/lsam/ExpenseSettlement/infrastructure/repository/execution/JdbcExpenseCockpitSnapshotRepository.java
- src/main/java/com/lsam/ExpenseSettlement/infrastructure/audit/execution/DatabaseExpenseSettlementAuditAdapter.java
- src/main/java/com/lsam/ExpenseSettlement/config/execution/ExpenseSettlementPhaseAConfig.java
- src/test/java/com/lsam/ExpenseSettlement/application/service/execution/ExpenseCockpitQueryServiceTest.java
- src/test/java/com/lsam/ExpenseSettlement/application/service/execution/ExpenseExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
