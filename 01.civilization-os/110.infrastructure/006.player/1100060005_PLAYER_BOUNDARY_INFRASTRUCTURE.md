# ============================================================
# PLAYER BOUNDARY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for player boundaries.

scope:
Covers boundary storage, live boundary resolver,
admin-managed trace retrieval,
historical boundary retrieval,
and boundary-aware projection partitions.

infrastructure_focus:
- boundary_class index
- boundary resolver
- admin-managed trace store
- historical boundary reader
- control-leak-safe cache separation

storage_contract:
player_boundary_fields:
- player_ref
- boundary_class
- authority_basis
- disclosure_class
- lifecycle_state
- revision_ref

index_strategy:
- by player_ref
- by boundary_class
- by lifecycle_state
- by revision_ref

cache_rules:
- view_only/historical_only summaries must not imply control capabilities
- admin-managed details require restricted or audit partitions
- boundary changes invalidate live player and boundary caches

failure_codes:
- PLAYER_BOUNDARY_INFRA_CLASS_INDEX_MISSING
- PLAYER_BOUNDARY_INFRA_ADMIN_TRACE_MISSING
- PLAYER_BOUNDARY_INFRA_CONTROL_LEAK_CACHE_CONFLICT
- PLAYER_BOUNDARY_INFRA_HISTORY_READER_FAILED

example_scenarios:
- An admin-managed boundary trace is available only from restricted or audit partitions, never from public-safe caches.
