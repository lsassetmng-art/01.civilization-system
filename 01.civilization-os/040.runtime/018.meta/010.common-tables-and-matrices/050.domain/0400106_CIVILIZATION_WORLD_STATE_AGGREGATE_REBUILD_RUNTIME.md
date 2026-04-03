# ============================================================
# CIVILIZATION WORLD STATE AGGREGATE REBUILD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for rebuilding world state aggregates.

runtime_scope:
- detect stale aggregate
- resolve source lineage
- rebuild world aggregate
- persist result

input_models:
- CIVILIZATION_WORLD_STATE_AGGREGATE_MODEL

trigger_conditions:
- source lineage changed
- scheduled rebuild
- stale aggregate detected
- repair rebuild approved

processing_steps:
1 identify target aggregate
2 verify source lineage and source version
3 rebuild aggregate value
4 classify aggregate current, stale, or invalid
5 persist rebuilt aggregate

success_condition:
- world state aggregate rebuilt with traceable lineage

failure_condition:
- missing lineage
- rebuild failure
- persistence failure
