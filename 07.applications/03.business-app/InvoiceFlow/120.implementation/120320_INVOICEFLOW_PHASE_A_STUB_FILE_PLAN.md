# ============================================================
# INVOICEFLOW PHASE A STUB FILE PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-stub-file-plan

purpose:
Defines the implementation-ready stub file boundary for
InvoiceFlow Phase A financial control.

implementation_policy:
- additive only
- exact DTOs first
- no Japanese literals in Java source
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append stays separate

target_package_base:
- com.lsam.InvoiceFlow

target_server_source_root_example:
- src/main/java/com/lsam/InvoiceFlow

target_test_source_root_example:
- src/test/java/com/lsam/InvoiceFlow

phase_a_scope_modules:
- billing cockpit query
- settlement exception review query
- cockpit snapshot and audit bridge

recommended_stub_tree:
- src/main/java/com/lsam/InvoiceFlow/api/controller/execution/BillingCockpitQueryController.java
- src/main/java/com/lsam/InvoiceFlow/api/controller/execution/SettlementExceptionReviewQueryController.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/request/BillingCockpitQueryRequest.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/request/SettlementExceptionReviewQueryRequest.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/response/BillingCockpitQueryResponse.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/execution/response/SettlementExceptionReviewQueryResponse.java
- src/main/java/com/lsam/InvoiceFlow/api/dto/common/ErrorResponse.java
- src/main/java/com/lsam/InvoiceFlow/application/service/execution/BillingCockpitQueryService.java
- src/main/java/com/lsam/InvoiceFlow/application/service/execution/SettlementExceptionReviewQueryService.java
- src/main/java/com/lsam/InvoiceFlow/application/validator/execution/BillingCockpitQueryValidator.java
- src/main/java/com/lsam/InvoiceFlow/application/validator/execution/SettlementExceptionReviewQueryValidator.java
- src/main/java/com/lsam/InvoiceFlow/application/mapper/execution/BillingCockpitQueryMapper.java
- src/main/java/com/lsam/InvoiceFlow/application/mapper/execution/SettlementExceptionReviewQueryMapper.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/BillingExecutionTimelineItem.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/SettlementExceptionReviewItem.java
- src/main/java/com/lsam/InvoiceFlow/domain/model/execution/BillingCockpitSnapshot.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/BillingExecutionTimelineRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/SettlementExceptionReviewRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/BillingCockpitSnapshotRepository.java
- src/main/java/com/lsam/InvoiceFlow/domain/port/execution/InvoiceFlowAuditPort.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcBillingExecutionTimelineRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcSettlementExceptionReviewRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/repository/execution/JdbcBillingCockpitSnapshotRepository.java
- src/main/java/com/lsam/InvoiceFlow/infrastructure/audit/execution/DatabaseInvoiceFlowAuditAdapter.java
- src/main/java/com/lsam/InvoiceFlow/config/execution/InvoiceFlowPhaseAConfig.java
- src/test/java/com/lsam/InvoiceFlow/application/service/execution/BillingCockpitQueryServiceTest.java
- src/test/java/com/lsam/InvoiceFlow/application/service/execution/SettlementExceptionReviewQueryServiceTest.java

alignment_requirements:
- DTO field names must follow the Phase A API DTO freeze
- row-family assumptions must follow the DDL additive plan
- cockpit and exception review responses must remain aligned to their fixed payload families
