# ============================================================
# OPERATION MODE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
domain: mode
subdomain: operation-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure support for operation-facing modes.

scope:
Covers current operation-mode resolution,
degraded/emergency partitioning,
maintenance history retrieval,
and service-impact projection support.

infrastructure_focus:
- operation_scope index
- mode-class resolver
- service-impact projection path
- restricted emergency partition
- incident history retrieval

storage_contract:
operation_mode_fields:
- operation_scope
- operation_mode_class
- control_basis
- disclosure_class
- lifecycle_state
- incident_ref
- revision_ref

index_strategy:
- by operation_scope
- by operation_mode_class
- by incident_ref
- by lifecycle_state
- by effective time

cache_rules:
- public service-impact cache must be separate from internal operation-detail cache
- emergency mode cache must be restricted and scope-partitioned
- degraded mode changes must trigger invalidation of downstream impact cache

failure_codes:
- OP_MODE_INFRA_SCOPE_INDEX_MISSING
- OP_MODE_INFRA_IMPACT_CACHE_STALE
- OP_MODE_INFRA_EMERGENCY_PARTITION_LEAK
- OP_MODE_INFRA_HISTORY_RETRIEVAL_FAILED

example_scenarios:
- A degraded rail service invalidates public service-impact cache and internal operator cache separately.
