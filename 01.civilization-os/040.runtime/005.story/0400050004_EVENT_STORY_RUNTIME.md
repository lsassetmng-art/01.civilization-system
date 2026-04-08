# ============================================================
# EVENT STORY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for event-linked stories.

scope:
Covers single-event story resolution,
event-cluster stage delivery,
campaign progression,
and replay-safe event-story history.

runtime_rules:
- Runtime must bind event story to event or cluster scope.
- Event story must remain coherent with event lifecycle.
- Cancelled event stories must not remain live-active.
- Replay mode must be explicit.

required_behavior:
- Resolve live event story.
- Deliver current event-story stage.
- Support cancelled/completed to history paths.
- Support replay-safe historical event story.

state_model:
event_story_runtime_state:
- unresolved
- active_stage_selected
- delivered
- cancelled
- completed
- replay_delivered
- blocked

validation_rules:
- event_ref or cluster_ref is required.
- current stage must align with event lifecycle.
- cancelled/completed stories must not be live-current.
- replay delivery requires historical branch.

transition_rules:
- unresolved -> active_stage_selected
- active_stage_selected -> delivered
- delivered -> completed
- delivered -> cancelled
- completed -> replay_delivered
- cancelled -> replay_delivered

failure_codes:
- EVENT_STORY_RT_REF_MISSING
- EVENT_STORY_RT_STAGE_CONFLICT
- EVENT_STORY_RT_LIVE_CANCEL_CONFLICT
- EVENT_STORY_RT_REPLAY_BRANCH_MISSING

example_scenarios:
- A campaign story advances through current event phases.
- A cancelled operation story is viewable only in replay history.
