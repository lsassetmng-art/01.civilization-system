# ============================================================
# EXPENSESETTLEMENT PHASE A SETTLEMENT TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: ExpenseSettlement
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-settlement-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for ExpenseSettlement
Phase A settlement control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw claim detail handling separate from settlement rollup state
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
- ExpenseCockpitQueryController
- ExpenseCockpitQueryService
- ExpenseCockpitQueryValidator
- SettlementControlTimelineRepository
- ExpenseExceptionReviewController
- ExpenseExceptionReviewService
- ExpenseExceptionReviewValidator
- ExpenseExceptionReviewRepository
- ExpenseCockpitSnapshotRepository
- ExpenseSettlementAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - exception review orchestration
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
- step_01_expense_cockpit_query_path
- step_02_expense_exception_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- expense_cockpit_query_success
- expense_cockpit_query_validation_failure
- expense_exception_review_query_success
- expense_exception_review_include_resolved_toggle
- expense_exception_review_include_erp_handoff_blockers_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and exception review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no claim write automation in this document
- no payout workflow here
- no ERP posting execution here
- no Android client work here
