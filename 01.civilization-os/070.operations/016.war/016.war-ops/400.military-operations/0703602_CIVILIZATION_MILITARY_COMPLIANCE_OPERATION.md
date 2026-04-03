# ============================================================
# CIVILIZATION MILITARY COMPLIANCE OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for military compliance.

operation_steps:
1 inspect target and compliance basis
2 invoke compliance runtime
3 persist compliance outcome
4 preserve compliance and audit trace

success_condition:
- military compliance lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
