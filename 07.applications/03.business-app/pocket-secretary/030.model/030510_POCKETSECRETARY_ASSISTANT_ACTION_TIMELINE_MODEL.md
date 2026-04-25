# ============================================================
# POCKETSECRETARY ASSISTANT ACTION TIMELINE MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: PocketSecretary
directory: 030.model
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: assistant-action-timeline-model

purpose:
Defines the logical model for a unified assistant-managed timeline
of proposed, committed, scheduled, and completed actions.

core_entity:
- assistant_action_timeline_item

recommended_fields:
- assistantActionTimelineItemId
- userId
- sourceConversationId
- sourceMessageId
- actionTypeCode
- actionTitle
- actionSummary
- actionStateCode
- priorityCode
- dueAt
- remindAt
- scheduledStartAt
- scheduledEndAt
- originModuleCode
- downstreamRecordId
- resurfacingEligible
- lastSurfacedAt
- completedAt
- dismissedAt
- createdAt
- updatedAt

state_meaning:
- proposed:
  - extracted but not yet committed
- awaiting_confirmation:
  - waiting for explicit user confirmation
- committed:
  - accepted as intended follow-through
- scheduled:
  - routed into a time-based slot
- reminded:
  - reminder surfaced
- overdue:
  - due or promised but not completed
- completed:
  - done
- dismissed:
  - intentionally removed from resurfacing

model_use_cases:
- daily briefing generation
- today agenda assembly
- overdue follow-through review
- assistant resurface logic
- conversation-to-action traceability
