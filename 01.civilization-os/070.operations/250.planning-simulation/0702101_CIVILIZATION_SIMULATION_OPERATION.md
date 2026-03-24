# ============================================================
# CIVILIZATION SIMULATION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for simulations.

operation_steps:
1 inspect simulation target and scenario basis
2 invoke simulation runtime
3 persist simulation outcome
4 preserve simulation and audit trace

success_condition:
- simulation lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
