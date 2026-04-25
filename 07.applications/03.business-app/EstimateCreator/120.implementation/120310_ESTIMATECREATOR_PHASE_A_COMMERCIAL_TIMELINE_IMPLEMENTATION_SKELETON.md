# ============================================================
# ESTIMATECREATOR PHASE A COMMERCIAL TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-commercial-timeline-implementation-skeleton

purpose:
Defines the first implementation skeleton for EstimateCreator
Phase A commercial control without starting runtime generation.

implementation_policy:
- additive only
- exact DTOs first
- keep raw estimate editing separate from commercial rollup state
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
- EstimateCockpitQueryController
- EstimateCockpitQueryService
- EstimateCockpitQueryValidator
- CommercialTimelineRepository
- RevisionApprovalReviewController
- RevisionApprovalReviewService
- RevisionApprovalReviewValidator
- RevisionApprovalReviewRepository
- EstimateCockpitSnapshotRepository
- EstimateCreatorAuditWriter

responsibility_split:
- controller:
  - request parsing
  - auth context handoff
  - response serialization
- service:
  - cockpit assembly
  - commercial review orchestration
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
- step_01_estimate_cockpit_query_path
- step_02_revision_approval_review_query_path
- step_03_add snapshot and audit path
- step_04_add test baseline

minimum_test_families:
- estimate_cockpit_query_success
- estimate_cockpit_query_validation_failure
- revision_approval_review_query_success
- revision_approval_review_include_resolved_toggle
- revision_approval_review_include_pricing_exceptions_toggle

phase_a_exit_ready_definition:
- DTO names compile against frozen contracts
- cockpit and revision review boundaries are explicit
- row-family assumptions align to the DDL additive plan
- audit append seam is present where needed

explicit_non_scope:
- no estimate draft write automation in this document
- no approval request workflow here
- no order conversion execution here
- no Android client work here
