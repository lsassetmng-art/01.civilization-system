# ============================================================
# PLAYER STORY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for player-level stories.

scope:
Covers self-scoped story storage,
support-view partitions,
private-branch retrieval,
and replay/history chain support for player stories.

infrastructure_focus:
- player_ref index
- self-story resolver
- support-view projection partition
- private-branch protected retrieval
- replay/history chain reader

storage_contract:
player_story_fields:
- player_ref
- player_story_class
- current_stage
- branch_ref
- branch_visibility_class
- lifecycle_state
- revision_ref

index_strategy:
- by player_ref
- by player_story_class
- by current_stage
- by branch_ref
- by lifecycle_state

cache_rules:
- self-story cache must be partitioned by subject ownership
- support-view cache must not share with unrestricted self or public caches
- private branch results must use restricted partitioning
- replay/history remains separate from live player story cache

failure_codes:
- PLAYER_STORY_INFRA_PLAYER_REF_INDEX_MISSING
- PLAYER_STORY_INFRA_OWNERSHIP_CACHE_CONFLICT
- PLAYER_STORY_INFRA_PRIVATE_BRANCH_LEAK
- PLAYER_STORY_INFRA_REPLAY_CHAIN_BROKEN

example_scenarios:
- A player's onboarding story is cached in a self-owned partition only.
