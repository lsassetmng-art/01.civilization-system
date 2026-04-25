# ============================================================
# POCKETSECRETARY DAILY BRIEFING PAYLOAD
# ============================================================

status: canonical
layer: integration
system: applications
application: PocketSecretary
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: daily-briefing-payload

purpose:
Fixes the exact payload family for the daily briefing surface.

endpoint:
- POST /api/v1/pocket-secretary/daily-briefing/query

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

todayItem_fields:
- assistantActionTimelineItemId
- actionTypeCode
- actionTitle
- actionSummary
- actionStateCode
- dueAt
- remindAt
- scheduledStartAt
- scheduledEndAt
- priorityCode
- downstreamRecordId

rules:
- timestamps use ISO-8601 strings
- nullable values return null, not omission
- item arrays return empty arrays when no data
