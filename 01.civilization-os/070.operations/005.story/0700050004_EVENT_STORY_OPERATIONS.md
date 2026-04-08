# ============================================================
# EVENT STORY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for event-linked stories.

scope:
Covers event-story stage operation,
campaign handling,
completion or cancellation,
historical replay preparation,
and containment of event-lifecycle conflicts.

required_behavior:
- Support live event-story updates.
- Support safe closure on completion or cancellation.
- Support historical replay preparation.
- Support containment when event lifecycle and story lifecycle diverge.

state_model:
event_story_operational_state:
- prepared
- active
- completed
- cancelled
- replay_ready
- contained
- archived

validation_rules:
- event_ref or cluster_ref is required.
- completed or cancelled event story must not remain live-active.
- replay_ready requires historical trace.
- lifecycle divergence requires containment.

transition_rules:
- prepared -> active
- active -> completed
- active -> cancelled
- completed -> replay_ready
- cancelled -> replay_ready
- active -> contained
- replay_ready -> archived

failure_codes:
- EVENT_STORY_OP_REF_MISSING
- EVENT_STORY_OP_LIFECYCLE_CONFLICT
- EVENT_STORY_OP_HISTORY_TRACE_MISSING

example_scenarios:
- A campaign story is cancelled and moved into replay_ready for historical review.
