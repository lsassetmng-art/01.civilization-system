# ============================================================
# CIVILIZATION DERIVED AGGREGATE REBUILD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the runtime for rebuilding derived aggregates.

runtime_scope:
- detect stale aggregate
- resolve source lineage
- rebuild derived aggregate
- persist rebuilt state

trigger_conditions:
- source state version changed
- stale aggregate detected
- scheduled rebuild
- approved repair action

processing_steps:
1 identify aggregate rebuild target
2 verify source lineage and source state version
3 rebuild aggregate value
4 classify aggregate as current, stale, invalid, or rebuilding
5 persist updated aggregate state
6 emit audit trace when needed

success_condition:
- aggregate rebuilt with traceable lineage
- rebuilt state persisted

failure_condition:
- missing source lineage
- incompatible source version
- rebuild computation failure
- persistence failure

truth_boundary:
Derived aggregates are not truth.
Runtime must preserve source lineage.
