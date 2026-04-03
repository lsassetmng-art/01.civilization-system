# ============================================================
# CIVILIZATION ECONOMIC INDICATOR REBUILD RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for rebuilding economic indicators.

runtime_scope:
- detect stale indicator
- resolve source lineage
- rebuild indicator
- persist result

input_models:
- CIVILIZATION_ECONOMIC_INDICATOR_MODEL

trigger_conditions:
- source lineage changed
- scheduled rebuild
- stale indicator detected

processing_steps:
1 identify indicator target
2 verify source lineage and version
3 recalculate indicator value
4 classify indicator current, stale, or invalid
5 persist rebuilt indicator

success_condition:
- indicator rebuilt with traceable source lineage

failure_condition:
- source lineage missing
- calculation failed
- persistence failed
