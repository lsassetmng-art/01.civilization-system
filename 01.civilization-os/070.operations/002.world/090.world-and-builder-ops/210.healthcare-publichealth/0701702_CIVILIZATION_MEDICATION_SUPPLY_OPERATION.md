# ============================================================
# CIVILIZATION MEDICATION SUPPLY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for medication supply.

operation_steps:
1 inspect supply target and lineage basis
2 invoke medication-supply runtime
3 persist supply outcome
4 preserve supply and audit trace

success_condition:
- medication supply handled explicitly

failure_condition:
- invalid target
- lineage unresolved
- runtime or persistence failure
