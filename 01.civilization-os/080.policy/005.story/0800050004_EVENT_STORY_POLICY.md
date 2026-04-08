# ============================================================
# EVENT STORY POLICY
# ============================================================

status: canonical
layer: policy
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for event-linked stories.

scope:
Covers live campaign or operation stories,
public-safe campaign summaries,
completion/cancellation labeling,
and historical replay rules.

policy_focus:
- live versus historical campaign distinction
- public-safe event-story disclosure
- cancellation/completion retention
- prohibition of unlabeled replay or live-state confusion

disclosure_matrix:
- live_event_story -> internal by default, public only if explicitly safe
- public_event_story_summary -> public allowed
- historical_event_story_replay -> labeled historical only
- audit_event_story_trace -> audit_only

validation_rules:
- event_ref or cluster_ref is required.
- cancelled/completed event stories must not be represented as live.
- replay export must be labeled historical.
- restricted campaign internals must not be publicly exposed.

failure_codes:
- EVENT_STORY_POLICY_REF_MISSING
- EVENT_STORY_POLICY_LIVE_HISTORY_CONFLICT
- EVENT_STORY_POLICY_PUBLIC_DETAIL_VIOLATION
- EVENT_STORY_POLICY_REPLAY_LABEL_REQUIRED

example_scenarios:
- A completed public campaign may be replayed historically with explicit historical labeling only.
