# ============================================================
# WORLD MODE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: mode
subdomain: world-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for world-facing modes.

scope:
Covers storage, indexing, retrieval,
cache partitioning, and historical trace
for world mode records.

infrastructure_focus:
- world_ref indexing
- current world-mode resolver
- emergency and maintenance mode partitioning
- historical world-mode chain retrieval
- public-safe versus restricted projection separation

storage_contract:
world_mode_fields:
- world_ref
- world_mode_class
- control_basis
- disclosure_class
- lifecycle_state
- effective_from
- effective_to
- revision_ref

index_strategy:
- by world_ref
- by world_mode_class
- by lifecycle_state
- by effective time
- by disclosure_class

cache_rules:
- public-safe world-mode cache must be separate from restricted world-mode cache
- emergency and maintenance results must not be cached in public partitions
- current-active and historical world-mode caches must remain separate

failure_codes:
- WORLD_MODE_INFRA_WORLD_REF_INDEX_MISSING
- WORLD_MODE_INFRA_RESTRICTED_CACHE_LEAK
- WORLD_MODE_INFRA_HISTORY_CHAIN_BROKEN

example_scenarios:
- A public request for a city's current world mode hits only the public-safe cache partition.
- Emergency world-mode history is retrieved through a dedicated history path.
