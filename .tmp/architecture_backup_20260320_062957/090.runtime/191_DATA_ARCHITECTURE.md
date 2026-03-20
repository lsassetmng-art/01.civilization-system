# ============================================================
# RUNTIME DATA ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Runtime data architecture governs controlled persistence, reads,
and state transition materialization.

data_roles:
- authoritative_state_store
- append_only_logs
- derived_views
- read_models
- cache_if_explicitly_allowed

rules:
- runtime may not perform unmanaged direct writes
- authoritative state changes must come from explicit transition handling
- derived views must be reproducible from authoritative records
- caches are non-authoritative and may be discarded

data_flow:
- event accepted
- handler result produced
- state transition request validated
- authoritative persistence executed
- derived views refreshed or recalculated

final_rule:
Runtime data handling must preserve authoritative truth,
lineage, and reproducibility.
