# ============================================================
# EVENT STORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines event-linked story architecture.

scope:
Covers stories centered on bounded events,
major incidents, public campaigns,
official operations, and event-driven progression clusters.

design_intent:
Some stories are anchored in events rather than places or actors alone.
Event story exists to give stage meaning and continuity to such bounded developments.

canonical_rules:
- Event story must bind to event scope or event cluster scope.
- Event story must remain distinguishable from the event record itself.
- Event story must define beginning, active development, and closure semantics.
- Event story history must remain replay-safe.

required_behavior:
- Support bounded event stories.
- Support event cluster stories.
- Support cancellation and closure branches.
- Support replay and review-safe historical mode.

state_model:
event_story_class:
- single_event_story
- event_cluster_story
- campaign_story
- official_operation_story

validation_rules:
- event_ref or cluster_ref is required.
- current stage must be coherent with event lifecycle.
- completed or cancelled event story must not remain live-active.

transition_rules:
- planned -> active
- active -> paused
- active -> completed
- active -> cancelled
- completed -> historical
- cancelled -> historical

decision_matrix:
- event cancelled + story still active -> invalid
- cluster missing anchor event -> invalid
- replay mode requested for live-active story -> replay denied unless historical branch exists

failure_codes:
- EVENT_STORY_REF_MISSING
- EVENT_STORY_STAGE_CONFLICT
- EVENT_STORY_CANCEL_CONFLICT
- EVENT_STORY_REPLAY_BRANCH_MISSING

example_scenarios:
- A public health response becomes an official_operation_story with several stages.
- A seasonal campaign becomes a campaign_story spanning several event nodes.
