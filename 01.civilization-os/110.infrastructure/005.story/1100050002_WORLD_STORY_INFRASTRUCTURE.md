# ============================================================
# WORLD STORY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for world-level stories.

scope:
Covers region/city/nation/civilization story storage,
stage-chain retrieval,
public-summary projection support,
and historical replay storage.

infrastructure_focus:
- world_ref index
- current world-story stage lookup
- public-summary projection cache
- internal-detail projection cache
- replay chain reader

storage_contract:
world_story_fields:
- world_ref
- world_story_class
- current_stage
- disclosure_class
- lifecycle_state
- revision_ref

index_strategy:
- by world_ref
- by world_story_class
- by current_stage
- by lifecycle_state

cache_rules:
- public summary cache must be separate from internal detail cache
- replay chains must use replay/history partition only
- restricted world-story stages must not enter public summary cache raw

failure_codes:
- WORLD_STORY_INFRA_WORLD_REF_INDEX_MISSING
- WORLD_STORY_INFRA_PUBLIC_CACHE_LEAK
- WORLD_STORY_INFRA_REPLAY_CHAIN_BROKEN

example_scenarios:
- A public city-story summary is cached separately from internal stage detail.
