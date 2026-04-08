# ============================================================
# PLAYER ROLE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for player roles.

scope:
Covers role storage, primary-role lookup,
secondary-role coexistence support,
historical role retrieval,
and restricted role projection partitioning.

infrastructure_focus:
- primary_role index
- secondary-role relation store
- effective-role selector support
- historical role reader
- restricted-role cache partitioning

storage_contract:
player_role_fields:
- player_ref
- role_code
- role_priority
- coexistence_class
- authority_basis
- lifecycle_state
- revision_ref

index_strategy:
- by player_ref
- by role_code
- by role_priority
- by lifecycle_state
- by revision_ref

cache_rules:
- public-safe role summaries must be separate from internal effective-role caches
- elevated role details require restricted partitions
- role changes invalidate live player cache and role cache

failure_codes:
- PLAYER_ROLE_INFRA_ROLE_INDEX_MISSING
- PLAYER_ROLE_INFRA_PRIORITY_LOOKUP_FAILED
- PLAYER_ROLE_INFRA_RESTRICTED_CACHE_LEAK
- PLAYER_ROLE_INFRA_HISTORY_READER_FAILED

example_scenarios:
- A public-safe role summary cache never contains internal elevated-role detail.
