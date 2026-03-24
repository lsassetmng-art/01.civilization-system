# ============================================================
# CIVILIZATION CONTROL ACTION OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for control actions.

operation_steps:
1 inspect action target and control basis
2 invoke control-action runtime
3 persist action outcome
4 preserve control and audit trace

success_condition:
- control action handled once effectively

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
