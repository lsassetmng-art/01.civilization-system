# ============================================================
# CIVILIZATION FOOD SUPPLY RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for food supply handling.

runtime_scope:
- validate supply target
- classify supply status
- persist food supply state
- preserve source lineage

trigger_conditions:
- supply update received
- disruption detected
- restoration recorded
- emergency supply action approved

processing_steps:
1 resolve food supply target
2 verify source lineage and state version
3 classify supply state
4 persist supply result
5 preserve audit trace where needed

success_condition:
- food supply state updated explicitly

failure_condition:
- invalid supply target
- lineage unresolved
- persistence failure
