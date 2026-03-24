# ============================================================
# CIVILIZATION PROCUREMENT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for procurement.

operation_steps:
1 inspect procurement target and approval basis
2 invoke procurement runtime
3 persist procurement outcome
4 preserve governance and audit trace

success_condition:
- procurement handled explicitly

failure_condition:
- invalid target
- approval basis missing
- runtime or persistence failure
