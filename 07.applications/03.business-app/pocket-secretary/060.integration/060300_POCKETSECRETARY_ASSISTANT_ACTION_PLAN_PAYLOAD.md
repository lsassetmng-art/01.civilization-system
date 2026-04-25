# ============================================================
# POCKETSECRETARY ASSISTANT ACTION PLAN PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: PocketSecretary
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: assistant-action-plan-payload

purpose:
Fixes the exact payload family for proposing or confirming
assistant-led action plans derived from conversation.

endpoint_set:
- POST /api/v1/pocket-secretary/action-plan/propose
- POST /api/v1/pocket-secretary/action-plan/confirm

propose_request_fields:
- userId: uuid string, required
- sourceConversationId: uuid string, required
- sourceMessageId: uuid string, required
- utteranceText: string, required
- preferredTimezone: string, optional

propose_response_fields:
- sourceConversationId: uuid string, required
- sourceMessageId: uuid string, required
- candidateItems: array, required
- generatedAt: ISO-8601 string, required

candidateItem_fields:
- candidateId
- actionTypeCode
- actionTitle
- actionSummary
- proposedDueAt
- proposedRemindAt
- proposedScheduledStartAt
- proposedScheduledEndAt
- priorityCode
- confidenceScore
- confirmationRequired

confirm_request_fields:
- userId: uuid string, required
- sourceConversationId: uuid string, required
- candidateIds: string array, required
- confirmationMode: string, required

confirm_response_fields:
- committedItems: array, required
- dismissedCandidateIds: string array, required
- confirmedAt: ISO-8601 string, required

committedItem_fields:
- assistantActionTimelineItemId
- actionTypeCode
- actionTitle
- actionStateCode
- downstreamRecordId
- dueAt
- remindAt
- scheduledStartAt
- scheduledEndAt
