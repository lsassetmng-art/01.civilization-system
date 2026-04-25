# ============================================================
# PROJECTFLOW PHASE A DELIVERY TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-delivery-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for ProjectFlow
Phase A delivery control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw task mutation separate from delivery rollup state
- keep audit append separate from review query repositories

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
- ProjectCockpitQueryController
- ProjectCockpitQueryService
- ProjectCockpitQueryValidator
- DeliveryTimelineRepository
- RiskDependencyReviewController
- RiskDependencyReviewService
- RiskDependencyReviewValidator
- DependencyReviewRepository
- ProjectCockpitSnapshotRepository
- ProjectFlowAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - delivery review orchestration
  - summary message assembly
- validator:
  - required field checks
  - page and filter boundary checks
  - Phase A scope rejection
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence and query only
  - no business branching
- audit:
  - append events after relevant review operations when needed

phase_a_build_order:
- step_01_project_cockpit_query_path
- step_02_risk_dependency_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- project_cockpit_query_success
- project_cockpit_query_validation_failure
- risk_dependency_review_query_success
- risk_dependency_review_filter_by_risk
- risk_dependency_review_include_resolved_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and risk review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no task write automation in this document
- no milestone write workflow here
- no gantt UI implementation here
- no Android client work here
