# ============================================================
# PROJECTFLOW PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the ProjectFlow Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A delivery timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no task or milestone write automation in Phase A
- audit append remains separate from query repositories

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes
  target_files:
    - ProjectCockpitQueryRequest.java
    - RiskDependencyReviewQueryRequest.java
    - ProjectCockpitQueryResponse.java
    - RiskDependencyReviewQueryResponse.java
    - ErrorResponse.java
  done_definition:
    - all DTO classes compile
    - field names match the DTO freeze exactly

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - ProjectCockpitQueryValidator.java
    - RiskDependencyReviewQueryValidator.java
  tasks:
    - required field validation
    - page boundary validation
    - filter boundary validation
  done_definition:
    - each endpoint has one dedicated validator

module_03_project_cockpit_query:
  goal:
    - assemble blocked, at-risk, and upcoming milestone visibility
  target_files:
    - ProjectCockpitQueryController.java
    - ProjectCockpitQueryService.java
    - ProjectDeliveryTimelineItem.java
    - DeliveryTimelineRepository.java
    - JdbcDeliveryTimelineRepository.java
    - ProjectCockpitQueryMapper.java
  tasks:
    - wire controller to validator and service
    - query delivery timeline rows
    - assemble cockpit summary message
    - emit audit append when needed
  done_definition:
    - cockpit query path is structurally stable

module_04_risk_dependency_review_query:
  goal:
    - expose dependency and risk review rows
  target_files:
    - RiskDependencyReviewQueryController.java
    - RiskDependencyReviewQueryService.java
    - DependencyReviewItem.java
    - DependencyReviewRepository.java
    - JdbcDependencyReviewRepository.java
    - RiskDependencyReviewQueryMapper.java
  tasks:
    - apply risk filters
    - apply includeResolved toggle
    - apply includeDecisionPending toggle
    - emit audit append when needed
  done_definition:
    - risk review query path is structurally stable

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary
  target_files:
    - ProjectCockpitSnapshot.java
    - ProjectCockpitSnapshotRepository.java
    - JdbcProjectCockpitSnapshotRepository.java
    - ProjectFlowAuditPort.java
    - DatabaseProjectFlowAuditAdapter.java
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
    - ProjectFlowPhaseAConfig.java
  tasks:
    - wire controllers to services
    - wire services to repositories and audit port
  done_definition:
    - dependency graph is representable

module_07_tests:
  goal:
    - establish minimum Phase A test safety net
  target_files:
    - ProjectCockpitQueryServiceTest.java
    - RiskDependencyReviewQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - filter variation test
  done_definition:
    - each core query service has baseline tests

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_project_cockpit_query
- module_04_risk_dependency_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

phase_a_ready_to_code_gate:
- DTO names frozen
- validators fixed
- repository boundaries explicit
- service responsibilities explicit
- cockpit and risk review payload compatibility preserved
- audit append boundary explicit
