# ============================================================
# CIVILIZATION CLINICAL CARE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for clinical care.

operation_steps:
1 inspect clinical target and care basis
2 invoke clinical episode runtime
3 persist care outcome
4 preserve care and audit trace

success_condition:
- clinical care lifecycle handled explicitly

failure_condition:
- invalid target
- care basis unresolved
- runtime or persistence failure
