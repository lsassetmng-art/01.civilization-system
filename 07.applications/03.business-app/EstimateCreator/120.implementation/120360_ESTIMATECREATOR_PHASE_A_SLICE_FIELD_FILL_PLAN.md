# ============================================================
# ESTIMATECREATOR PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: EstimateCreator
directory: 120.implementation
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-slice-field-fill-plan

purpose:
Defines what each Phase A slice should contain once empty stubs move
into field-filled implementation-ready stubs.

global_rules:
- exact field names follow the DTO freeze exactly
- controller remains thin
- service owns orchestration
- repository owns persistence and query only
- audit append remains separate
- no Japanese literals in Java source

slice_01_estimate_cockpit_query:
  target_files:
    - ErrorResponse.java
    - EstimateCockpitQueryRequest.java
    - EstimateCockpitQueryResponse.java
    - EstimateCockpitQueryValidator.java
    - EstimateCommercialTimelineItem.java
    - CommercialTimelineRepository.java
    - EstimateCockpitQueryMapper.java
    - EstimateCockpitQueryService.java
    - EstimateCockpitQueryController.java
    - JdbcCommercialTimelineRepository.java
    - DatabaseEstimateCreatorAuditAdapter.java
    - EstimateCreatorPhaseAConfig.java
    - EstimateCockpitQueryServiceTest.java
  expected_fill:
    - ErrorResponse:
      - errorCode
      - errorMessage
      - requestId
      - details
    - EstimateCockpitQueryRequest:
      - estimateId
      - timezone
      - includePendingApproval
      - includeConversionBlockers
      - includeRecentRevisions
      - pageSize
      - pageToken
    - EstimateCockpitQueryResponse:
      - estimateId
      - estimateTitle
      - healthSummaryMessage
      - pendingApprovalItems
      - conversionBlockerItems
      - recentRevisionItems
      - nextPageToken
      - generatedAt
    - EstimateCockpitQueryValidator:
      - validate(EstimateCockpitQueryRequest request)
      - required checks for estimateId, timezone, pageSize
    - EstimateCommercialTimelineItem:
      - fields aligned to commercial_timeline_item row family
    - CommercialTimelineRepository:
      - queryCockpitItems(...)
      - findRecentRevisions(...)
    - EstimateCockpitQueryMapper:
      - toCockpitResponse(...)
    - EstimateCockpitQueryService:
      - queryEstimateCockpit(...)
    - EstimateCockpitQueryController:
      - queryEstimateCockpit(EstimateCockpitQueryRequest request)
    - JdbcCommercialTimelineRepository:
      - sql placeholders aligned to commercial timeline table
    - DatabaseEstimateCreatorAuditAdapter:
      - appendEstimateCockpitQueryAudit(...)
    - EstimateCreatorPhaseAConfig:
      - first-slice bean wiring placeholders
    - EstimateCockpitQueryServiceTest:
      - estimate_cockpit_query_success
      - estimate_cockpit_query_validation_failure

slice_02_revision_approval_review_query:
  target_files:
    - RevisionApprovalReviewQueryRequest.java
    - RevisionApprovalReviewQueryResponse.java
    - RevisionApprovalReviewQueryValidator.java
    - RevisionApprovalReviewItem.java
    - RevisionApprovalReviewRepository.java
    - RevisionApprovalReviewQueryMapper.java
    - RevisionApprovalReviewQueryService.java
    - RevisionApprovalReviewQueryController.java
    - JdbcRevisionApprovalReviewRepository.java
    - RevisionApprovalReviewQueryServiceTest.java
  expected_fill:
    - RevisionApprovalReviewQueryRequest:
      - estimateId
      - includeResolved
      - includePricingExceptions
      - includeApprovalPending
      - pageSize
      - pageToken
    - RevisionApprovalReviewQueryResponse:
      - estimateId
      - reviewItems
      - summaryMessage
      - nextPageToken
      - generatedAt
    - RevisionApprovalReviewQueryValidator:
      - validate(RevisionApprovalReviewQueryRequest request)
      - required checks for estimateId and pageSize
    - RevisionApprovalReviewItem:
      - fields aligned to revision_approval_review_item row family
    - RevisionApprovalReviewRepository:
      - queryReviewItems(...)
    - RevisionApprovalReviewQueryMapper:
      - toRevisionApprovalReviewResponse(...)
    - RevisionApprovalReviewQueryService:
      - queryRevisionApprovalReview(...)
    - RevisionApprovalReviewQueryController:
      - queryRevisionApprovalReview(RevisionApprovalReviewQueryRequest request)
    - JdbcRevisionApprovalReviewRepository:
      - sql placeholders aligned to review table
    - RevisionApprovalReviewQueryServiceTest:
      - revision_approval_review_query_success
      - revision_approval_review_include_resolved_toggle
      - revision_approval_review_include_pricing_exceptions_toggle

slice_03_snapshot_and_audit_bridge:
  target_files:
    - EstimateCockpitSnapshot.java
    - EstimateCockpitSnapshotRepository.java
    - EstimateCreatorAuditPort.java
    - JdbcEstimateCockpitSnapshotRepository.java
    - DatabaseEstimateCreatorAuditAdapter.java
  expected_fill:
    - EstimateCockpitSnapshot:
      - fields aligned to estimate_cockpit_snapshot row family
    - EstimateCockpitSnapshotRepository:
      - insertSnapshot(...)
      - findLatestSnapshot(...)
    - EstimateCreatorAuditPort:
      - appendEstimateCockpitQueryAudit(...)
      - appendRevisionApprovalReviewQueryAudit(...)
    - JdbcEstimateCockpitSnapshotRepository:
      - sql placeholders aligned to cockpit snapshot table
    - DatabaseEstimateCreatorAuditAdapter:
      - explicit append-only audit method seams

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins
