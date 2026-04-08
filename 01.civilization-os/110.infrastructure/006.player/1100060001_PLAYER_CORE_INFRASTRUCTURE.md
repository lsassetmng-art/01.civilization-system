# ============================================================
# PLAYER CORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core infrastructure requirements for player handling.

scope:
Covers player storage, identity link storage,
live player resolver support,
history/audit readers,
projection caches,
and lifecycle invalidation logic.

design_intent:
Player infrastructure must provide one coherent live-participation path
and separate historical/audit paths,
while safely partitioning restricted role, progress, and boundary data.

infrastructure_components:
- player registry store
- identity-link store
- effective player resolver
- role/progress/boundary component stores
- live player cache
- historical player reader
- audit trace reader
- lifecycle invalidation controller

storage_contract:
player_registry_fields:
- player_ref
- player_code
- identity_ref
- primary_role
- progress_stage
- boundary_class
- lifecycle_state
- disclosure_class
- revision_ref
- created_at
- updated_at

index_strategy:
primary_indexes:
- by player_ref
- by identity_ref
- by lifecycle_state
- by primary_role
secondary_indexes:
- by progress_stage
- by boundary_class
- by disclosure_class
- by revision_ref

cache_strategy:
cache_keys:
- player_ref
- ownership_scope
- actor_visibility_class
- request_mode(live_or_history)
cache_rules:
- live player cache must not be reused for history/audit reads
- restricted role/progress/boundary outputs must be scope-aware partitioned
- suspended/archived transitions must invalidate live-participation cache immediately

history_path_rules:
- historical player reads use revision_ref or lifecycle chain
- historical reads must not alter live cache entries
- audit trace access uses dedicated audit partitions

trace_requirements:
- lifecycle change trace
- role change trace
- progress change trace
- boundary change trace
- denial trace
- history-read trace where policy requires

failure_codes:
- PLAYER_INFRA_REGISTRY_UNAVAILABLE
- PLAYER_INFRA_PLAYER_REF_INDEX_MISSING
- PLAYER_INFRA_IDENTITY_LINK_BROKEN
- PLAYER_INFRA_LIVE_HISTORY_CACHE_CONFLICT
- PLAYER_INFRA_SCOPE_CACHE_LEAK
- PLAYER_INFRA_TRACE_WRITE_FAILED

example_scenarios:
- A player suspension invalidates live cache immediately but preserves historical chain.
- A history request reads revision-linked player snapshots without touching live partitions.
