# ============================================================
# INTEGRATION CORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core infrastructure requirements for integration contracts.

scope:
Covers contract registry storage,
authority and mutation metadata storage,
projection caches,
proposal-only isolation stores,
bounded sync support,
historical/audit readers,
and trace persistence.

design_intent:
Integration infrastructure must make it technically impossible
for proposal-only data to leak into canonical-write lanes
without explicit authorized routing.
It must also keep replay and audit paths distinct from live/current contract use.

infrastructure_components:
- integration contract registry
- contract resolver
- projection cache
- proposal-only intake store
- bounded-sync workspace
- canonical-write gate metadata store
- live event handoff store
- replay/history reader
- audit trace reader
- trace and denial log

storage_contract:
integration_contract_fields:
- contract_ref
- contract_type
- source_scope
- target_scope
- disclosure_class
- mutation_class
- authority_basis
- lifecycle_state
- revision_ref
- historical_flag
- created_at
- updated_at

index_strategy:
primary_indexes:
- by contract_ref
- by contract_type
- by source_scope
- by target_scope
- by lifecycle_state
secondary_indexes:
- by mutation_class
- by disclosure_class
- by authority_basis
- by revision_ref
- by historical_flag

cache_strategy:
cache_keys:
- contract_ref
- projection_scope
- consumer_class
- request_mode(current_or_history_or_audit)
cache_rules:
- public projection caches must not contain restricted raw payload
- proposal-only data must not enter export caches
- replay/history reads must not reuse live export caches
- canonical-write metadata must be isolated from public or proposal partitions

partition_rules:
- read_only export partition
- proposal_only intake partition
- bounded_sync workspace partition
- canonical_write metadata partition
- live_event partition
- replay_event/history partition
- audit partition

invalidation_rules:
- contract revision invalidates current export caches
- authority-basis change invalidates restricted export caches and sync workspaces
- projection rule change invalidates consumer-facing caches
- lifecycle changes invalidate current-active contract resolutions
- replay/historical partitions remain revision-aware and separate

trace_requirements:
- export trace
- import trace
- proposal intake trace
- bounded sync trace
- canonical-write authorization trace
- replay event trace
- denial trace

failure_codes:
- INTEGRATION_INFRA_REGISTRY_UNAVAILABLE
- INTEGRATION_INFRA_CONTRACT_INDEX_MISSING
- INTEGRATION_INFRA_PROPOSAL_PARTITION_LEAK
- INTEGRATION_INFRA_LIVE_REPLAY_CONFLICT
- INTEGRATION_INFRA_PUBLIC_CACHE_LEAK
- INTEGRATION_INFRA_TRACE_WRITE_FAILED

example_scenarios:
- An external proposal is stored only in proposal_only partition and never enters export caches.
- A replay event read goes through replay/history partition only, never live event storage.
