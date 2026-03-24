# ============================================================
# CIVILIZATION WATER SUPPLY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for water supply handling.

runtime_scope:
- validate water target
- classify supply and quality status
- persist water supply state
- preserve lineage and traceability

trigger_conditions:
- supply update received
- quality degradation detected
- restoration recorded
- emergency action approved

processing_steps:
1 resolve water supply target
2 verify source lineage and state version
3 classify supply and quality state
4 persist water supply result
5 preserve traceability

success_condition:
- water supply state updated explicitly

failure_condition:
- invalid supply target
- lineage unresolved
- persistence failure
