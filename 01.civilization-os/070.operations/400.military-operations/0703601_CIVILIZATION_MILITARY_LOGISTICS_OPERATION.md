# ============================================================
# CIVILIZATION MILITARY LOGISTICS OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for military logistics.

operation_steps:
1 inspect target and supply basis
2 invoke logistics runtime
3 persist logistics outcome
4 preserve logistics and audit trace

success_condition:
- military logistics lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
