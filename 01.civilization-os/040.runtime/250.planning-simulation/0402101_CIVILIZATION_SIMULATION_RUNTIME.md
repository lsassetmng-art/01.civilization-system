# ============================================================
# CIVILIZATION SIMULATION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for simulation handling.

runtime_scope:
- validate simulation target
- validate scenario and model basis
- update simulation-run state
- preserve simulation traceability

trigger_conditions:
- simulation requested
- scenario revised
- rerun requested
- simulation invalidated

processing_steps:
1 resolve simulation target and scenario
2 verify simulation basis and source lineage
3 apply simulation-run state transition
4 persist simulation result
5 preserve audit and simulation trace

success_condition:
- simulation lifecycle updated explicitly

failure_condition:
- invalid target
- simulation basis unresolved
- persistence failure
