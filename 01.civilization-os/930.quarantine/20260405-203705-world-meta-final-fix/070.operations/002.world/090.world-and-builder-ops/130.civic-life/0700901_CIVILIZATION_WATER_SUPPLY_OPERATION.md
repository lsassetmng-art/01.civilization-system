# ============================================================
# CIVILIZATION WATER SUPPLY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for water supply.

operation_steps:
1 inspect water supply target and lineage
2 invoke water supply runtime
3 persist supply result
4 preserve audit and lineage trace

success_condition:
- water supply handled explicitly

failure_condition:
- invalid target
- lineage unresolved
- runtime or persistence failure
