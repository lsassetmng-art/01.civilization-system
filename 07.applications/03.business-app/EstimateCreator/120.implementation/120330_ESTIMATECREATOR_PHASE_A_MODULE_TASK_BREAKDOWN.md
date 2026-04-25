# ============================================================
# ESTIMATECREATOR PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the EstimateCreator Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A commercial timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no estimate draft or conversion write automation in Phase A
- audit append remains separate from query repositories

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes
  target_files:
    - EstimateCockpitQueryRequest.java
    - RevisionApprovalReviewQueryRequest.java
    - EstimateCockpitQueryResponse.java
    - RevisionApprovalReviewQueryResponse.java
    - ErrorResponse.java
  done_definition:
    - all DTO classes compile
    - field names match the DTO freeze exactly

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - EstimateCockpitQueryValidator.java
    - RevisionApprovalReviewQueryValidator.java
  tasks:
    - required field validation
    - page boundary validation
    - filter boundary validation
  done_definition:
    - each endpoint has one dedicated validator

module_03_estimate_cockpit_query:
  goal:
    - assemble approval pending items, conversion blockers, and recent revisions
  target_files:
    - EstimateCockpitQueryController.java
    - EstimateCockpitQueryService.java
    - EstimateCommercialTimelineItem.java
    - CommercialTimelineRepository.java
    - JdbcCommercialTimelineRepository.java
    - EstimateCockpitQueryMapper.java
  tasks:
    - wire controller to validator and service
    - query commercial timeline rows
    - assemble cockpit summary message
    - emit audit append when needed
  done_definition:
    - cockpit query path is structurally stable

module_04_revision_approval_review_query:
  goal:
    - expose revision and approval review rows
  target_files:
    - RevisionApprovalReviewQueryController.java
    - RevisionApprovalReviewQueryService.java
    - RevisionApprovalReviewItem.java
    - RevisionApprovalReviewRepository.java
    - JdbcRevisionApprovalReviewRepository.java
    - RevisionApprovalReviewQueryMapper.java
  tasks:
    - apply includeResolved toggle
    - apply pricing exception visibility toggle
    - apply approval pending toggle
    - emit audit append when needed
  done_definition:
    - revision review query path is structurally stable

module_05_snapshot_and_audit_bridge:
  goal:
    - define optional snapshot persistence and audit append boundary
  target_files:
    - EstimateCockpitSnapshot.java
    - EstimateCockpitSnapshotRepository.java
    - JdbcEstimateCockpitSnapshotRepository.java
    - EstimateCreatorAuditPort.java
    - DatabaseEstimateCreatorAuditAdapter.java
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
    - EstimateCreatorPhaseAConfig.java
  tasks:
    - wire controllers to services
    - wire services to repositories and audit port
  done_definition:
    - dependency graph is representable

module_07_tests:
  goal:
    - establish minimum Phase A test safety net
  target_files:
    - EstimateCockpitQueryServiceTest.java
    - RevisionApprovalReviewQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - filter variation test
  done_definition:
    - each core query service has baseline tests

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_estimate_cockpit_query
- module_04_revision_approval_review_query
- module_05_snapshot_and_audit_bridge
- module_06_configuration
- module_07_tests

phase_a_ready_to_code_gate:
- DTO names frozen
- validators fixed
- repository boundaries explicit
- service responsibilities explicit
- cockpit and revision review payload compatibility preserved
- audit append boundary explicit
