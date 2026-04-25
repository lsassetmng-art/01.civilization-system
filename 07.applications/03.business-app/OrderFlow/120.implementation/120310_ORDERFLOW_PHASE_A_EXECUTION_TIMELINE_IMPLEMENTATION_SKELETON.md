# ============================================================
# ORDERFLOW PHASE A EXECUTION TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-execution-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for OrderFlow
Phase A operational control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw order editing separate from execution rollup state
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
- OrderCockpitQueryController
- OrderCockpitQueryService
- OrderCockpitQueryValidator
- ExecutionTimelineRepository
- FulfillmentExceptionReviewController
- FulfillmentExceptionReviewService
- FulfillmentExceptionReviewValidator
- FulfillmentExceptionReviewRepository
- OrderCockpitSnapshotRepository
- OrderFlowAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - fulfillment review orchestration
  - summary message assembly
- validator:
  - required field checks
  - page boundary checks
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
- step_01_order_cockpit_query_path
- step_02_fulfillment_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- order_cockpit_query_success
- order_cockpit_query_validation_failure
- fulfillment_exception_review_query_success
- fulfillment_exception_review_include_resolved_toggle
- fulfillment_exception_review_include_downstream_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no order write automation in this document
- no shipment release workflow here
- no invoice handoff execution here
- no Android client work here
