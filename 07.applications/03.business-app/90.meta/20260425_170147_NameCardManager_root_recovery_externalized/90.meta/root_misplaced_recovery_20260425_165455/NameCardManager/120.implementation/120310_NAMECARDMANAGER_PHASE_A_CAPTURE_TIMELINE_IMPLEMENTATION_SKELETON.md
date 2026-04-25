# ============================================================
# NAMECARDMANAGER PHASE A CAPTURE TIMELINE IMPLEMENTATION SKELETON
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-15
scope: phase-a-implementation-skeleton

purpose:
Defines the first implementation skeleton for capture staging and
company timeline support so that coding can begin without reopening
core design decisions.

implementation_policy:
- additive only
- exact payload first
- repository and service boundaries explicit
- audit and history writes remain separate
- do not mix image binary handling into relational repository logic

recommended_server_modules:
- api/controller
- application/service
- application/validator
- application/mapper
- domain/model
- infrastructure/repository
- infrastructure/storage
- infrastructure/audit

phase_a_skeleton_units:
- CaptureSessionController
- CaptureSessionService
- CaptureSessionValidator
- CaptureSessionRepository
- CaptureImageStagingController
- CaptureImageStagingService
- CaptureImageStagingRepository
- RelationshipQueryController
- RelationshipQueryService
- CompanyTimelineQueryController
- CompanyTimelineQueryService
- CompanyTimelineEventRepository
- NamecardAuditWriter

responsibility_split:
- controller:
  - request parsing
  - response serialization
  - auth context handoff
- service:
  - use case orchestration
  - transaction boundary decision
  - visibility filtering coordination
- validator:
  - required field validation
  - enum and mode validation
  - phase_a boundary enforcement
- mapper:
  - dto to domain mapping
  - domain to response mapping
- repository:
  - persistence only
  - no business branching
- storage:
  - staged image storage key registration
  - no business timeline logic
- audit:
  - append auditable events after state change

phase_a_build_order:
- step_01_create_capture_session_path
- step_02_create_capture_image_staging_path
- step_03_create_capture_finalize_path
- step_04_connect_relationship_query_to_existing_payload_family
- step_05_connect_company_timeline_query_to_materialized_event_rows
- step_06_add audit write path
- step_07_add role visibility tests
- step_08_add integration test baseline

minimum_test_families:
- create_capture_session_success
- create_capture_session_validation_failure
- register_staged_image_success
- finalize_capture_success
- finalize_capture_conflict
- relationship_query_visibility_filtered
- company_timeline_query_paging
- company_timeline_query_date_filter
- forbidden_access_rejected

phase_a_exit_ready_definition:
- controllers compile against frozen DTO names
- service boundaries are stable
- additive repositories exist for each new row family
- timeline query works with paging and filters
- capture staging path works end to end without ERP execution
- audit trail is emitted on each state-changing path

explicit_non_scope:
- no UI implementation in this document
- no final OCR provider lock here
- no ERP publication execution here
- no advanced recommendation ranking here
- no shared component extraction in this slice
