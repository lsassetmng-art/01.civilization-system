# ============================================================
# POCKETSECRETARY PHASE A ACTION TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-action-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for PocketSecretary
Phase A action continuity without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep conversation interpretation separate from committed timeline state
- keep audit append separate from active mutation repository logic

recommended_server_modules:
- api/controller
- api/dto
- application/service
- application/validator
- application/mapper
- domain/model
- domain/port
- infrastructure/repository
- infrastructure/audit

phase_a_skeleton_units:
- ActionPlanProposeController
- ActionPlanProposeService
- ActionPlanProposeValidator
- ActionPlanCandidateRepository
- ActionPlanConfirmController
- ActionPlanConfirmService
- ActionPlanConfirmValidator
- ActionTimelineRepository
- DailyBriefingQueryController
- DailyBriefingQueryService
- DailyBriefingQueryValidator
- DailyBriefingSnapshotRepository
- PocketSecretaryAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - orchestration
  - timeline state transition
  - daily briefing assembly
- validator:
  - required field checks
  - boundary checks
  - Phase A scope rejection
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence only
  - no business branching
- audit:
  - append events after state-changing operations

phase_a_build_order:
- step_01_action_plan_propose_path
- step_02_action_plan_confirm_path
- step_03_daily_briefing_query_path
- step_04_add audit append path
- step_05_add test baseline

minimum_test_families:
- action_plan_propose_success
- action_plan_propose_validation_failure
- action_plan_confirm_success
- action_plan_confirm_conflict
- daily_briefing_query_success
- daily_briefing_overdue_filter
- daily_briefing_awaiting_confirmation_filter

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- propose and confirm boundaries are explicit
- daily briefing query boundary is explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present

explicit_non_scope:
- no generic chat expansion in this document
- no calendar provider implementation here
- no reminder delivery engine here
- no Android client work here
