# ============================================================
# PLAYER IDENTITY INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for player identity binding.

scope:
Covers identity-link storage,
identity_ref indexing,
active-binding resolution,
historical binding retrieval,
and conflict trace storage.

infrastructure_focus:
- identity_ref index
- active identity-binding resolver
- historical binding reader
- conflict trace log
- ownership-aware projection partitioning

storage_contract:
player_identity_fields:
- identity_ref
- player_ref
- binding_state
- authority_basis
- disclosure_class
- revision_ref

index_strategy:
- by identity_ref
- by player_ref
- by binding_state
- by revision_ref

cache_rules:
- identity-bound live cache must be separate from historical identity traces
- conflict states must never be cached as valid current bindings
- restricted identity projections must use scope-aware partitions

failure_codes:
- PLAYER_ID_INFRA_IDENTITY_INDEX_MISSING
- PLAYER_ID_INFRA_ACTIVE_BINDING_LOOKUP_FAILED
- PLAYER_ID_INFRA_CONFLICT_STATE_CACHED
- PLAYER_ID_INFRA_HISTORY_CHAIN_BROKEN

example_scenarios:
- A corrected identity binding remains available through history path, while current binding resolves through live path only.
