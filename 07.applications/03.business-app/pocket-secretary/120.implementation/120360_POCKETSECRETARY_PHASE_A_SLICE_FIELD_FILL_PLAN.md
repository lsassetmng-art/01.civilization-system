# ============================================================
# POCKETSECRETARY PHASE A SLICE FIELD FILL PLAN
# ============================================================

status: canonical
layer: implementation
system: applications
application: PocketSecretary
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
- repository owns persistence only
- audit append remains separate
- no Japanese literals in Java source

slice_01_action_plan_propose:
  target_files:
    - ErrorResponse.java
    - ActionPlanProposeRequest.java
    - ActionPlanProposeResponse.java
    - ActionPlanProposeValidator.java
    - ActionPlanCandidate.java
    - ActionPlanCandidateRepository.java
    - ActionPlanProposeMapper.java
    - ActionPlanProposeService.java
    - ActionPlanProposeController.java
    - JdbcActionPlanCandidateRepository.java
    - DatabasePocketSecretaryAuditAdapter.java
    - PocketSecretaryPhaseAConfig.java
    - ActionPlanProposeServiceTest.java
  expected_fill:
    - ErrorResponse:
      - errorCode
      - errorMessage
      - requestId
      - details
    - ActionPlanProposeRequest:
      - userId
      - sourceConversationId
      - sourceMessageId
      - utteranceText
      - preferredTimezone
    - ActionPlanProposeResponse:
      - sourceConversationId
      - sourceMessageId
      - candidateItems
      - generatedAt
    - ActionPlanProposeValidator:
      - validate(ActionPlanProposeRequest request)
      - required checks for userId, sourceConversationId, sourceMessageId, utteranceText
    - ActionPlanCandidate:
      - fields aligned to action_plan_candidate row family
    - ActionPlanCandidateRepository:
      - insertCandidates(...)
      - findByConversationId(...)
    - ActionPlanProposeMapper:
      - toCandidateDomain(...)
      - toProposeResponse(...)
    - ActionPlanProposeService:
      - proposeActionPlan(...)
    - ActionPlanProposeController:
      - proposeActionPlan(ActionPlanProposeRequest request)
    - JdbcActionPlanCandidateRepository:
      - sql placeholders aligned to candidate table
    - DatabasePocketSecretaryAuditAdapter:
      - appendActionPlanProposeAudit(...)
    - PocketSecretaryPhaseAConfig:
      - first-slice bean wiring placeholders
    - ActionPlanProposeServiceTest:
      - action_plan_propose_success
      - action_plan_propose_validation_failure

slice_02_action_plan_confirm:
  target_files:
    - ActionPlanConfirmRequest.java
    - ActionPlanConfirmResponse.java
    - ActionPlanConfirmValidator.java
    - AssistantActionTimelineItem.java
    - ActionTimelineRepository.java
    - ActionPlanConfirmMapper.java
    - ActionPlanConfirmService.java
    - ActionPlanConfirmController.java
    - JdbcActionTimelineRepository.java
    - ActionPlanConfirmServiceTest.java
  expected_fill:
    - ActionPlanConfirmRequest:
      - userId
      - sourceConversationId
      - candidateIds
      - confirmationMode
    - ActionPlanConfirmResponse:
      - committedItems
      - dismissedCandidateIds
      - confirmedAt
    - ActionPlanConfirmValidator:
      - validate(ActionPlanConfirmRequest request)
      - required checks for userId, sourceConversationId, candidateIds, confirmationMode
    - AssistantActionTimelineItem:
      - fields aligned to action_timeline_item row family
    - ActionTimelineRepository:
      - insertCommittedItems(...)
      - findByUserIdAndState(...)
    - ActionPlanConfirmMapper:
      - toCommittedTimelineItems(...)
      - toConfirmResponse(...)
    - ActionPlanConfirmService:
      - confirmActionPlan(...)
    - ActionPlanConfirmController:
      - confirmActionPlan(ActionPlanConfirmRequest request)
    - JdbcActionTimelineRepository:
      - sql placeholders aligned to timeline table
    - ActionPlanConfirmServiceTest:
      - action_plan_confirm_success
      - action_plan_confirm_conflict

slice_03_daily_briefing_query:
  target_files:
    - DailyBriefingQueryRequest.java
    - DailyBriefingQueryResponse.java
    - DailyBriefingQueryValidator.java
    - DailyBriefingSnapshot.java
    - DailyBriefingSnapshotRepository.java
    - DailyBriefingQueryMapper.java
    - DailyBriefingQueryService.java
    - DailyBriefingQueryController.java
    - JdbcDailyBriefingSnapshotRepository.java
    - DailyBriefingQueryServiceTest.java
  expected_fill:
    - DailyBriefingQueryRequest:
      - userId
      - briefingDate
      - timezone
      - includeOverdue
      - includeAwaitingConfirmation
      - includeCompletedPreview
      - pageSize
      - pageToken
    - DailyBriefingQueryResponse:
      - briefingDate
      - timezone
      - summaryMessage
      - todayItems
      - overdueItems
      - awaitingConfirmationItems
      - completedPreviewItems
      - nextPageToken
      - generatedAt
    - DailyBriefingQueryValidator:
      - validate(DailyBriefingQueryRequest request)
      - page and date boundary checks
    - DailyBriefingSnapshot:
      - fields aligned to daily_briefing_snapshot row family
    - DailyBriefingSnapshotRepository:
      - findLatestSnapshot(...)
      - insertSnapshot(...)
    - DailyBriefingQueryMapper:
      - toDailyBriefingResponse(...)
    - DailyBriefingQueryService:
      - queryDailyBriefing(...)
    - DailyBriefingQueryController:
      - queryDailyBriefing(DailyBriefingQueryRequest request)
    - JdbcDailyBriefingSnapshotRepository:
      - sql placeholders aligned to snapshot table
    - DailyBriefingQueryServiceTest:
      - daily_briefing_query_success
      - daily_briefing_overdue_filter
      - daily_briefing_awaiting_confirmation_filter

done_definition:
- all slice seams are fixed
- DTO and row-family alignment is explicit
- tests are named before runtime generation begins
