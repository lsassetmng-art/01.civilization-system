# ============================================================
# INTERNAL INTEGRATION INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: integration
subdomain: internal-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for internal integration contracts.

scope:
Covers internal read storage,
action-capable contract metadata,
effect-scope indexing,
internal audit traces,
and hidden-mutation containment support.

infrastructure_focus:
- internal source/target scope index
- action-capable contract metadata store
- effect-scope validator support
- internal audit trace reader
- containment trace log

storage_contract:
internal_integration_fields:
- contract_ref
- source_scope
- target_scope
- effect_scope
- mutation_class
- lifecycle_state
- revision_ref

index_strategy:
- by source_scope
- by target_scope
- by effect_scope
- by mutation_class
- by lifecycle_state

cache_rules:
- internal read caches must remain separate from action-capable metadata paths
- action-capable contract caches must be authority-aware
- audit reads use dedicated audit partition

failure_codes:
- INTERNAL_INT_INFRA_SCOPE_INDEX_MISSING
- INTERNAL_INT_INFRA_EFFECT_SCOPE_INDEX_MISSING
- INTERNAL_INT_INFRA_HIDDEN_MUTATION_PATH_LEAK
- INTERNAL_INT_INFRA_AUDIT_PARTITION_CONFLICT

example_scenarios:
- An action-capable internal contract must be resolved through effect-scope-aware infrastructure, not plain read cache.
