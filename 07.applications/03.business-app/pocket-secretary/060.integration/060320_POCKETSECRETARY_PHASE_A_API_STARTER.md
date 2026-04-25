# ============================================================
# POCKETSECRETARY PHASE A API STARTER
# ============================================================

status: canonical
layer: integration
system: applications
application: PocketSecretary
directory: 060.integration
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: phase-a-api-starter

purpose:
Defines the initial Phase A endpoint set for assistant-led
action continuity in PocketSecretary.

phase_a_api_goals:
- propose action candidates from conversation
- confirm action candidates into committed follow-through
- query daily briefing
- query overdue or awaiting-confirmation stacks later without reopening the contract

phase_a_endpoint_set:
- POST /api/v1/pocket-secretary/action-plan/propose
- POST /api/v1/pocket-secretary/action-plan/confirm
- POST /api/v1/pocket-secretary/daily-briefing/query

endpoint_action_plan_propose:
  purpose:
    - derive structured action candidates from a source utterance
  minimum_request:
    - userId
    - sourceConversationId
    - sourceMessageId
    - utteranceText
  minimum_response:
    - sourceConversationId
    - sourceMessageId
    - candidateItems
    - generatedAt

endpoint_action_plan_confirm:
  purpose:
    - promote selected candidates into committed assistant follow-through items
  minimum_request:
    - userId
    - sourceConversationId
    - candidateIds
    - confirmationMode
  minimum_response:
    - committedItems
    - dismissedCandidateIds
    - confirmedAt

endpoint_daily_briefing_query:
  purpose:
    - return today, overdue, and awaiting-confirmation items in one briefing response
  minimum_request:
    - userId
    - briefingDate
    - timezone
    - includeOverdue
    - includeAwaitingConfirmation
    - pageSize
  minimum_response:
    - briefingDate
    - timezone
    - summaryMessage
    - todayItems
    - overdueItems
    - awaitingConfirmationItems
    - generatedAt

response_rules:
- ids use uuid string form
- timestamps use ISO-8601 strings
- arrays return empty arrays, not omission
- nullable values return null once frozen
- no binary payloads in these responses

error_family_phase_a:
- invalid_request
- unauthorized
- forbidden
- not_found
- conflict
- validation_failed
- processing_not_ready
- internal_error

explicit_non_scope:
- no calendar event mutation endpoint in this slice
- no reminder delivery execution endpoint in this slice
- no bulk inbox processing endpoint in this slice
- no voice provider binding here

implementation_handoff:
- use these three endpoints as the only Phase A vertical-slice entry points
- defer later stack-specific query endpoints until after these contracts stabilize
