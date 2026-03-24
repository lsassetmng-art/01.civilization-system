# ============================================================
# CIVILIZATION TENDER OPERATION
# ============================================================

status: canonical
layer: 070.operations
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define operational handling for tender planning and bidding.

operation_steps:
1 inspect tender target and budget basis
2 invoke tender runtime
3 persist tender outcome
4 preserve tender and audit trace

success_condition:
- tender lifecycle handled explicitly

failure_condition:
- invalid target
- basis unresolved
- runtime or persistence failure
