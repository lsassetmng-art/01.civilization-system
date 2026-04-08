# ============================================================
# EXTERNAL INTEGRATION INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for external integration contracts.

scope:
Covers public export projection storage,
restricted export partitions,
proposal-only import isolation,
bounded-sync workspaces,
and historical external trace retrieval.

infrastructure_focus:
- projection_scope index
- public export cache
- restricted export cache partition
- proposal-only import store
- bounded-sync workspace
- external history/audit reader

storage_contract:
external_integration_fields:
- contract_ref
- projection_scope
- authority_basis
- mutation_class
- historical_flag
- lifecycle_state
- revision_ref

index_strategy:
- by projection_scope
- by mutation_class
- by authority_basis
- by historical_flag
- by lifecycle_state

cache_rules:
- public export cache must be projection-safe and scrubbed
- restricted export caches must be scope-aware and non-public
- proposal-only imports must never enter any export cache
- replay/history external traces must stay separate from current exports

failure_codes:
- EXTERNAL_INT_INFRA_PROJECTION_SCOPE_INDEX_MISSING
- EXTERNAL_INT_INFRA_PUBLIC_CACHE_LEAK
- EXTERNAL_INT_INFRA_PROPOSAL_ISOLATION_BROKEN
- EXTERNAL_INT_INFRA_HISTORY_READER_FAILED

example_scenarios:
- A public API export reads only from public projection cache, never from restricted export partitions.
