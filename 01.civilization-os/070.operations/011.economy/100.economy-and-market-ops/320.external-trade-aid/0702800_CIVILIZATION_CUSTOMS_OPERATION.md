# ============================================================
# CIVILIZATION CUSTOMS OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for customs declarations.

operation_steps:
1 inspect declaration target and shipment basis
2 invoke customs runtime
3 persist customs outcome
4 preserve customs and audit trace

success_condition:
- customs lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
