# ============================================================
# ORDERFLOW PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the OrderFlow Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A execution timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no order write or shipment execution automation in Phase A
- audit append remains separate from query repositories

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes
  target_files:
    - OrderCockpitQueryRequest.java
    - FulfillmentExceptionReviewQueryRequest.java
    - OrderCockpitQueryResponse.java
    - FulfillmentExceptionReviewQueryResponse.java
    - ErrorResponse.java
  done_definition:
    - all DTO classes compile
    - field names match the DTO freeze exactly

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - OrderCockpitQueryValidator.java
    - FulfillmentExceptionReviewQueryValidator.java
  tasks:
    - required field validation
    - page boundary validation
    - filter boundary validation
  done_definition:
    - each endpoint has one dedicated validator

module_03_order_cockpit_query:
  goal:
    - assemble pending approvals, fulfillment blockers, and downstream handoff visibility
  target_files:
    - OrderCockpitQueryController.java
    - OrderCockpitQueryService.java
    - OrderExecutionTimelineItem.java
    - ExecutionTimelineRepository.java
    - JdbcExecutionTimelineRepository.java
    - OrderCockpitQueryMapper.java
  tasks:
    - wire controller to validator and service
    - query execution timeline rows
    - assemble cockpit summary message
    - emit audit append when needed
  done_definition:
    - cockpit query path is structurally stable

module_04_fulfillment_exception_review_query:
  goal:
    - expose fulfillment and downstream blocker review rows
  target_files:
    - FulfillmentExceptionReviewQueryController.java
    - FulfillmentExceptionReviewQueryService.java
    - FulfillmentExceptionReviewItem.java
    - FulfillmentExceptionReviewRepository.java
    - JdbcFulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryMapper.java
  tasks:
    - apply includeResolved toggle
    - apply includeApprovalPending toggle
    - apply includeDownstreamBlockers toggle
    - emit audit append when needed
  done_definition:
    - exception review query path is structurally stable

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary
  target_files:
    - OrderCockpitSnapshot.java
    - OrderCockpitSnapshotRepository.java
    - JdbcOrderCockpitSnapshotRepository.java
    - OrderFlowAuditPort.java
    - DatabaseOrderFlowAuditAdapter.java
  tasks:
    - define snapshot seam
    - define audit append seams
    - keep audit append separate from review repositories
  done_definition:
    - snapshot and audit boundary is explicit

module_06_configuration:
  goal:
    - provide minimum wiring boundary
  target_files:
    - OrderFlowPhaseAConfig.java
  tasks:
    - wire controllers to services
    - wire services to repositories and audit port
  done_definition:
    - dependency graph is representable

module_07_tests:
  goal:
    - establish minimum Phase A test safety net
  target_files:
    - OrderCockpitQueryServiceTest.java
    - FulfillmentExceptionReviewQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - filter variation test
  done_definition:
    - each core query service has baseline tests

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_order_cockpit_query
- module_04_fulfillment_exception_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

phase_a_ready_to_code_gate:
- DTO names frozen
- validators fixed
- repository boundaries explicit
- service responsibilities explicit
- cockpit and exception review payload compatibility preserved
- audit append boundary explicit
