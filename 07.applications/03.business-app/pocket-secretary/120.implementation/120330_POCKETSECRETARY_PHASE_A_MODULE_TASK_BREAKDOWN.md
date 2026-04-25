# ============================================================
# POCKETSECRETARY PHASE A MODULE TASK BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-module-task-breakdown

purpose:
Breaks the PocketSecretary Phase A stub plan into module-by-module
execution tasks.

baseline_dependencies:
- Phase A action timeline DDL additive plan
- Phase A API starter
- Phase A API DTO field freeze
- Phase A implementation skeleton

global_rules:
- additive only
- exact DTO names must not drift
- no destructive schema rewrite
- no calendar or reminder provider lock in Phase A
- audit append remains separate from mutation repositories

module_01_request_response_dto:
  goal:
    - create exact request and response DTO classes
  target_files:
    - ActionPlanProposeRequest.java
    - ActionPlanConfirmRequest.java
    - DailyBriefingQueryRequest.java
    - ActionPlanProposeResponse.java
    - ActionPlanConfirmResponse.java
    - DailyBriefingQueryResponse.java
    - ErrorResponse.java
  done_definition:
    - all DTO classes compile
    - field names match the DTO freeze exactly

module_02_validators:
  goal:
    - reject invalid request shapes before service entry
  target_files:
    - ActionPlanProposeValidator.java
    - ActionPlanConfirmValidator.java
    - DailyBriefingQueryValidator.java
  tasks:
    - required field validation
    - confirmation mode validation
    - page and date boundary validation
  done_definition:
    - each endpoint has one dedicated validator

module_03_action_plan_propose:
  goal:
    - derive action candidates from conversation input
  target_files:
    - ActionPlanProposeController.java
    - ActionPlanProposeService.java
    - ActionPlanCandidate.java
    - ActionPlanCandidateRepository.java
    - JdbcActionPlanCandidateRepository.java
    - ActionPlanProposeMapper.java
  tasks:
    - wire controller to validator and service
    - persist candidate rows
    - map response candidate items
    - emit audit append after success
  done_definition:
    - propose endpoint path is structurally stable

module_04_action_plan_confirm:
  goal:
    - promote selected candidates into committed timeline items
  target_files:
    - ActionPlanConfirmController.java
    - ActionPlanConfirmService.java
    - AssistantActionTimelineItem.java
    - ActionTimelineRepository.java
    - JdbcActionTimelineRepository.java
    - ActionPlanConfirmMapper.java
  tasks:
    - validate selected candidate ids
    - persist committed timeline rows
    - mark unused candidates dismissed when required
    - emit audit append after success
  done_definition:
    - confirm endpoint path is structurally stable

module_05_daily_briefing_query:
  goal:
    - assemble today, overdue, and awaiting-confirmation items
  target_files:
    - DailyBriefingQueryController.java
    - DailyBriefingQueryService.java
    - DailyBriefingSnapshot.java
    - DailyBriefingSnapshotRepository.java
    - JdbcDailyBriefingSnapshotRepository.java
    - DailyBriefingQueryMapper.java
  tasks:
    - implement briefing query boundary
    - implement date and paging logic
    - return consistent summary and item groups
  done_definition:
    - daily briefing query path is structurally stable

module_06_audit_bridge:
  goal:
    - append auditable events after state-changing operations
  target_files:
    - PocketSecretaryAuditPort.java
    - DatabasePocketSecretaryAuditAdapter.java
  tasks:
    - define audit append seams
    - keep audit append separate from timeline repositories
  done_definition:
    - audit write boundary is explicit

module_07_configuration:
  goal:
    - provide minimum wiring boundary
  target_files:
    - PocketSecretaryPhaseAConfig.java
  tasks:
    - wire controllers to services
    - wire services to repositories and audit port
  done_definition:
    - dependency graph is representable

module_08_tests:
  goal:
    - establish minimum Phase A test safety net
  target_files:
    - ActionPlanProposeServiceTest.java
    - ActionPlanConfirmServiceTest.java
    - DailyBriefingQueryServiceTest.java
  tasks:
    - success path test
    - validation failure test
    - confirmation conflict test
    - briefing filter test
  done_definition:
    - each core service has baseline tests

recommended_execution_order:
- module_01_request_response_dto
- module_02_validators
- module_03_action_plan_propose
- module_04_action_plan_confirm
- module_05_daily_briefing_query
- module_06_audit_bridge
- module_07_configuration
- module_08_tests

phase_a_ready_to_code_gate:
- DTO names frozen
- validators fixed
- repository boundaries explicit
- service responsibilities explicit
- daily briefing payload compatibility preserved
- audit append boundary explicit
