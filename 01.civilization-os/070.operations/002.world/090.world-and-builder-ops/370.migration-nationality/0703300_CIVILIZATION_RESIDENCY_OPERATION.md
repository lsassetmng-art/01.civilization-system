# ============================================================
# CIVILIZATION RESIDENCY OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for residency and entry.

operation_steps:
1 inspect target and host basis
2 invoke residency runtime
3 persist residency outcome
4 preserve migration and audit trace

success_condition:
- residency lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
