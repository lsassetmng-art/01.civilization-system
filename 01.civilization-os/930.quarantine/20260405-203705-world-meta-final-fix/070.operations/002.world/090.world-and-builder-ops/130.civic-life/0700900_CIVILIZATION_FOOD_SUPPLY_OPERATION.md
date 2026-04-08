# ============================================================
# CIVILIZATION FOOD SUPPLY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for food supply.

operation_steps:
1 inspect food supply target and lineage
2 invoke food supply runtime
3 persist supply result
4 preserve audit and lineage trace

success_condition:
- food supply handled explicitly

failure_condition:
- invalid target
- lineage unresolved
- runtime or persistence failure
