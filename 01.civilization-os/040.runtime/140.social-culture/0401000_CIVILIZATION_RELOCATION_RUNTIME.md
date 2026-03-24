# ============================================================
# CIVILIZATION RELOCATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for relocation handling.

runtime_scope:
- validate relocation target
- validate approval basis
- update relocation state
- preserve movement traceability

trigger_conditions:
- relocation requested
- relocation approved
- relocation completed
- relocation rejected
- relocation reversed

processing_steps:
1 resolve relocation source and target territories
2 verify approval or administrative basis
3 apply relocation state transition
4 persist relocation result
5 preserve audit and lineage trace

success_condition:
- relocation state updated explicitly

failure_condition:
- invalid territory scope
- approval basis missing
- persistence failure
