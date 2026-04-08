# ============================================================
# EVENT STORY FLOW
# ============================================================

status: canonical
layer: flow
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for event-story handling.

scope:
Covers event or event-cluster story resolution,
current stage delivery,
completion/cancellation branch,
and replay-safe event history flow.

required_behavior:
- Bind event or cluster scope.
- Resolve active event story.
- Validate stage against event lifecycle.
- Deliver live story or historical replay.
- Reject invalid live cancelled/completed path.

flow_state_model:
event_story_flow_state:
- requested
- event_bound
- story_resolved
- stage_validated
- live_delivered
- historical_delivered
- blocked

event_story_sequence:
1. receive event-story request
2. bind event_ref or cluster_ref
3. resolve event story
4. validate current stage with event lifecycle
5. deliver live stage or redirect to historical path

failure_codes:
- EVENT_STORY_FLOW_REF_MISSING
- EVENT_STORY_FLOW_STAGE_CONFLICT
- EVENT_STORY_FLOW_LIVE_CANCEL_CONFLICT
- EVENT_STORY_FLOW_REPLAY_PATH_MISSING

example_scenarios:
- A live official-operation story follows current event state.
- A cancelled event story is redirected to history-only delivery.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
