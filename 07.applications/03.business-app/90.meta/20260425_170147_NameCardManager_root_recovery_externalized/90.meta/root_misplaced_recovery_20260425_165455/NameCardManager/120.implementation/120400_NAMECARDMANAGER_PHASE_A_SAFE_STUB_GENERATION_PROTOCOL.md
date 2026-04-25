# ============================================================
# NAMECARDMANAGER PHASE A SAFE STUB GENERATION PROTOCOL
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-safe-stub-generation-protocol

purpose:
Defines how NameCardManager Phase A safe-root stub generation should begin
without touching live source trees first.

execution_policy:
- use safe output roots only at first
- default safe root is $HOME/.tmp/namecardmanager-phase-a
- package base is com.lsam.NameCardManager
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit remains append-only and separated

recommended_safe_root_slices:
- slice_01_relationship_query:
  - $HOME/.tmp/namecardmanager-phase-a/slice01-relationship-query
- slice_02_company_timeline_query:
  - $HOME/.tmp/namecardmanager-phase-a/slice02-company-timeline-query
- slice_03_capture_image_staging:
  - $HOME/.tmp/namecardmanager-phase-a/slice03-capture-image-staging

recommended_stub_units:
- RelationshipQueryController
- RelationshipQueryService
- RelationshipQueryValidator
- RelationshipQueryRepository
- CompanyTimelineQueryController
- CompanyTimelineQueryService
- CompanyTimelineQueryValidator
- CompanyTimelineRepository
- NameCardCaptureController
- CaptureImageStagingService
- CaptureImageStagingRepository
- NameCardManagerAuditPort
- DatabaseNameCardManagerAuditAdapter

required_pre-relocation_checks:
- DTO names still match the fixed payload documents
- relationship and company timeline fields still match the diff reinforcement docs
- capture/image staging seam still respects app-share and ERP-public separation
- no destructive edits are introduced
- generated tree stays isolated until review completion
