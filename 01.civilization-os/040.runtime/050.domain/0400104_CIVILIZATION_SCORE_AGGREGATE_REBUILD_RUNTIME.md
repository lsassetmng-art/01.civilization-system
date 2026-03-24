# ============================================================
# CIVILIZATION SCORE AGGREGATE REBUILD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for rebuilding civilization score aggregates.

runtime_scope:
- detect stale score aggregate
- resolve source lineage
- rebuild aggregate
- persist result

input_models:
- CIVILIZATION_SCORE_AGGREGATE_MODEL
- CIVILIZATION_EVENT_MODEL where relevant

trigger_conditions:
- source state version changed
- scheduled rebuild
- stale aggregate detected
- repair rebuild approved

processing_steps:
1 identify rebuild target
2 verify source lineage and source state version
3 recalculate aggregate value
4 classify aggregate current, stale, or invalid
5 persist rebuilt aggregate

success_condition:
- score aggregate rebuilt with source lineage preserved

failure_condition:
- source lineage missing
- calculation failed
- persistence failed
