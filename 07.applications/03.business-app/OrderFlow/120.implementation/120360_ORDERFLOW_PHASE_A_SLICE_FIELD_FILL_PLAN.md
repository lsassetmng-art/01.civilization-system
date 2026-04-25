# ============================================================
# ORDERFLOW PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: OrderFlow
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

slice_01_order_cockpit_query:
  target_files:
    - ErrorResponse.java
    - OrderCockpitQueryRequest.java
    - OrderCockpitQueryResponse.java
    - OrderCockpitQueryValidator.java
    - OrderExecutionTimelineItem.java
    - ExecutionTimelineRepository.java
    - OrderCockpitQueryMapper.java
    - OrderCockpitQueryService.java
    - OrderCockpitQueryController.java
    - JdbcExecutionTimelineRepository.java
    - DatabaseOrderFlowAuditAdapter.java
    - OrderFlowPhaseAConfig.java
    - OrderCockpitQueryServiceTest.java
  expected_fill:
    - ErrorResponse:
      - errorCode
      - errorMessage
      - requestId
      - details
    - OrderCockpitQueryRequest:
      - orderId
      - timezone
      - includePendingApproval
      - includeFulfillmentBlockers
      - includeDownstreamHandoff
      - pageSize
      - pageToken
    - OrderCockpitQueryResponse:
      - orderId
      - orderTitle
      - healthSummaryMessage
      - pendingApprovalItems
      - fulfillmentBlockerItems
      - downstreamHandoffItems
      - nextPageToken
      - generatedAt
    - OrderCockpitQueryValidator:
      - validate(OrderCockpitQueryRequest request)
      - required checks for orderId, timezone, pageSize
    - OrderExecutionTimelineItem:
      - fields aligned to execution_timeline_item row family
    - ExecutionTimelineRepository:
      - queryCockpitItems(...)
      - findDownstreamHandoffItems(...)
    - OrderCockpitQueryMapper:
      - toCockpitResponse(...)
    - OrderCockpitQueryService:
      - queryOrderCockpit(...)
    - OrderCockpitQueryController:
      - queryOrderCockpit(OrderCockpitQueryRequest request)
    - JdbcExecutionTimelineRepository:
      - sql placeholders aligned to execution timeline table
    - DatabaseOrderFlowAuditAdapter:
      - appendOrderCockpitQueryAudit(...)
    - OrderFlowPhaseAConfig:
      - first-slice bean wiring placeholders
    - OrderCockpitQueryServiceTest:
      - order_cockpit_query_success
      - order_cockpit_query_validation_failure

slice_02_fulfillment_exception_review_query:
  target_files:
    - FulfillmentExceptionReviewQueryRequest.java
    - FulfillmentExceptionReviewQueryResponse.java
    - FulfillmentExceptionReviewQueryValidator.java
    - FulfillmentExceptionReviewItem.java
    - FulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryMapper.java
    - FulfillmentExceptionReviewQueryService.java
    - FulfillmentExceptionReviewQueryController.java
    - JdbcFulfillmentExceptionReviewRepository.java
    - FulfillmentExceptionReviewQueryServiceTest.java
  expected_fill:
    - FulfillmentExceptionReviewQueryRequest:
      - orderId
      - includeResolved
      - includeApprovalPending
      - includeDownstreamBlockers
      - pageSize
      - pageToken
    - FulfillmentExceptionReviewQueryResponse:
      - orderId
      - reviewItems
      - summaryMessage
      - nextPageToken
      - generatedAt
    - FulfillmentExceptionReviewQueryValidator:
      - validate(FulfillmentExceptionReviewQueryRequest request)
      - required checks for orderId and pageSize
    - FulfillmentExceptionReviewItem:
      - fields aligned to fulfillment_exception_review_item row family
    - FulfillmentExceptionReviewRepository:
      - queryReviewItems(...)
    - FulfillmentExceptionReviewQueryMapper:
      - toFulfillmentExceptionReviewResponse(...)
    - FulfillmentExceptionReviewQueryService:
      - queryFulfillmentExceptionReview(...)
    - FulfillmentExceptionReviewQueryController:
      - queryFulfillmentExceptionReview(FulfillmentExceptionReviewQueryRequest request)
    - JdbcFulfillmentExceptionReviewRepository:
      - sql placeholders aligned to review table
    - FulfillmentExceptionReviewQueryServiceTest:
      - fulfillment_exception_review_query_success
      - fulfillment_exception_review_include_resolved_toggle
      - fulfillment_exception_review_include_downstream_blockers_toggle

slice_03_snapshot_and_audit_bridge:
  target_files:
    - OrderCockpitSnapshot.java
    - OrderCockpitSnapshotRepository.java
    - OrderFlowAuditPort.java
    - JdbcOrderCockpitSnapshotRepository.java
    - DatabaseOrderFlowAuditAdapter.java
  expected_fill:
    - OrderCockpitSnapshot:
      - fields aligned to order_cockpit_snapshot row family
    - OrderCockpitSnapshotRepository:
      - insertSnapshot(...)
      - findLatestSnapshot(...)
    - OrderFlowAuditPort:
      - appendOrderCockpitQueryAudit(...)
      - appendFulfillmentExceptionReviewQueryAudit(...)
    - JdbcOrderCockpitSnapshotRepository:
      - sql placeholders aligned to cockpit snapshot table
    - DatabaseOrderFlowAuditAdapter:
      - explicit append-only audit method seams

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins
