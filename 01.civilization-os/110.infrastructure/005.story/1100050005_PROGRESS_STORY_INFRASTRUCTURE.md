# ============================================================
# PROGRESS STORY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for progress-focused stories.

scope:
Covers milestone-chain storage,
current milestone retrieval,
bounded-branch resolution,
completion history storage,
and replay/history retrieval.

infrastructure_focus:
- milestone-chain index
- current milestone selector support
- bounded-branch lookup
- completion history reader
- replay/history projection partition

storage_contract:
progress_story_fields:
- progress_story_ref
- milestone_chain_ref
- current_milestone
- branch_ref
- lifecycle_state
- revision_ref

index_strategy:
- by progress_story_ref
- by milestone_chain_ref
- by current_milestone
- by branch_ref
- by lifecycle_state

cache_rules:
- current milestone cache must be separated from full chain replay cache
- branch-restricted results require restricted partitions
- completion history must remain immutable from live cache perspective

failure_codes:
- PROGRESS_STORY_INFRA_CHAIN_INDEX_MISSING
- PROGRESS_STORY_INFRA_CURRENT_MILESTONE_LOOKUP_FAILED
- PROGRESS_STORY_INFRA_BRANCH_LOOKUP_FAILED
- PROGRESS_STORY_INFRA_LIVE_HISTORY_CACHE_CONFLICT

example_scenarios:
- A current milestone is served from live cache while the full historical chain remains in replay storage.
