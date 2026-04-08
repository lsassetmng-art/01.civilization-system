# ============================================================
# EVENT STORY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for event-linked stories.

scope:
Covers live event-story projection,
public-safe campaign summary,
historical replay export,
and safe separation of cancelled/completed event story.

required_behavior:
- Support live event-story projection.
- Support public-safe event/campaign summary export.
- Support replay-safe historical export.
- Prevent live misrepresentation of cancelled or completed event story.

projection_classes:
- live_event_story
- public_event_story_summary
- historical_event_story_replay
- audit_event_story_trace

validation_rules:
- event_ref or cluster_ref is required.
- cancelled/completed event story must not be exported as live-current.
- replay export requires historical flag.

failure_codes:
- EVENT_STORY_INT_REF_MISSING
- EVENT_STORY_INT_LIVE_STATE_CONFLICT
- EVENT_STORY_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- A live campaign story is exported internally for event-support modules.
- A completed campaign is exported only as replay history.
