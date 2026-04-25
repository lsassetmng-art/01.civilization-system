# ============================================================
# POCKETSECRETARY CONVERSATION ACTION ORCHESTRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: PocketSecretary
directory: 020.architecture
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: conversation-action-orchestration-architecture

purpose:
Makes the conversation-to-action orchestration path explicit in the
existing PocketSecretary architecture.

architecture_intent:
- assistant conversation must be able to produce explicit action candidates
- action candidates must be routable to schedule, task, reminder, or later review
- the app must preserve the distinction between suggestion, confirmed action,
  deferred action, and completed action

flow_layers:
- conversation intake:
  - user message
  - assistant interpretation
  - candidate action extraction
- action planning:
  - classify action type
  - determine confidence and urgency
  - propose confirmation wording
- action commitment:
  - confirmed
  - deferred
  - dismissed
  - auto-routed when explicitly allowed
- downstream execution:
  - schedule creation
  - reminder creation
  - task creation
  - personal queue insertion
- review and continuity:
  - unfinished action resurfacing
  - morning briefing
  - overdue follow-through review

key_separations:
- conversation history is not the same as action queue
- assistant suggestion is not the same as committed task
- reminder output is not the same as schedule event
- audit or history is not the same as active follow-through state

recommended_runtime_objects:
- conversation_action_candidate
- assistant_action_commitment
- followthrough_review_item
- daily_briefing_item

what_this_adds_to_existing_architecture:
- makes assistant continuity operationally visible
- reduces ambiguity between chat and execution
- prepares later exact payload and implementation slicing
