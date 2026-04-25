# ============================================================
# PROJECTFLOW PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: ProjectFlow
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

slice_01_project_cockpit_query:
  target_files:
    - ErrorResponse.java
    - ProjectCockpitQueryRequest.java
    - ProjectCockpitQueryResponse.java
    - ProjectCockpitQueryValidator.java
    - ProjectDeliveryTimelineItem.java
    - DeliveryTimelineRepository.java
    - ProjectCockpitQueryMapper.java
    - ProjectCockpitQueryService.java
    - ProjectCockpitQueryController.java
    - JdbcDeliveryTimelineRepository.java
    - DatabaseProjectFlowAuditAdapter.java
    - ProjectFlowPhaseAConfig.java
    - ProjectCockpitQueryServiceTest.java
  expected_fill:
    - ErrorResponse:
      - errorCode
      - errorMessage
      - requestId
      - details
    - ProjectCockpitQueryRequest:
      - projectId
      - timezone
      - includeBlockedItems
      - includeAtRiskItems
      - includeUpcomingMilestones
      - pageSize
      - pageToken
    - ProjectCockpitQueryResponse:
      - projectId
      - projectTitle
      - healthSummaryMessage
      - blockedItems
      - atRiskItems
      - upcomingMilestones
      - ownerEscalationItems
      - nextPageToken
      - generatedAt
    - ProjectCockpitQueryValidator:
      - validate(ProjectCockpitQueryRequest request)
      - required checks for projectId, timezone, pageSize
    - ProjectDeliveryTimelineItem:
      - fields aligned to delivery_timeline_item row family
    - DeliveryTimelineRepository:
      - queryCockpitItems(...)
      - findUpcomingMilestones(...)
    - ProjectCockpitQueryMapper:
      - toCockpitResponse(...)
    - ProjectCockpitQueryService:
      - queryProjectCockpit(...)
    - ProjectCockpitQueryController:
      - queryProjectCockpit(ProjectCockpitQueryRequest request)
    - JdbcDeliveryTimelineRepository:
      - sql placeholders aligned to delivery timeline table
    - DatabaseProjectFlowAuditAdapter:
      - appendProjectCockpitQueryAudit(...)
    - ProjectFlowPhaseAConfig:
      - first-slice bean wiring placeholders
    - ProjectCockpitQueryServiceTest:
      - project_cockpit_query_success
      - project_cockpit_query_validation_failure

slice_02_risk_dependency_review_query:
  target_files:
    - RiskDependencyReviewQueryRequest.java
    - RiskDependencyReviewQueryResponse.java
    - RiskDependencyReviewQueryValidator.java
    - DependencyReviewItem.java
    - DependencyReviewRepository.java
    - RiskDependencyReviewQueryMapper.java
    - RiskDependencyReviewQueryService.java
    - RiskDependencyReviewQueryController.java
    - JdbcDependencyReviewRepository.java
    - RiskDependencyReviewQueryServiceTest.java
  expected_fill:
    - RiskDependencyReviewQueryRequest:
      - projectId
      - riskLevelFilter
      - includeResolved
      - includeDependencies
      - includeDecisionPending
      - pageSize
      - pageToken
    - RiskDependencyReviewQueryResponse:
      - projectId
      - reviewItems
      - summaryMessage
      - nextPageToken
      - generatedAt
    - RiskDependencyReviewQueryValidator:
      - validate(RiskDependencyReviewQueryRequest request)
      - required checks for projectId and pageSize
    - DependencyReviewItem:
      - fields aligned to dependency_review_item row family
    - DependencyReviewRepository:
      - queryReviewItems(...)
    - RiskDependencyReviewQueryMapper:
      - toRiskReviewResponse(...)
    - RiskDependencyReviewQueryService:
      - queryRiskDependencyReview(...)
    - RiskDependencyReviewQueryController:
      - queryRiskDependencyReview(RiskDependencyReviewQueryRequest request)
    - JdbcDependencyReviewRepository:
      - sql placeholders aligned to dependency review table
    - RiskDependencyReviewQueryServiceTest:
      - risk_dependency_review_query_success
      - risk_dependency_review_filter_by_risk
      - risk_dependency_review_include_resolved_toggle

slice_03_snapshot_and_audit_bridge:
  target_files:
    - ProjectCockpitSnapshot.java
    - ProjectCockpitSnapshotRepository.java
    - ProjectFlowAuditPort.java
    - JdbcProjectCockpitSnapshotRepository.java
    - DatabaseProjectFlowAuditAdapter.java
  expected_fill:
    - ProjectCockpitSnapshot:
      - fields aligned to project_cockpit_snapshot row family
    - ProjectCockpitSnapshotRepository:
      - insertSnapshot(...)
      - findLatestSnapshot(...)
    - ProjectFlowAuditPort:
      - appendProjectCockpitQueryAudit(...)
      - appendRiskDependencyReviewQueryAudit(...)
    - JdbcProjectCockpitSnapshotRepository:
      - sql placeholders aligned to cockpit snapshot table
    - DatabaseProjectFlowAuditAdapter:
      - explicit append-only audit method seams

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins
