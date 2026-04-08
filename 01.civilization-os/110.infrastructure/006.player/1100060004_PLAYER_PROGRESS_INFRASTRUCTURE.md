# ============================================================
# PLAYER PROGRESS INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for player progression.

scope:
Covers current progress-stage storage,
history/replay retrieval,
restricted-stage partitioning,
and progression trace support.

infrastructure_focus:
- progress_stage index
- current progression resolver
- historical progression reader
- restricted progression partitioning
- progression trace log

storage_contract:
player_progress_fields:
- player_ref
- progress_stage
- restriction_basis
- disclosure_class
- lifecycle_state
- revision_ref

index_strategy:
- by player_ref
- by progress_stage
- by lifecycle_state
- by revision_ref

cache_rules:
- self-safe progress cache must be separate from internal progression caches
- restricted progress details must use restricted partitions
- historical progression reads must be isolated from live current-stage cache

failure_codes:
- PLAYER_PROGRESS_INFRA_STAGE_INDEX_MISSING
- PLAYER_PROGRESS_INFRA_RESTRICTED_CACHE_LEAK
- PLAYER_PROGRESS_INFRA_HISTORY_CHAIN_BROKEN

example_scenarios:
- A restricted progression state invalidates prior advanced live cache entries immediately.
