# ============================================================
# ACCESS MODE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for access-facing modes.

scope:
Covers actor-class lookup,
access-mode mapping support,
restricted-operator partitioning,
audit/history access-mode retrieval,
and invalidation on authority changes.

infrastructure_focus:
- actor_class index
- access-mode mapper
- onboarding versus operator partitioning
- audit-mode retrieval partition
- authority-sensitive invalidation

storage_contract:
access_mode_fields:
- actor_class
- access_mode_class
- authority_basis
- disclosure_class
- lifecycle_state
- revision_ref

index_strategy:
- by actor_class
- by access_mode_class
- by authority_basis
- by lifecycle_state

cache_rules:
- anonymous/public cache must be least-privilege partition only
- audit-mode responses must not share cache with standard access-mode responses
- operator-scoped results require actor/scope-aware partitioning

failure_codes:
- ACCESS_MODE_INFRA_ACTOR_INDEX_MISSING
- ACCESS_MODE_INFRA_AUDIT_PARTITION_CONFLICT
- ACCESS_MODE_INFRA_PRIVILEGE_CACHE_LEAK

example_scenarios:
- A registered user onboarding read is served from onboarding-safe partition only.
- Audit-mode results are isolated from normal registered access cache.
