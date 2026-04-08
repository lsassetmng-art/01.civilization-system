# ============================================================
# MODE CORE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core infrastructure requirements for canonical mode handling.

scope:
Covers storage layout, indexing strategy,
resolver support, cache strategy,
history path separation, invalidation rules,
and trace persistence for mode records.

design_intent:
Mode infrastructure must support deterministic resolution
of one effective current mode while preserving historical records
and preventing stale disclosure of restricted or sealed mode detail.

infrastructure_components:
- mode registry store
- active-mode resolver
- scope/type/priority index
- lifecycle-aware mode cache
- historical mode reader
- switch trace log
- authority decision trace log
- invalidation controller

component_topology:
- request enters mode resolver
- resolver reads scope/type/priority indexes
- active-mode candidates are loaded from registry store
- lifecycle and conflict filters are applied
- scope-aware cache may serve current-active results
- historical reader serves replay/history paths separately
- trace logs persist switch, denial, and containment events

storage_contract:
mode_registry_fields:
- mode_id
- mode_code
- mode_type
- scope_ref
- priority
- lifecycle_state
- disclosure_class
- authority_class
- effective_from
- effective_to
- revision_ref
- created_at
- updated_at

index_strategy:
primary_indexes:
- by scope_ref
- by mode_type
- by lifecycle_state
- by priority
- by effective_from/effective_to
secondary_indexes:
- by disclosure_class
- by authority_class
- by revision_ref

cache_strategy:
cache_keys:
- scope_ref
- mode_type
- actor_visibility_class
- request_mode(current_or_historical)
cache_rules:
- current-active cache must not be reused for historical reads
- restricted or sealed results must use scope-aware cache partitioning
- ambiguous conflict state must never be cached as valid active output

invalidation_rules:
- mode switch invalidates current-active cache for affected scope/type
- lifecycle change invalidates current-active and visibility-sensitive caches
- authority rule change invalidates restricted/sealed projections
- deprecation or archival invalidates current delivery paths only
- historical cache remains separate and version-aware

history_path_rules:
- historical retrieval uses revision_ref or time-bounded chain
- historical retrieval must never mutate current-active cache
- replay/historical path must be labeled and partitioned from current-active path

trace_requirements:
- switch trace
- denial trace
- containment trace
- rollback trace
- history-read trace where policy requires

failure_codes:
- MODE_INFRA_REGISTRY_UNAVAILABLE
- MODE_INFRA_SCOPE_INDEX_MISSING
- MODE_INFRA_PRIORITY_INDEX_CONFLICT
- MODE_INFRA_CACHE_SCOPE_LEAK
- MODE_INFRA_HISTORY_PATH_CONFLICT
- MODE_INFRA_TRACE_WRITE_FAILED

example_scenarios:
- A scope-level mode switch invalidates the current-active cache and writes a switch trace.
- A historical query reads only the history partition and never pollutes current mode cache.
