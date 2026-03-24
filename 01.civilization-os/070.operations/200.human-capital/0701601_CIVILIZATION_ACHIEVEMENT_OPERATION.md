# ============================================================
# CIVILIZATION ACHIEVEMENT OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for learning achievements.

operation_steps:
1 inspect achievement target and source basis
2 invoke achievement runtime
3 persist achievement outcome
4 preserve lineage and audit trace

success_condition:
- achievement lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
