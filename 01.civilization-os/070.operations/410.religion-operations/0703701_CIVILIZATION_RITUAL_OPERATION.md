# ============================================================
# CIVILIZATION RITUAL OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for ritual permits.

operation_steps:
1 inspect permit target and approval basis
2 invoke ritual runtime
3 persist ritual outcome
4 preserve ritual and audit trace

success_condition:
- ritual lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
