# ============================================================
# EVENT STORY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for event-linked stories.

scope:
Covers event/cluster story storage,
live current-stage retrieval,
public summary projection,
completed/cancelled replay retrieval,
and trace support.

infrastructure_focus:
- event_ref or cluster_ref index
- live event-story resolver
- public event-summary cache
- restricted internal event-detail cache
- replay/history reader for completed or cancelled chains

storage_contract:
event_story_fields:
- event_ref
- cluster_ref
- event_story_class
- current_stage
- lifecycle_state
- disclosure_class
- revision_ref

index_strategy:
- by event_ref
- by cluster_ref
- by event_story_class
- by lifecycle_state

cache_rules:
- live event-story cache must be separate from replay/history cache
- public event summary cache must not contain restricted response detail
- completed/cancelled chains must exit live cache after state change

failure_codes:
- EVENT_STORY_INFRA_REF_INDEX_MISSING
- EVENT_STORY_INFRA_PUBLIC_CACHE_LEAK
- EVENT_STORY_INFRA_LIVE_HISTORY_CACHE_CONFLICT

example_scenarios:
- A completed campaign story is read through replay/history storage only.
