# ============================================================
# POCKETSECRETARY PHASE A API DTO FIELD FREEZE
# ============================================================

status: canonical
layer: integration
system: applications
application: PocketSecretary
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-dto-field-freeze

purpose:
Freezes the Phase A request and response DTO field set for
assistant action planning and daily briefing.

freezing_policy:
- additive only
- field names become implementation baseline once approved
- no casual local rename allowed
- timestamps are ISO-8601 strings
- ids are uuid strings
- arrays stay arrays even when empty

endpoint_01_action_plan_propose:
  route: POST /api/v1/pocket-secretary/action-plan/propose
  request_fields:
    - userId: uuid string, required
    - sourceConversationId: uuid string, required
    - sourceMessageId: uuid string, required
    - utteranceText: string, required
    - preferredTimezone: string, optional
  response_fields:
    - sourceConversationId: uuid string, required
    - sourceMessageId: uuid string, required
    - candidateItems: array, required
    - generatedAt: ISO-8601 string, required

candidateItem_fields:
- candidateId: uuid string, required
- actionTypeCode: string, required
- actionTitle: string, required
- actionSummary: string, nullable
- proposedDueAt: ISO-8601 string, nullable
- proposedRemindAt: ISO-8601 string, nullable
- proposedScheduledStartAt: ISO-8601 string, nullable
- proposedScheduledEndAt: ISO-8601 string, nullable
- priorityCode: string, nullable
- confidenceScore: decimal, nullable
- confirmationRequired: boolean, required

endpoint_02_action_plan_confirm:
  route: POST /api/v1/pocket-secretary/action-plan/confirm
  request_fields:
    - userId: uuid string, required
    - sourceConversationId: uuid string, required
    - candidateIds: string array, required
    - confirmationMode: string, required
  response_fields:
    - committedItems: array, required
    - dismissedCandidateIds: string array, required
    - confirmedAt: ISO-8601 string, required

committedItem_fields:
- assistantActionTimelineItemId: uuid string, required
- actionTypeCode: string, required
- actionTitle: string, required
- actionStateCode: string, required
- downstreamRecordId: uuid string, nullable
- dueAt: ISO-8601 string, nullable
- remindAt: ISO-8601 string, nullable
- scheduledStartAt: ISO-8601 string, nullable
- scheduledEndAt: ISO-8601 string, nullable

endpoint_03_daily_briefing_query:
  route: POST /api/v1/pocket-secretary/daily-briefing/query
  request_fields:
    - userId: uuid string, required
    - briefingDate: ISO-8601 date string, required
    - timezone: string, required
    - includeOverdue: boolean, required
    - includeAwaitingConfirmation: boolean, required
    - includeCompletedPreview: boolean, optional
    - pageSize: integer, required
    - pageToken: string, optional
  response_fields:
    - briefingDate: ISO-8601 date string, required
    - timezone: string, required
    - summaryMessage: string, required
    - todayItems: array, required
    - overdueItems: array, required
    - awaitingConfirmationItems: array, required
    - completedPreviewItems: array, required
    - nextPageToken: string, nullable
    - generatedAt: ISO-8601 string, required

dailyBriefingItem_fields:
- assistantActionTimelineItemId: uuid string, required
- actionTypeCode: string, required
- actionTitle: string, required
- actionSummary: string, nullable
- actionStateCode: string, required
- dueAt: ISO-8601 string, nullable
- remindAt: ISO-8601 string, nullable
- scheduledStartAt: ISO-8601 string, nullable
- scheduledEndAt: ISO-8601 string, nullable
- priorityCode: string, nullable
- downstreamRecordId: uuid string, nullable

shared_error_response_fields:
- errorCode: string, required
- errorMessage: string, required
- requestId: string, required
- details: object, nullable

field_value_rules:
- actionTypeCode is a text code, not localized label
- actionStateCode is a text code, not localized label
- confirmationMode is a text code, not localized label
- nullable fields return null, not omission
- unknown response fields must not be silently added in Phase A
